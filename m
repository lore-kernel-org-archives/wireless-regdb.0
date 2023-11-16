Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Dyp3KiV8MqBDgrhSVZhE8kJ0iVbGh0AvQ6SxgWtg4Sg=;
 b=Xjvng2p4N09W30
 6627TObC8olHcINJmzAgVJbIPRY9mngekpCAw7uybNw/KrWdo368WBjmVNI8I6nuai4FhCE0jnOei
 bMEg1HE9vt3vrWOaYmaj7ku+hZJQIrI4dKimIT/hPdUB0FwntgGgggRhbnKFNBGwaX26/vEG8kZaN
 YKHFcIX76NS0fxhUMlDkN1x0D23Uy9wK6II6csBCekXV3+myI4oAOUEksbeZsj+OCQYEEuPUHgbqg
 S7R1mpA7Onjgw8mxokoZ12W4NQGxJryzeuEU+SSBwspBCu4QwWnN7UVkN9MroX3MsGVk+NV4pjnB1
 V22IOCriQillNjYIt7NA==;
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3kh5-0052CV-0V
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Nov 2023 22:18:40 +0000
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-6c33ab26dddso1286799b3a.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 16 Nov 2023 14:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org;
 s=google; t=1700173117; x=1700777917; darn=lists.infradead.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fut2D9PGkyHE9fjVYm7r2SdMYSbTSM2K3xqc3g+d5jg=;
 b=dgKSE9M/a8QsJQcANphP5sqN7O6YrF2rznFXbtc7NLLaZRX/ogKByh097R363mS54/
 eBr8Pbn7sqoRlyMlL5k5ewUzHzW1p6bfMj+4eEYb/v72i6TnoBzQQ1Y4VunVNLeZ20kD
 ySu4NAGyvkS6BBtyBxKhZLeUgTj+g9FkjYaVM=
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 16 Nov 2023 14:18:16 -0800
Message-ID: <20231116221828.301564-1-briannorris@chromium.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Makefile: Reproducible
 signatures
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
To: linux-wireless@vger.kernel.org
Cc: Chen-Yu Tsai <wens@kernel.org>, wireless-regdb@lists.infradead.org, Brian Norris <briannorris@chromium.org>
List-ID: <wireless-regdb@lists.infradead.org>

Per openssl-mime(1):

       -noattr
	   Normally when a message is signed a set of attributes are
	   included which include the signing time and supported
	   symmetric algorithms. With this option they are not included.

The signing time hurts reproducibility, even if the same database, key,
and certificate are used.

So, drop the extra attributes from the smime command.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index 02176ec7b717..ecd23309efb6 100644
--- a/Makefile
+++ b/Makefile
@@ -69,6 +69,7 @@ regulatory.db.p7s: regulatory.db $(REGDB_PRIVKEY) $(REGDB_PUBCERT)
 		-signer $(REGDB_PUBCERT) \
 		-inkey $(REGDB_PRIVKEY) \
 		-in $< -nosmimecap -binary \
+		-noattr \
 		-outform DER -out $@
 
 sha1sum.txt: db.txt
-- 
2.43.0.rc0.421.g78406f8d94-goog


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

