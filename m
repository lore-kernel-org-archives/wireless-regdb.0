Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC354606A32A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 20:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4bCxG+Zs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=eM+N0pRNw56oYj8mhCbTBxnx9bPCLxXhM3kU/ZHjQKE=; b=4bCxG+Zs8PPClsPdAO/PVyVVMB
	ZQi2INGkov5N2JTM1mLOs4+3vq7Mzra0AHmO7mZt4glHmZYa0+GpPZb+8OU1IYCjmlv/AkwPpjhAh
	bKr4c69L2XUM4/8V5oZjrZalo/QYC+ogakXraOaztCA0oOkCjKmxLqkdsrk2McZU2+EnLwNLkYMIi
	GtaprJKtGR/aVnYiAGVvAQo3oJF3dfD1RR0ATxxnyV2cKUqMWWVfDvawQtLf0FnNqqWpKs1LnxNL+
	qxvGm/jL3bLYa/SIBp58l4FRBkhMv5/mI+M/hDxLkeo3Bu9QqVApePhj/ohpz6C4uXmgO14oHoFyX
	d3sSOUBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaRM-00000004nfU-2uYv;
	Mon, 23 Nov 2026 20:15:04 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaRK-00000004nd6-02Ei
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 20:15:03 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO0016DA;
    23 Nov 2026 23:15:03 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 23:14:39 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG0016D9;
   23 Nov 2026 23:14:39 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO0000F0;
  23 Nov 2026 23:14:25 +0300
Received: from spooler by mail-s22-aux2.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 23:14:23 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG0000EF;
   23 Nov 2026 23:14:21 +0300
Date: Mon, 23 Nov 2026 23:14:32 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH] wireless-regdb: Update 60 GHz rule for Ukraine (UA)
User-Agent: K-9 Mail for Android
Message-ID: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_121502_313388_3B57E7AF 
X-CRM114-Status: UNSURE (   7.77  )
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

The UA entry allows 40 dBm in 57-66 GHz=2E The current list of radio
equipment used under general authorisation in Ukraine, NKEK Resolution
No=2E 361 of 3 July 2024, allows MGWS (WAS/RLAN) equipment in 57-66 GHz
under item 78 with a maximum mean e=2Ei=2Er=2Ep=2E density of 13 dBm in an=
y 1 MHz,
a maximum e=2Ei=2Er=2Ep=2E of 20 dBm and indoor use only (ETSI EN 302 567)=
=2E
The amendments to the list adopted since then (Resolution No=2E 32 of
28 January 2026, current consolidated version of 18 March 2026) do not
change this item=2E

Change 57-66 GHz from 40 dBm to 20 dBm (NO-OUTDOOR is kept) and add
the source=2E

The source cited for the 2=2E4 and 5 GHz rules (z0201-15) was repealed by
Resolution No=2E 361 on 16 August 2024=2E Those rules are not changed here=
=2E

Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/db=2Etxt b/db=2Etxt
index f5b7cc1=2E=2E07c3ef9 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -2097,6 +2097,10 @@ country TZ: DFS-ETSI
 # 2=2E4 GHz band channels can be used outdoors when some requirements are=
 met=2E
 # 5 GHz band channels must be used only indoors in some cases=2E They are=
 neither
 # permitted nor denied outdoors in others=2E
+# 60 GHz: NKEK Resolution No=2E 361 of 3 July 2024, list of radio equipme=
nt
+# used under general authorisation, item 78 (MGWS, 57-66 GHz): 20 dBm
+# e=2Ei=2Er=2Ep=2E, 13 dBm/MHz, indoor use only=2E
+#  https://zakon=2Erada=2Egov=2Eua/laws/show/z1175-24
 # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
 #  https://docdb=2Ecept=2Eorg/implementation/16737
 #  https://docdb=2Ecept=2Eorg/download/4685
@@ -2108,7 +2112,7 @@ country UA: DFS-ETSI
 	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (20), NO-OUTDOOR
=20
 country UG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
--=20
2=2E43=2E0

--=20
RFAREAS Support

