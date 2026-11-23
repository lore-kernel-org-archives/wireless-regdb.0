Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDFD606A31F
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 20:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3ONQboln
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=/AQj7AzfV6SoS+vYzvPhpxO75RyAaQNmq2a9bV5+1WM=; b=3ONQbolnv1Ewwx/iffQk2mQfUt
	C0Vs67lu4zc9/+ctz6kZZzXahAVTWsSv1PsGb49GXizik2X50yD+si0TCOc/RPR7PQVu8P5p77D+L
	NbuYdFBtYwRhdOVm6q+C+tdME/ADvbpP1f2c1TUIM4vy0y+4OGZTZSiGVSCihRifSUjegnGnQI5bs
	xWoePHKVFBCj0Au1L76BRhcrdHVdvwgrvugtaCnHpLmmAfdYW9d+eJeTchgHaTxxwTCnGEMseNojk
	qN6L5o6gtcw2cudf+c14dqLP7TBo5ZrBXq4oxicNLB4+XU4vd+YyJtohwGD2PEwA74q/3f5WWg1s0
	Xl8Lbpug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaHL-00000004msI-2dYG;
	Mon, 23 Nov 2026 20:04:43 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaHH-00000004mrp-26Pk
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 20:04:42 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO0016CE;
    23 Nov 2026 23:04:40 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 23:04:07 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG0016CD;
   23 Nov 2026 23:04:05 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO0000E1;
  23 Nov 2026 23:04:03 +0300
Received: from spooler by mail-s22-aux2.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 23:04:01 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG0000E0;
   23 Nov 2026 23:03:59 +0300
Date: Mon, 23 Nov 2026 23:04:00 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Georgia (GE)
User-Agent: K-9 Mail for Android
Message-ID: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_120439_999650_0C4DA20D 
X-CRM114-Status: UNSURE (   7.17  )
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

The GE entry has no source for the 2=2E4 and 5 GHz rules and does not
allow 5470-5725 MHz, which is permitted for licence-exempt use in
Georgia=2E

Licence-exempt WAS/RLAN is set out in Table 3 of Annex 1 to the
National Radio Frequency Spectrum Allocation Plan (GNCC Resolution
No=2E 6 of 30 June 2006), as amended by GNCC Resolution No=2E 9 of
25 July 2024, published on the official legislative portal matsne=2Egov=2E=
ge=2E

Limits as stated in Table 3 (all e=2Ei=2Er=2Ep=2E):
  2400-2483=2E5 MHz: 100 mW, 10 mW/MHz for wideband modulations
  5150-5350 MHz:   200 mW mean, 10 mW/MHz, indoor use only
  5470-5725 MHz:   1 W mean, 50 mW/MHz
  5945-6425 MHz:   200 mW mean
  57-71 GHz:       40 dBm mean, 23 dBm/MHz, fixed outdoor excluded
Note 3=2E2 requires DFS (as in EN 301 893) in 5250-5350 MHz and
5470-5725 MHz=2E Note 3=2E3 requires TPC in the same bands and lowers the
e=2Ei=2Er=2Ep=2E limits by 3 dB if TPC is not used=2E

Changes:
 * 2=2E4 GHz: 2400-2483=2E5 MHz, 100 mW=2E
 * 5150-5250 MHz: 200 mW (was 18 dBm), NO-OUTDOOR=2E
 * 5250-5350 MHz: 100 mW (was 18 dBm, 5250-5330 MHz), NO-OUTDOOR, DFS
   (200 mW with TPC)=2E
 * Add 5470-5725 MHz, 500 mW, DFS (1 W with TPC)=2E
 * 60 GHz: extend to 71 GHz as in the table=2E
 * Add the source and the TPC note=2E

5725-5875 MHz is listed in the table only for EN 302 502 (fixed
broadband data transmission systems), not for WAS/RLAN under
EN 301 893, so it is not added=2E The 6 GHz rule already matches=2E

Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/db=2Etxt b/db=2Etxt
index f5b7cc1=2E=2Eac9aad5 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -808,16 +808,26 @@ country GD: DFS-FCC
 	(5735 - 5835 @ 80), (30)
=20
 # Source:
+# National Radio Frequency Spectrum Allocation Plan (GNCC Resolution No=
=2E 6
+# of 30 June 2006), Annex 1, Table 3 (wideband data transmission systems,
+# including WAS/RLAN), as amended by GNCC Resolution No=2E 9 of 25 July 2=
024:
+#  https://matsne=2Egov=2Ege/ka/document/view/6234066
+# Note 3=2E3 of the table requires TPC in 5250-5350 MHz and 5470-5725 MHz=
 and
+# lowers the limits by 3 dB without it=2E 5725-5875 MHz is listed only fo=
r
+# EN 302 502 (fixed broadband data transmission), not for WAS/RLAN=2E
 # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
 #  https://docdb=2Ecept=2Eorg/implementation/16737
 #  https://docdb=2Ecept=2Eorg/download/4685
 country GE: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (18), AUTO-BW
-	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
+	(2400 - 2483=2E5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	# 200 mW with TPC (note 3=2E3); Linux has no TPC, so 3 dB less
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
+	# 1 W with TPC (note 3=2E3); Linux has no TPC, so 3 dB less
+	(5470 - 5725 @ 160), (500 mW), DFS
 	(5945 - 6425 @ 320), (23), NO-OUTDOOR
-	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	# 60 GHz band channels 1-6, ref: ETSI EN 302 567
+	(57000 - 71000 @ 2160), (40)
=20
 country GF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
--=20
2=2E43=2E0


--=20
RFAREAS Support

