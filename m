Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LWFc5CAULCN/zO11zNoeWldtwfkEIzu4d6vKLJ7Z51M=;
 b=T3wpdJYqq1v8GO
 2hf2G9JWqjwjG0OEmk9Lnz4y367o53UDfvUPgE2oDBwQYKh9G3tT3nhqJN2d0iTVQghJv1z3Huk8S
 j8blCy+/yaDfBCnUHKWxqVwhQ+okoIG0OGNTfEIc70LXgilF6ai4J82u5UAO2II0WijOzIkGpqN/L
 ZT0fB0AVB4FQ0J0jMYex2vX7ry0NGrMuzMHG+f8PzAE7Z2hSFBdGP8IEfThpOtL2ZcopjBDfdq89Y
 r0kHAUutxLuuPI/IDvAfCbMjRjlJ4UknnhrTNhhHkyOszjkjl9Vw6N82mbt3SGODDaclTwqrjsmRt
 39OPEuD5jo654Z4MI+0g==;
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlit-0000xf-CB
 for wireless-regdb@lists.infradead.org; Thu, 07 Nov 2019 17:37:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so3013875pfh.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Nov 2019 09:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G8y85XrJTCjTVadT+VZjZfgtkbdkpE4HwtZrB/hkkbU=;
 b=E8E2iPw49phef3jOqYci51VI6Kd1TiJ171mkNuSMJ6qGk+x0btUN+/7B51r86qcCcr
 rlrjfSLHlXKF7FKZiOB2p2MRdtvsZJnsxiGyGfoB3JQQFJoU/fUpKYGDnu4VoWZZYTD3
 HiLxoJ0WovdVVQ3s28Uz2h42m39ZQ5iOeUOFE=
Date: Thu, 7 Nov 2019 09:37:24 -0800
From: Brian Norris <briannorris@chromium.org>
Message-ID: <20191107173723.GA157096@google.com>
References: <20191105225751.1233-1-briannorris@chromium.org>
 <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
 <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
 <CA+ASDXMVJg0QSPzSiWFjoDH67yJ-NfYX4MQZUT3gaivx1SJ2aA@mail.gmail.com>
 <20191106231749.GM11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106231749.GM11244@42.do-not-panic.com>
Subject: [wireless-regdb] [RESEND PATCH] crda: Makefile: fix .so
 compilation line with some compilers
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
To: Luis Chamberlain <mcgrof@kernel.org>
Cc: wireless-regdb@lists.infradead.org, Johannes Berg <johannes@sipsolutions.net>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Write the CC rule such that it only tries to produce a single output
file (the .so). When including the .h files in the compiler invocation,
this suggests we should be producing pre-compiled headers too, which
doesn't make sense in this context, and Clang happens not to like.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
On Wed, Nov 06, 2019 at 11:17:49PM +0000, Luis Chamberlain wrote:
> Sure, send me patches.

Done.

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 6169b1f307da..6ca26f341dfa 100644
--- a/Makefile
+++ b/Makefile
@@ -114,9 +114,9 @@ keys-%.c: utils/key2pub.py $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(NQ) '  Trusted pubkeys:' $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(Q)./utils/key2pub.py --$* $(wildcard $(PUBKEY_DIR)/*.pem) $@
 
-$(LIBREG): regdb.h reglib.h reglib.c
+$(LIBREG): reglib.c regdb.h reglib.h
 	$(NQ) '  CC  ' $@
-	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $^
+	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $<
 
 install-libreg-headers:
 	$(NQ) '  INSTALL  libreg-headers'
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

