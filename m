Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiZEP-000397-RO
 for wireless-regdb@lists.infradead.org; Tue, 11 Dec 2012 23:27:22 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so42959lbo.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 11 Dec 2012 15:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=kaHX6jXaYXZBAxfq6MFXpKwpUwOVVj/coPr1aAH9wYs=;
 b=P/CgU+gExNhWnXnNo3egpT7q9e1tK5YXgGYOYwjnmB/jE5PgdZ66gsMuX3uZJklMtZ
 9qWtuoLwZ9hfLkCNc4tz+9CoRi8Jgq9aP/36Sp+NMhyXB36a7oI43lZ85py/+W5vUcWB
 Vdqvh9n7swvhZgCOHaQbbtu0FsYS8rGZY/H11gXrRRnqSTOEFJBtwoCpVllkykewRaSX
 WJIN3aXY2w6GNvYFZyAIRcVIo2nSZwtbpeoSjbqNfZ9VjtJVmiI7goV0AzEdWJq5IQt/
 5EhpKadETpkgLa3sfwX5bsYfgsaEagSz6puK7vyKKM/d2RG93G274sgi+AXaZesSL7qP AwYg==
MIME-Version: 1.0
In-Reply-To: <5452866.tG58b6Y9lW@lx-vladimir>
References: <5452866.tG58b6Y9lW@lx-vladimir>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 11 Dec 2012 15:26:59 -0800
Message-ID: <CAB=NE6WwW2jqieVi57Jecx_QHT7+h7yvQbk893CRjLC=sNED1g@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: fix compilation with libnl-3.0
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Dec 10, 2012 at 7:58 AM, Vladimir Kondratiev
<qca_vkondrat@qca.qualcomm.com> wrote:
> From 97f1b27e02740ce6bb83c548de0c0a7fbe9b648f Mon Sep 17 00:00:00 2001
> From: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
> Date: Mon, 10 Dec 2012 17:54:29 +0200
> Subject: [PATCH] crda: fix compilation with libnl-3.0
>
> On the distributives that use libnl v.3, libnl-genl named
> libnl-genl-3.
>
> Checked for both rpm based distros and Ubuntu.
>
> Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
> ---
>  Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 084d8e5..f5bd130 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -51,7 +51,7 @@ NL3FOUND := $(shell pkg-config --atleast-version=3 libnl-3.0 && echo Y)
>
>  ifeq ($(NL3FOUND),Y)
>  CFLAGS += -DCONFIG_LIBNL30
> -NLLIBS += -lnl-genl
> +NLLIBS += -lnl-genl-3
>  NLLIBNAME = libnl-3.0
>  else

Thanks but see upstream commit f2a073df, this added this:

+NLLIBS += $(shell pkg-config --libs libnl-genl-3.2)

But I never made a new release with that so I just tag'd v1.1.3 to
kick out a new release. If the wireless.kernel.org tarball generation
cronjob is still alive it will make a new tarball tomorrow sometime
with this release.

mcgrof@frijol ~/devel/crda (git::master)$ git shortlog v1.1.2..v1.1.3
Luis R. Rodriguez (15):
      crda: synch up nl80211.h
      crda: fix null string assumption for alpha2
      crda: add support to send DFS master region
      crda: use stdint.h instead of linux/types.h
      crda: move country2rd() and its helper to reglib.c
      crda: add a reglib iterator reglib_for_each_country()
      crda: make intersect.c use reglib_for_each_country()
      crda: close fd upon leaving
      crda: add new reglib_get_country_alpha2()
      crda: add dfs_region to the ieee80211_regdomain data structure
      crda: make crda use reglib_get_country_alpha2()
      crda: clean header files
      crda: make country2rd() static
      crda: make usage of regdb.h exclusive to reglib.c
      crda: rename reglib_get_*() routines

Stefan Lippers-Hollmann (1):
      crda: add nested support for libnl-3.2

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

