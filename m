Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUsDn-0008SK-E6
 for wireless-regdb@lists.infradead.org; Tue, 01 Apr 2014 06:30:56 +0000
Received: by mail-la0-f45.google.com with SMTP id hr17so6537700lab.4 for
 <wireless-regdb@lists.infradead.org>; Mon, 31 Mar 2014 23:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=mm7Gi9F8CKwYQdSDn79Mx7uclQMQ5njr2n4CrvGGoEk=;
 b=Dx17XUUapDICo7oBerWJ+NUqL4OB0TNuPiU/WkgGlTRyT/M+bs/rM+J4z9ehdoInBs
 bO7LqgpZ1c+AnPo9i4MxR5TQdAwakIq54PvPEX3c7WFnwZ4vW5TRc+SFVG6cgjbNbP3W
 9GQJr++9WbSKVQZ5TV1JmghirOvhfWx6G6uCo=
MIME-Version: 1.0
In-Reply-To: <1393313163-9568-2-git-send-email-janusz.dziedzic@tieto.com>
References: <1393313163-9568-1-git-send-email-janusz.dziedzic@tieto.com>
 <1393313163-9568-2-git-send-email-janusz.dziedzic@tieto.com>
Date: Tue, 1 Apr 2014 08:30:28 +0200
Message-ID: <CALhHN=o-pByTgyR1=h=e=b4sj4xxk_=b5LBqJxKBVjL60cEr8Q@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH 2/2] crda: add AUTO-BW rule flag
 support
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
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, John Linville <linville@tuxdriver.com>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 25 February 2014 08:26, Janusz Dziedzic <janusz.dziedzic@tieto.com> wrote:
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
> ---
>  regdb.h  |    1 +
>  reglib.c |    4 ++++
>  2 files changed, 5 insertions(+)
>
> diff --git a/regdb.h b/regdb.h
> index 20f29e9..3ffb781 100644
> --- a/regdb.h
> +++ b/regdb.h
> @@ -81,6 +81,7 @@ enum reg_rule_flags {
>                                          * Point links */
>         RRF_NO_IR               = 1<<7, /* do not initiate radiation */
>         __RRF_NO_IBSS           = 1<<8, /* old no-IBSS rule, maps to no-ir */
> +       RRF_AUTO_BW             = 1<<11, /* Auto BW calculations */
>  };
>
>  #define RRF_NO_IR_ALL  (RRF_NO_IR | __RRF_NO_IBSS)
> diff --git a/reglib.c b/reglib.c
> index 1e57634..3deca4a 100644
> --- a/reglib.c
> +++ b/reglib.c
> @@ -750,6 +750,8 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
>                 printf(", PTMP-ONLY");
>         if (rule->flags & RRF_NO_IR_ALL)
>                 printf(", NO-IR");
> +       if (rule->flags & RRF_AUTO_BW)
> +               printf(", AUTO-BW");
>
>         printf("\n");
>  }
> @@ -793,6 +795,8 @@ static uint32_t reglib_parse_rule_flag(char *flag_s)
>                 return RRF_PTMP_ONLY;
>         if (strncmp(flag_s, "NO-IR", 5) == 0)
>                 return RRF_NO_IR;
> +       if (strncmp(flag_s, "AUTO-BW", 7) == 0)
> +               return RRF_AUTO_BW;
>
>         return 0;
>  }
> --
> 1.7.9.5
>

ping

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

