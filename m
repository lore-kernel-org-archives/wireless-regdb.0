Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wz9iF-0005oz-NC
 for wireless-regdb@lists.infradead.org; Mon, 23 Jun 2014 19:15:32 +0000
Received: by mail-pa0-f53.google.com with SMTP id ey11so6225363pad.40 for
 <wireless-regdb@lists.infradead.org>; Mon, 23 Jun 2014 12:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=vcCuILkEqfa4IR/JdyP1/W+jKrQpTOV2G1aMYMCp7ZE=;
 b=Qki8EGWnKRz50oODpKsRY2Fc5ioEopZBAuQoUiQtozV3fHD6N42dwmurU3Ho2CrwtO
 W6qJZAlFu0sX2vSOIEx7wtuB8xoLz3lHu+5zxdaRWCXuw24Bt+n0PyXtRuuErqN818iQ
 XrPvzx293XtkKUYVI9vM3YjjERlBZE7O1RrsAIJPWmy9L9qEQRE0mDdTHafXXUAVA2zk
 l5apkErfqw7mYMRZ4wAwr8b1uTWVLwP6Ele83dicOAvG3tvffk5w3GjbZ73X6ZxH4k+K
 RjgcRIOKo6n+sQFNhims/54MGDAb7ktaWm+Nt8SGofxDpDMNaE6Je2ZmLM3q0nUoVpvb o+ZQ==
Date: Mon, 23 Jun 2014 12:15:04 -0700
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140623191504.GD1390@garbanzo.do-not-panic.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: greearb@candelatech.com
Cc: wireless-regdb@lists.infradead.org, kvalo@qca.qualcomm.com, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>


Adding wireless-regdb.

Regulatory folks:

if two cards are present on a system, in the worst case consider
two different cards for AP mode, and one has a DFS region set for the
country its on but the other does not, do we want to use the DFS region
for both? DFS would not be allowed on system unless the DFS region is
set. DFS operation requires a card to explicitly support DFS though so
even though it can be set as an intersection each card would still
require DFS suport for that region.

As I see it this will depend on what we want cards to do if the DFS
region is unknown for a region. If the DFS region is not known can
we use any DFS algorithm? If we cannot then I think a DFS intersection
would require agreement on the DFS region. That would also mean though
that when shipping products if a system is built with one card that has
DFS for ETSI for example, and then a secondary card is present and its
regulatory domain does not have DFS then the first card would not be
able to operate on the DFS. I think this is reasonable given that 
the two cards must at least agree on the regulatory domain, otherwise
the folks doing system integration probably did a bad job at thinking
of things ahead of time. Even though this can be technically true I
foresee folks this misconfiguration happening in the future and folks
beingp puzzled by this as an issue. This means this should be documented
for folks selling devices in a combined wifi system.

As such NACK for now.

  Luis

On Wed, Jun 11, 2014 at 01:08:34PM -0700, greearb@candelatech.com wrote:
> From: Ben Greear <greearb@candelatech.com>
> 
> If one is UN-SET, use the other.  Seems this would
> be more correct that what we have now.
> 
> Signed-off-by: Ben Greear <greearb@candelatech.com>
> ---
> 
> Someone that understands this code better than I
> do should review this well before it is considered
> for upstream.  I'm not sure it is actually needed.
> 
>  net/wireless/reg.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/net/wireless/reg.c b/net/wireless/reg.c
> index 785e516..b87035f 100644
> --- a/net/wireless/reg.c
> +++ b/net/wireless/reg.c
> @@ -727,8 +727,15 @@ static enum nl80211_dfs_regions
>  reg_intersect_dfs_region(const enum nl80211_dfs_regions dfs_region1,
>  			 const enum nl80211_dfs_regions dfs_region2)
>  {
> -	if (dfs_region1 != dfs_region2)
> +	if (dfs_region1 != dfs_region2) {
> +		pr_info("intersect-dfs-region, region1: %d  region2: %d\n",
> +			dfs_region1, dfs_region2);
> +		if (dfs_region1 == NL80211_DFS_UNSET)
> +			return dfs_region2;
> +		if (dfs_region2 == NL80211_DFS_UNSET)
> +			return dfs_region1;
>  		return NL80211_DFS_UNSET;
> +	}
>  	return dfs_region1;
>  }
>  

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

