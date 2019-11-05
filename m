Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=9bpXPTYGBSjbGfNeRLXDt6Vs/+reT/ky1++YDPcDpzE=;
 b=PgMHu3N/kkwYSztae27Gw0gb8Y
 WBxecLRF1TLz8mGyNmzJ6vgKLn+BgAu3jgzN7zRRRfp8jzDPUW+m9MZaZvobuOY4QoB/5oYP8pECl
 6gOuaX/znj5nzhlyBQdDBX+7ucC3l0K3WP12o5tWF2Ls1UNNk/NFo0ihVrfykHBOstBJIfQbgWx17
 f3nkp+TRae0ru3aPXEHYcwIUrP4R7DTBx/zaA52uvoSXupZQ50pAPqpeZzahphPgHESorfklw4r/A
 vzcNwHzxa0qnltxkNNqiNIVBMFbcCWPrmK536vmplK3BKZ0tkqydZrBSGfTDtQ+5nbSuty7WbMa/o
 DSv1eDEw==;
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7qv-0003ck-Gn
 for wireless-regdb@lists.infradead.org; Tue, 05 Nov 2019 23:03:10 +0000
Received: by mail-qt1-x842.google.com with SMTP id y39so31603402qty.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 Nov 2019 15:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org;
 s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=KgdBjWRotGUdFa6yEZp/8RYHVGh/XZzlG3qRL1BDB+0=;
 b=Qs2EtrHizWLTWaWhJiIlygypuriMhdHV3pOjybG64NWI0E8aI69P4VRw6rVcYZoUhF
 EWPMKwHicfO1FRF8mYAGzucQXKjiRG4YnprrB4fXz0lCphmgrYm0SoTQEPrEADsQQgzG
 wTy0RhpKL5GlhKsISHuii5KIOX5zmkBCPZ5ks=
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com.
 [209.85.222.171])
 by smtp.gmail.com with ESMTPSA id h185sm689579qkc.34.2019.11.05.15.03.06
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Nov 2019 15:03:06 -0800 (PST)
Received: by mail-qk1-f171.google.com with SMTP id e2so22870098qkn.5 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 Nov 2019 15:03:06 -0800 (PST)
MIME-Version: 1.0
References: <20191105225751.1233-1-briannorris@chromium.org>
In-Reply-To: <20191105225751.1233-1-briannorris@chromium.org>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 5 Nov 2019 15:02:54 -0800
Message-ID: <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: Makefile: fix .so compilation
 line with some compilers
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
To: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Nov 5, 2019 at 2:57 PM Brian Norris <briannorris@chromium.org> wrote:
>
> Write the CC rule such that it only tries to produce a single output
> file (the .so). When including the .h files in the compiler invocation,
> this suggests we should be producing pre-compiled headers too, which
> doesn't make sense in this context, and Clang happens not to like.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---

Apparently wireless-regdb@ is subscribers only. I have since joined,
but I guess my patch bounced from that list... if I don't hear back in
a while, I may resend.

Brian

> Yes, I know CRDA is deprecated.
>
>  Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 6169b1f307da..6ca26f341dfa 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -114,9 +114,9 @@ keys-%.c: utils/key2pub.py $(wildcard $(PUBKEY_DIR)/*.pem)
>         $(NQ) '  Trusted pubkeys:' $(wildcard $(PUBKEY_DIR)/*.pem)
>         $(Q)./utils/key2pub.py --$* $(wildcard $(PUBKEY_DIR)/*.pem) $@
>
> -$(LIBREG): regdb.h reglib.h reglib.c
> +$(LIBREG): reglib.c regdb.h reglib.h
>         $(NQ) '  CC  ' $@
> -       $(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $^
> +       $(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $<
>
>  install-libreg-headers:
>         $(NQ) '  INSTALL  libreg-headers'
> --
> 2.24.0.rc1.363.gb1bccd3e3d-goog
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

