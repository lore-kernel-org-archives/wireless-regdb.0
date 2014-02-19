Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFukR-0005kL-Sl
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 00:10:48 +0000
Received: by mail-pa0-f47.google.com with SMTP id kp14so17459222pab.20 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 16:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=1wTu/Fju6cQhNHYHft+DQFFBtNFQAN8gyHPLEDUTBT8=;
 b=TD/9XGSlgYXVbiW1H/ccnHdsBhQ2Tc5V6o81q/PLP2s3DwZNet2QeB9SWcZmsOTyOl
 FQ8yyvVKgv96DaOoENzdw11nnoSNXbQYj58vzukxKqT1rF6JktbrtBx+5S9UlaEltn7G
 3lMqNrFRpRAtVETVJSMDqUaJdIOH7dz/9KdTtQrEcwgGEPTeaFQriU4bDgS72BsRbVhE
 n0c+GFWNxQR+mF2ihaVkKuwMAjbT2sR9wLtVolJi7x0HL3p54XKO82Z8UHKCOH/vzFBE
 hLVKpqTK/WmBYEkH6kTndRIOujyfUgB5ZgLDBwuqjgNiI1JwGaUc3lRAVdLRbWA63XPn UhBw==
Date: Tue, 18 Feb 2014 16:10:12 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140219001010.GE14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-6-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390818118-27261-6-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 5/6] cfg80211: Enable GO operation
	on indoor channels
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
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jan 27, 2014 at 12:21:57PM +0200, Ilan Peer wrote:
> Allow GO operation on a channel marked with IEEE80211_CHAN_INDOOR_ONLY
> iff there is a user hint indicating that the platform is operating in
> an indoor environment, i.e., the platform is a printer or media center
> device.
> 
> Signed-off-by: Ilan Peer <ilan.peer@intel.com>
> ---
>  net/wireless/chan.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/net/wireless/chan.c b/net/wireless/chan.c
> index 87a9d0e..4ae3cd0 100644
> --- a/net/wireless/chan.c
> +++ b/net/wireless/chan.c
> @@ -611,14 +611,20 @@ EXPORT_SYMBOL(cfg80211_chandef_usable);
>   * IEEE80211_CHAN_GO_CONCURRENT and there is an additional station interface
>   * associated to an AP on the same channel or on the same UNII band
>   * (assuming that the AP is an authorized master).
> + * In addition allow the GO to operate on a channel on which indoor operation is
> + * allowed, iff we are currently operating in an indoor environment.
>   */
>  static bool cfg80211_go_permissive_chan(struct cfg80211_registered_device *rdev,
>  					struct ieee80211_channel *chan)
>  {
>  	struct wireless_dev *wdev_iter;
> +	struct wiphy *wiphy = wiphy_idx_to_wiphy(rdev->wiphy_idx);
>  
>  	ASSERT_RTNL();
>  
> +	if (regulatory_ir_allowed(wiphy, chan))
> +		return true;
> +
>  	if (!(chan->flags & IEEE80211_CHAN_GO_CONCURRENT))
>  		return false;

Looks good.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

