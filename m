Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCCD606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yVWOJLaf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Eo2j+D2NjuWBFz83/QfJLvhKANH4iDC/QgJgThvrGJk=; b=yVWOJLafJdYHqGGTzJYhoWyoJI
	xUlIbYnKS8pFC71Tv7+8uYiTXsHQmSvZUHifzpQ3TabAilFNVcJS7QHxwiSdWtTRp2UHjDIHptJhx
	hfBkz/8AJvv6Xeh34NXBe3/jpl6mnieDS/YbqyqpMx1WocbtkDzTR6rqIqkulAX0sBMy2/bsnkAX3
	Kl0dZq627FH9RqvtL3WRCKl1rib64vXWul6mwO6IqjA0eS2isEcfSRmSIWbbqtWj2SBPw0GBLiOUz
	uphQ+pnTvDZ39LCgxZJxFVi5wnoQiTGSdkBdl8ItFI7f1W0UxMOF2M25FGN377enQpI1fpjkd2wxD
	1s3wl6Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkqg-00000005iu2-3lB9;
	Tue, 24 Nov 2026 07:21:54 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkqe-00000005itW-16Fr
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:21:53 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000676;
    24 Nov 2026 10:21:52 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:21:45 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000675;
   24 Nov 2026 10:21:44 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000503;
  24 Nov 2026 10:21:29 +0300
Received: from spooler by mail-s22-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:21:27 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000502;
   24 Nov 2026 10:21:26 +0300
Date: Tue, 24 Nov 2026 10:21:40 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH] wireless-regdb: Allow outdoor use of 2.4 GHz for Ukraine (UA)
User-Agent: K-9 Mail for Android
Message-ID: <119360F5-6878-4218-AB28-D56C4E76C999@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_232152_650117_D05DDEF0 
X-CRM114-Status: UNSURE (   8.36  )
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

The UA entry marks 2400-2483=2E5 MHz NO-OUTDOOR=2E In the current list of
radio equipment used under general authorisation (NKEK Resolution
No=2E 361 of 3 July 2024), item 53 allows Wi-Fi access points in
2400-2483=2E5 MHz at 100 mW e=2Ei=2Er=2Ep=2E "inside and outside premises"=
, with
the antenna at most 6 m above ground, and item 52 (RLAN terminal
equipment, 100 mW e=2Ei=2Er=2Ep=2E, 10 mW/MHz) has no indoor-only conditio=
n=2E
Resolution No=2E 32 of 28 January 2026 does not change these items=2E

Remove NO-OUTDOOR from 2400-2483=2E5 MHz and cite the items=2E

Suggested-by: Chen-Yu Tsai <wens@kernel=2Eorg>
Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db=2Etxt b/db=2Etxt
index f92ac10=2E=2Ed13a208 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -2110,12 +2110,15 @@ country TZ: DFS-ETSI
 # 60 GHz: NKEK Resolution No=2E 361 of 3 July 2024, list of radio equipme=
nt
 # used under general authorisation, item 78 (MGWS, 57-66 GHz): 20 dBm
 # e=2Ei=2Er=2Ep=2E, 13 dBm/MHz, indoor use only=2E
+# 2=2E4 GHz: items 52 (RLAN terminals) and 53 (Wi-Fi access points) of th=
e
+# same list: 100 mW e=2Ei=2Er=2Ep=2E; access points indoors and outdoors,=
 with the
+# antenna at most 6 m above ground=2E
 #  https://zakon=2Erada=2Egov=2Eua/laws/show/z1175-24
 # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
 #  https://docdb=2Ecept=2Eorg/implementation/16737
 #  https://docdb=2Ecept=2Eorg/download/4685
 country UA: DFS-ETSI
-	(2400 - 2483=2E5 @ 40), (100 mW), NO-OUTDOOR
+	(2400 - 2483=2E5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
 	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
 	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=3DETSI
--=20
2=2E43=2E0

--=20
RFAREAS Support

