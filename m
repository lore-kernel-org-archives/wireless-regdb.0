Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFte5-0003TG-WA
 for wireless-regdb@lists.infradead.org; Tue, 18 Feb 2014 23:00:10 +0000
Received: by mail-pd0-f180.google.com with SMTP id x10so16761978pdj.25 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 14:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=TxuAAe0jiW099QWiRT/rsLN3ppoNiOI6IX/DeJr1OS4=;
 b=WvKC94UIhP7IkIBM0JGSdM1VXbfZJ57Mo+dwkdhffqCGzpHIwNteWHDXc2r3VKRsn6
 QsocUXfZsSGiHA6NjKp0vXD29+1lLMGrkBXZZuz4U9r+BkbRAe4I/TXkL/J5/jOt+tdA
 3cOaERr0Lzrv66a9q12pThgqGkaiqs+ChGer0eORXkv3xBqbQX3yhh6sdGofJe2wnLj+
 etx9A7xy2z+k6SRA2q5F7pxPL4aA+LVM2XHoTnkk3DZLGSuJsoXNQLonN/UEsccEB36k
 HAKS5uIU/MhCeJciTOLwA0U7FpDIXNkOZ6mlaUd9GhYmoR7ANIqktCFpk2TBKNZ2YxoL tO8Q==
Date: Tue, 18 Feb 2014 14:59:39 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140218225936.GB14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-3-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390818118-27261-3-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 2/6] cfg80211: Add Kconfig option
	for cellular BS hints
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

On Mon, Jan 27, 2014 at 12:21:54PM +0200, Ilan Peer wrote:
> Move the regulatory cellular base station hints support under
> a specific configuration option and make the option depend
> on CFG80211_CERTIFICATION_ONUS.
> 
> Signed-off-by: Ilan Peer <ilan.peer@intel.com>
> ---
>  net/wireless/Kconfig |    7 +++++++
>  net/wireless/reg.c   |    2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/net/wireless/Kconfig b/net/wireless/Kconfig
> index 16d08b3..81c05e4 100644
> --- a/net/wireless/Kconfig
> +++ b/net/wireless/Kconfig
> @@ -95,6 +95,13 @@ config CFG80211_CERTIFICATION_ONUS
>  	  you are a wireless researcher and are working in a controlled
>  	  and approved environment by your local regulatory agency.
>  
> +config CFG80211_REG_CELLULAR_HINTS
> +	bool "cfg80211 regulatory support for cellular base station hints"
> +	depends on CFG80211_CERTIFICATION_ONUS
> +	---help---
> +	  This option adds support for drivers that can receive regulatory
> +	  hints from cellular base stations

Please use:

This option enables support for parsing regulatory
hints from cellular base stations. If enabled and at
least one driver claims support for parsing cellular
base station hints the regulatory core will allow and
parse these regulatory hints. The regulatory core will
only apply these regulatory hints on drivers that support
this feature. You should only enable this feature if you
have tested and validated this feature on your systems.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

