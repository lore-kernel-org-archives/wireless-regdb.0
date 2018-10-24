Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=xRQivQTtnknl86qDutpYGKhA8u03pYQjEBl2sHNzqH0=;
 b=TiSIY53hyXjw/o
 CL0RzlsPpEkQ7nc+DlYsIqC9Bt02RXxcYI0OB8xhzi2tojCwafnQ8xhtflpOUgnAQb60uaG0PrNeb
 DbRo3YFAymnHFPAshC9rxHhPYz27jlRd1KvX3ZN3HHhIjfuvZIw4T+dPQhQJDQPK2xLfZsjuH6CA0
 51hU0CUUvS/yGFJJuNtHMPssUhLS8f8QZnh9KWtnVFa1hDps+szu2i5FHhmep7IcARBpAvfuF+eOe
 ohQib9Dp5v+1Hu+5MU4152k4svf6jAtcjd+LJs56OKUdExdXhPOdx4kCQ4jwv0+Pbs8RLyMgxAsR0
 XjNZCB5Pgk4P2YX3kH+Q==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFJpK-0005J8-OT
 for wireless-regdb@lists.infradead.org; Wed, 24 Oct 2018 14:08:04 +0000
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gFJp6-0007Ev-6q
 for wireless-regdb@lists.infradead.org; Wed, 24 Oct 2018 14:07:48 +0000
Received: by mail-pf1-f199.google.com with SMTP id g63-v6so3548814pfc.9 for
 <wireless-regdb@lists.infradead.org>; Wed, 24 Oct 2018 07:07:48 -0700 (PDT)
Date: Wed, 24 Oct 2018 08:07:43 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20181024140743.GC8750@ubuntu-xps13>
References: <20181006160254.7980-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181006160254.7980-1-hauke@hauke-m.de>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: remove dependency to
 python attr
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
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, haim.dreyfuss@intel.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Please remember to Cc wireless-regdb@lists.infradead.org for regdb
changes, adding now.

On Sat, Oct 06, 2018 at 06:02:54PM +0200, Hauke Mehrtens wrote:
> Commit 8607edfdb6568 ("wireless-regdb: Parse wmm rule data") introduced
> a dependency to the python module attr which is not included by default
> in all python installations. Replace the code with manually coding the
> constructor instead of using attr. This makes the code also work on
> systems without attr.
> 
> I would like to avoid an additional dependency in OpenWrt where we
> compile the regulatory database inside of the build system.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

I had wonderd if this would turn out to be a problem for someone.
Applied, thanks!

> ---
>  dbparse.py | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/dbparse.py b/dbparse.py
> index 5fe752b..993f757 100755
> --- a/dbparse.py
> +++ b/dbparse.py
> @@ -5,7 +5,6 @@ from functools import total_ordering
>  import sys, math
>  from math import ceil, log
>  from collections import defaultdict, OrderedDict
> -import attr
>  
>  # must match <linux/nl80211.h> enum nl80211_reg_rule_flags
>  
> @@ -32,16 +31,17 @@ dfs_regions = {
>  
>  @total_ordering
>  
> -@attr.s(frozen=True, cmp=False)
>  class WmmRule(object):
> -    vo_c = attr.ib()
> -    vi_c = attr.ib()
> -    be_c = attr.ib()
> -    bk_c = attr.ib()
> -    vo_ap = attr.ib()
> -    vi_ap = attr.ib()
> -    be_ap = attr.ib()
> -    bk_ap = attr.ib()
> +
> +    def __init__(self, vo_c, vi_c, be_c, bk_c, vo_ap, vi_ap, be_ap, bk_ap):
> +        self.vo_c = vo_c
> +        self.vi_c = vi_c
> +        self.be_c = be_c
> +        self.bk_c = bk_c
> +        self.vo_ap = vo_ap
> +        self.vi_ap = vi_ap
> +        self.be_ap = be_ap
> +        self.bk_ap = bk_ap
>  
>      def _as_tuple(self):
>          return (self.vo_c, self.vi_c, self.be_c, self.bk_c,
> -- 
> 2.11.0
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

