Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from 0.mx.nanl.de ([217.115.11.12] helo=mail.nanl.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUbsr-0008R7-J6
 for wireless-regdb@lists.infradead.org; Mon, 31 Mar 2014 13:04:14 +0000
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
 [209.85.192.51]) by mail.nanl.de (Postfix) with ESMTPSA id 0E8BA460B5 for
 <wireless-regdb@lists.infradead.org>; Mon, 31 Mar 2014 12:52:55 +0000 (UTC)
Received: by mail-qg0-f51.google.com with SMTP id q108so3753124qgd.38 for
 <wireless-regdb@lists.infradead.org>; Mon, 31 Mar 2014 05:53:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1382554536-27943-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382554536-27943-1-git-send-email-mcgrof@do-not-panic.com>
From: Jonas Gorski <jogo@openwrt.org>
Date: Mon, 31 Mar 2014 14:53:03 +0200
Message-ID: <CAOiHx=nZduA=A9QOFiUZEJmyv=d9SpO-8Xb-+DpqSRcyJKmRjg@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC] cfg80211: make genregdb.awk skip
 antenna gain
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: wireless-regdb@lists.infradead.org, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Oct 23, 2013 at 8:55 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> Now that wireless-regdb doesn't include
> antenna gain lets skip parsing it completely
> for when CONFIG_CFG80211_INTERNAL_REGDB is
> enabled.
>
> Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>

As far as I can tell, this is still needed for current regdb.txt's (at
least we needed it in OpenWrt). Assuming it wasn't applied because of
RFC, can you resend it as a "proper" patch? One small question though
...

> ---
>  net/wireless/genregdb.awk | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>  mode change 100644 => 100755 net/wireless/genregdb.awk

was this mode change intentional?

> (snip)


Regards
Jonas

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

