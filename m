Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D3D606A31A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=N2aXlLje
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=fJ11GKOjructH2+ApxtwE2ooJvlCQ/t3COzXIxaYx+E=; b=N2aXlLjeT/OYQnNz6x081JkU7d
	hWcGqjQTkUqCDEiateV+kFGYstfEb6ohtF8DO3a5DxsYqmsReU6l4nnl7sZHQMqG13LhvwcbPsWCW
	gVBVeBM6D8de03o0jSKIGVpDj9UMPXO+jQL+TPYFrofNgMOCsPAwQ9MUMh2HgzAQ5XPuhB3hNjnlE
	MSW2Lhjjrr18/XCk/G/wx09UTqUq4qi0I+npPILNmvA62Q4Gbh8T2zdk+Pe1Tf6Jrt4ceZOJuvct/
	39z8zK0YZgFUjNHCTlXN8iczs+Qr5tua2xEj7Ml3doL1gfkG6f/GJV+yerzi106ml2QArZw/cAmU8
	O1mTj2oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRDn-00000002w6u-2xgk;
	Mon, 23 Nov 2026 10:24:27 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRDk-00000002w6L-03zI
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:24:26 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000C0A;
    23 Nov 2026 13:24:25 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:24:18 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000C09;
   23 Nov 2026 13:24:18 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000CC9;
  23 Nov 2026 13:24:13 +0300
Received: from spooler by mail-s22.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:24:12 +0300
Received: from ehlo.thunderbird.net (128.204.79.23) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000CC8;
   23 Nov 2026 13:24:10 +0300
Date: Mon, 23 Nov 2026 13:24:12 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Belarus (BY)
User-Agent: K-9 Mail for Android
Message-ID: <78DCED16-8799-423B-BC5D-91690821B766@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_022424_471253_11E84634 
X-CRM114-Status: UNSURE (   7.75  )
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

The BY entry has no source and allows 5490-5710 MHz at 27 dBm, which
is not permitted for licence-exempt use in Belarus=2E

Licence-exempt Wi-Fi is set out in Resolution No=2E 9 of the Ministry
of Communications and Informatization of 1 July 2013, the list of radio
equipment operated without a frequency assignment permit=2E Items 7 and 8
were replaced by Resolution No=2E 13 of 29 August 2016; Resolution No=2E 1
of 10 January 2018 changed "output power" in item 7 to "e=2Ei=2Er=2Ep=2E"=
=2E
All three acts are published on the National Legal Internet Portal
pravo=2Eby=2E

Limits as stated in the resolution:
  item 7, 2400-2483=2E5 MHz: 100 mW e=2Ei=2Er=2Ep=2E
  item 8, 5150-5350 MHz and 5650-5725 MHz: 200 mW e=2Ei=2Er=2Ep=2E
Both items: IEEE 802=2E11 equipment installed inside buildings,
structures and vehicles, not using antennas installed outside them=2E

Changes:
 * 2=2E4 GHz: 2400-2483=2E5 MHz, 100 mW, NO-OUTDOOR=2E
 * 5150-5250 MHz: 200 mW (was 20 dBm), NO-OUTDOOR=2E
 * 5250-5350 MHz: 100 mW, NO-OUTDOOR, DFS=2E Footnote 5=2E446A of the
   national table of frequency allocations (Council of Ministers
   Resolution No=2E 620 of 9 August 2016) requires ITU-R Resolution 229
   in 5150-5350 MHz and 5470-5725 MHz, so TPC is needed in 5250-5350
   MHz and the limit is 3 dB lower without it=2E In 5650-5725 MHz the
   national 200 mW is already below the Resolution 229 limit without
   TPC (500 mW)=2E
 * Replace 5490-5710 MHz with 5650-5725 MHz, 200 mW, NO-OUTDOOR, DFS=2E
   The band is 75 MHz wide, so the maximum bandwidth is 40 MHz=2E
 * Add the sources, including the allocation table=2E

Item 18, added by Resolution No=2E 2 of 24 January 2019, also lists
5785-5875 MHz, but only for use in Minsk during the II European Games
2019, so it is not included=2E

Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
v2: 5250-5350 MHz limited to 100 mW without TPC: the allocation table's
footnote 5=2E446A applies ITU-R Resolution 229 (thanks, Chen-Yu)=2E
Cite the allocation table=2E

Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/db=2Etxt b/db=2Etxt
index 43dc0b3=2E=2E9721f53 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -386,11 +386,26 @@ country BW: DFS-ETSI
 	(5470 - 5725 @ 160), (250 mW), DFS
 	(5725 - 5850 @ 80), (24), DFS
=20
+# Source:
+# Resolution of the Ministry of Communications and Informatization No=2E =
9
+# of 1 July 2013 (radio equipment operated without a frequency assignment
+# permit), items 7 and 8, as amended by Resolution No=2E 13 of 29 August =
2016
+# and Resolution No=2E 1 of 10 January 2018:
+# https://pravo=2Eby/document/?guid=3D3961&p0=3DW21327720
+# https://pravo=2Eby/document/?guid=3D3961&p0=3DW21631260
+# https://pravo=2Eby/document/?guid=3D3961&p0=3DW21832737
+# Both items allow use only inside buildings, structures and vehicles,
+# without antennas outside them=2E
+# Table of frequency band allocations (Council of Ministers Resolution
+# No=2E 620 of 9 August 2016); its footnote 5=2E446A requires ITU-R
+# Resolution 229 in 5150-5350 MHz and 5470-5725 MHz:
+# https://pravo=2Eby/document/?guid=3D3961&p0=3DC21600620
 country BY: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483=2E5 @ 40), (100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	# 200 mW with TPC (ITU-R Resolution 229); Linux has no TPC, so 3 dB less
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5650 - 5725 @ 40), (200 mW), NO-OUTDOOR, DFS
=20
 country BZ: DFS-JP
 	(2402 - 2482 @ 40), (30)
--=20
2=2E43=2E0


--=20
RFAREAS Support

