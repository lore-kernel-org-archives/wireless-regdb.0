Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E9B606A324
	for <wireless-regdb@archiver.kernel.org>; Thu, 22 Oct 2026 16:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w5Bt12zR;
	dkim=pass (2048-bit key, unprotected) header.d=lizardsystems.com header.i=@lizardsystems.com header.a=rsa-sha256 header.s=dkim2 header.b=m3YJH8/V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Xa0r/DQ/s0JYCk88RUqPkqF/7q6ZRxVmUPUbBNZ5zmc=; b=w5Bt12zRsj34dnVqoV3xLIkigA
	kpJHOUNUuDsPnco2/9yA3ZiwewmgEYi7JNI3llGI1T6V3rs5kwdQnbummPlHnrI8QM56EybD08TYh
	bupvlWxua4h2bgqEuq5Eb4viwQtgSedaivUaau9AMwmGWOXVo6B2R+4Pd/zoUtRZrGxHPkS796GhS
	n97YD+hXtYubTdUJXM4MGozCx9VsaUUc0pQn+G/+CJtAHxMzCdtQ3uYdnkvefQ154SLaM8ZEYVF9s
	CjDTVN7pbJnihr+xVhWzSzykkzOKzWz1f+NI8Km55apx1UsCmahrWFgLoI3ZRS7lCHqV0gl5jQSoR
	aMqjfMLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvp7-0000000EW78-3EZn;
	Thu, 22 Oct 2026 16:39:25 +0000
Received: from mail.lizardsystems.com ([54.186.4.18])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvp3-0000000EW4P-1bN7
	for wireless-regdb@lists.infradead.org;
	Thu, 22 Oct 2026 16:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lizardsystems.com;
	s=dkim2; t=1792687160;
	bh=Xa0r/DQ/s0JYCk88RUqPkqF/7q6ZRxVmUPUbBNZ5zmc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:From;
	b=m3YJH8/V0KUhOkaIUnA8twSbUKXpiqiej4tHlRWdfm7Z9tc4N96q2dh1sHh4cfG18
	 8+X4jWTxFIkhp4Z1ZB1lRJJwEUmOXx+hERyqqZXtsKbxgX5WqE+aDrAgshzAdsx+oL
	 Bb8O6oCoabslPsOoVp4z2SY52FccGyLY5/BkKa0vVhkzob7DaMWpLfdCuEs7MJGmDq
	 SZvPsKvwvK1FUe0KliDX9mQI53pe+0bUWz9iI4hBChjOhAdUET8SFrm+Ad0/T6uyqB
	 83H2FKHTwDm8P1/V0MMMTkuxIU1KxdzYPWJAz70C3Gt0BaqQRUXFLKN9X2VYah3VO5
	 nchXmhPTqGDDQ==
Received: from viza (unknown [109.248.199.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.lizardsystems.com (Postfix) with ESMTPSA id BFFBE427CC;
	Thu, 22 Oct 2026 16:39:18 +0000 (UTC)
From: Vitalii Zagorovskii <support@lizardsystems.com>
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	Vitalii Zagorovskii <support@lizardsystems.com>
Subject: [RFC PATCH] wireless-regdb: Apply the FR rules to French Polynesia (PF) and Wallis and Futuna (WF)
Date: Thu, 22 Oct 2026 21:39:10 +0500
Message-ID: <20261022163910.1292-1-support@lizardsystems.com>
X-Mailer: git-send-email 2.56.0.windows.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_093921_465092_51D26CFA 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

PF and WF carry the same block, which matches neither FR nor TNRBF
Annex 7: 2402-2482, 5170-5250, 5250-5330 and 5490-5710 MHz, with no
5725-5875 MHz, 6 GHz or 60 GHz rule. I could not trace those values to
the TNRBF or to a local decision.

Annex 7 of the TNRBF (consolidated edition of 26 May 2026) says that the
use of its bands by short-range devices is subject, in Region 3, to
decisions of the TTOM assignee, and that in the absence of such
decisions the conditions in its tables apply:

  en Region 3, a des decisions de l'affectataire TTOM; en l'absence de
  telles decisions, les conditions d'utilisation de ces bandes de
  frequences par les AFP sont celles mentionnees dans les tableaux
  ci-dessous.

PF and WF are in Region 3. The TTOM assignee is the government of
French Polynesia (DGEN) for PF and the Service des postes et
telecommunications (SPT) for WF. I found no Wi-Fi decision from either,
so the Annex 7 tables apply.

FR is the closest block db.txt has to those tables, so use it for both
countries. The FR block cites the 2021-12-14 edition of the TNRBF and may
not equal the current Annex 7 rows in every detail; if FR is brought up
to date, PF and WF should follow it.

Source:
https://www.anfr.fr/fileadmin/mediatheque/documents/tnrbf/TNRBF_2026-05-26c.pdf
(Annexe 7, A7-1, and the WAS/RLAN tables 3.a to 3.c)

Signed-off-by: Vitalii Zagorovskii <support@lizardsystems.com>
---
 db.txt | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/db.txt b/db.txt
index 7aff3fb..6a83fff 100644
--- a/db.txt
+++ b/db.txt
@@ -1617,10 +1617,16 @@ country PE: DFS-FCC
 	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
 country PF: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E low power indoor
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
+	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
+	(57000 - 71000 @ 2160), (40)
 
 country PG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
@@ -2167,10 +2173,16 @@ country VU: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country WF: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E low power indoor
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
+	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
+	(57000 - 71000 @ 2160), (40)
 
 country WS: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.56.0.windows.1


