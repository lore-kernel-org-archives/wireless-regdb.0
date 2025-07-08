Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9569AC83F0A
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 12:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xzCowVZAkVLlB6K9r1YTa9/vbKlrCX9BPKZEWgetdyk=; b=d5gRgHUk+aZgdiOF6Ma6vT3NGd
	mT1wwXdbZW1hE0EduxVDN23dxCeTo4hLAJjR/ouGmLAZwdiUnRDndgWX9DqFnAlRM3VoN4uZ76+eM
	ZD6L1s1QA6TPdz85nnGoyDv/1S4ECsExqD8SR5fOQWxFTMR0oQ+M+VnZcn0qFjWfIbVyNfxsj6qZd
	3g20iNXjT5io+kpzNKVxIA+xnzlvYYI5COStOstsBYj1r1lsqwCLp24G8I1KWPVU07kfs/FACflXU
	MJkT5ugegAGSvuIX68XXikX808MwLCxUrNZLFSWk8+2zSbBhG3rv0/9zTq/yPeKsUDOY29gY/RTTS
	yVz6wxPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ73Y-00000005Fo2-3ppG;
	Tue, 08 Jul 2025 12:04:16 +0000
Received: from forward100b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ64h-000000058kw-3IQ2
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 11:01:26 +0000
Received: from mail-nwsmtp-smtp-production-main-87.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-87.sas.yp-c.yandex.net [IPv6:2a02:6b8:c23:2f3c:0:640:7ca0:0])
	by forward100b.mail.yandex.net (Yandex) with ESMTPS id 319E060E21;
	Tue,  8 Jul 2025 14:01:16 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-87.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 61fFSplM6eA0-VmTTjdGi;
	Tue, 08 Jul 2025 14:01:15 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1751972475; bh=xzCowVZAkVLlB6K9r1YTa9/vbKlrCX9BPKZEWgetdyk=;
	h=Cc:Message-Id:To:From:Date:Subject;
	b=NYDKt7F/KJ9MhqDKTEVT1r6IRnatXBrYyiuLtKNVhirgLG4GHAXmSvcDbLUtDEgdy
	 FcU13l3uP4i+p6WZvr1aTs0FBCg5BJg5e5yIRdHVXVWUbsj2nXGcZKonTT3/beNIZ9
	 Z7ZHb52yL4m3MV4OvDwbnLLD2CN8XHNH7MgjCikU=
Authentication-Results: mail-nwsmtp-smtp-production-main-87.sas.yp-c.yandex.net; dkim=pass header.i=@0upti.me
From: K900 <me@0upti.me>
Date: Tue, 08 Jul 2025 14:00:38 +0300
Subject: [PATCH] wireless-regdb: allow 320MHz channel width for Russia
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250708-russia-320-v1-1-53641e8dd417@0upti.me>
X-B4-Tracking: v=1; b=H4sIAFX6bGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDcwML3aLS4uLMRF1jIwPdJAPTJMM0I8sUS8M0JaCGgqLUtMwKsGHRsbW
 1AHFEhSlcAAAA
X-Change-ID: 20250708-russia-320-b05b1f29d91f
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 K900 <me@0upti.me>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_040124_008747_B12B4411 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 08 Jul 2025 05:03:50 -0700
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

The entry was added before 11be (and thus 320MHz) was a thing,
and there is no actual legal restriction on channel width, so
update it to allow 320MHz channels.

---
Signed-off-by: K900 <me@0upti.me>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 12ac14766a698fc774bf2920bdbe3ff5533d4d5c..22de7b00be60445e49a612eb86a1f1d976039d26 100644
--- a/db.txt
+++ b/db.txt
@@ -1726,7 +1726,7 @@ country RU:
 	(2400 - 2483.5 @ 40), (100mW)
 	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
 	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (100 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 

---
base-commit: 5a8ced5ad3135d72a53260282e760325e26e07a9
change-id: 20250708-russia-320-b05b1f29d91f

Best regards,
-- 
K900 <me@0upti.me>


