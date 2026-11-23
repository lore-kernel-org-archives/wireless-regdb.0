Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8D4606A31A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AnTNSW7h
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=R9THjgpuvABTM8Wxex1Yp+3V5Z4qPyoJ2aRaF3usfMU=; b=AnTNSW7h4CKfjOsG92FZMVEytO
	rN7zvMil+8r0HatQVvwOALkmB/uTclKRZ8LYV1X7MvXnMTnk02eTzLkmoNkVRb92axjhpewcrzh9w
	GCmWf1JZqwwBXABlmT4Wp0iKpO+GwznZ3L6p+WYGY9GxBEJllE2enCK0XNqTPgD098eRQgimKak2/
	sgjkS3Sk4G9W0XvorF+szyxYVyN/mCXGVQWajNSSx1pqlA15ifio6wAe10akwMfRv1QY/KPcUnZh8
	yhm7+VUV+vLY7UZAGIAFfCQEyxajyzRboxs65RVudttxgL71Qo/qZ1e4RebHldXzBL8VHmrmvH+SY
	pH8ImFig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRCB-00000002vp8-0WIA;
	Mon, 23 Nov 2026 10:22:47 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRC6-00000002voX-3bwx
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:22:44 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000BF3;
    23 Nov 2026 13:22:44 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:22:38 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000BF2;
   23 Nov 2026 13:22:37 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000CC1;
  23 Nov 2026 13:22:33 +0300
Received: from spooler by mail-s22.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:22:30 +0300
Received: from ehlo.thunderbird.net (128.204.79.23) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000CC0;
   23 Nov 2026 13:22:28 +0300
Date: Mon, 23 Nov 2026 13:22:29 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH v2 2/2] wireless-regdb: Allow channel 144 for Kazakhstan (KZ)
User-Agent: K-9 Mail for Android
Message-ID: <8BB6488B-D0B9-4ECB-9740-E892DDA3F4C1@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_022243_269894_C4355147 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Valery Belousov <support@rfareas=2Ecom>

Channel 144 (5710-5730 MHz) straddles the 5725 MHz boundary between
the 5470-5725 MHz and 5725-5850 MHz rules, so it cannot be used=2E

Both ranges have the same limits in item 24 of Annex 1 to the Rules
(100 mW e=2Ei=2Er=2Ep=2E, indoor use only); 5725-5850 MHz has no DFS flag =
and
is the less restrictive one=2E Extend the lower range to 5730 MHz and
start the upper one there, as done for the US=2E 5725-5730 MHz then
requires DFS, which is more restrictive than before=2E

Suggested-by: Chen-Yu Tsai <wens@kernel=2Eorg>
Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
New in v2, as requested in the review of v1=2E

 db=2Etxt | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/db=2Etxt b/db=2Etxt
index 3e1921d=2E=2Eae49c0c 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -1208,8 +1208,12 @@ country KZ: DFS-ETSI
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	# 200 mW with TPC (ITU-R Resolution 229); Linux has no TPC, so 3 dB less
 	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
-	(5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
-	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
+	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz=2E
+	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
+	# requirements, we can extend the range by 5 MHz to make the kernel
+	# happy and be able to use channel 144=2E
+	(5470 - 5730 @ 160), (100 mW), NO-OUTDOOR, DFS
+	(5730 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
=20
--=20
2=2E43=2E0


--=20
RFAREAS Support

