Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1227BC0218D
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 Jan 2025 14:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ldVEcmtinS/lY7ECt5uwSWw8v2LtBLA5DVqAw8pk09c=; b=QDD9GpAq1m0c2fAvazGnInSzjW
	/gd/OBI0b0wnO2ujc65p82QpJTQrvk+28bcZKAFXiGuTH0yA0cgw4Blb5LF0VQSVXfD0nAvvyBME6
	Ur7tCbKoJFHIH3IJbPu1R9D3EeSP30nuJ28iaYpfUfTEEzlDU8JhqBA4OgD6FINNWRl46t8bIFRxW
	ir4GZ+GjirQl9GXwabvtpSXdDcIfHfWmd9KiWaeo06xaPAwmIojoRh7JbKjRDypQG21EakidvH2l7
	rGPIBaCiwkv6XSdm6LI6pQ92T8oJVrUeg7dWTLlDGw9PWU0yC8mNz1ZZqTL/UgR2IyLIFI76xp8L0
	8oLVfERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td8iA-000000074NM-0fCk;
	Wed, 29 Jan 2025 14:06:34 +0000
Received: from [2a00:6340:2043:4800:a51:ffff:fe4d:3558] (helo=mail.hypatia.paranoidlabs.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td6lU-00000006uHS-1JyB
	for wireless-regdb@lists.infradead.org;
	Wed, 29 Jan 2025 12:01:54 +0000
Received: from caph.lan (unknown [IPv6:2a02:1748:dd4e:ded0::3ab])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.hypatia.paranoidlabs.org (PlabsMail) with ESMTPSA id 1E9C43AEC1;
	Wed, 29 Jan 2025 12:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoidlabs.org;
	s=rsa-20210101; t=1738152105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ldVEcmtinS/lY7ECt5uwSWw8v2LtBLA5DVqAw8pk09c=;
	b=X4uui67tRuNT1IvAdfBJAIsloobVMTR3WLJ3YO840r4T1YTBzWuPGkNPFSPL+VmlQOcVd8
	ISbCQRf2/P3MD0GEB/lnNeHvz0MxyVv44f4vEfg/7P/IvEHqlh21M7x8C68eZ1AcbR8fDT
	HKkQ72QUPfcxzSYTlEtr8OKOZsw9DSZSLT/BGB2WAUEmolXU3pLfb3vE4NLJsHMII6IXyn
	9BfuVO0mOe1aEXZr2H98ZFQI9S0HZpLuFbgWBTrujaKMaOiRo73ZREykoxQD4mKX9Nb8fH
	rcvChUf6g/BAgwCSp3+fodEcAZsIrvzGjSsmZJ01dGit+VSGU7tbCBcIHjW8ig==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=paranoidlabs.org;
	s=ed25519-20210101; t=1738152105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ldVEcmtinS/lY7ECt5uwSWw8v2LtBLA5DVqAw8pk09c=;
	b=wg0+NsCITUZ88Y5NT0t3xJ+QUM+cslRdBsTah5rQvQJYZuQH+RgR53tmpc/N1f/ZaXWyLo
	EnxgIECMZ50WaoBQ==
From: Jakob Riepler <jakob.riepler@paranoidlabs.org>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Jakob Riepler <jakob.riepler@paranoidlabs.org>
Subject: [PATCH] wireless-regdb: Update regulatory rules for Austria (AT)
Date: Wed, 29 Jan 2025 12:25:55 +0100
Message-ID: <20250129112554.27296-2-jakob.riepler@paranoidlabs.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_040152_950347_C1C6170C 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Wed, 29 Jan 2025 06:06:33 -0800
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

According to the Austrian "Frequenznutzungsverordnung" Attachement 2
page 404
(https://www.ris.bka.gv.at/Dokumente/Bundesnormen/NOR40251378/II_61_2023_Anlage_2.pdf),
Austria extended the usable range according to the EU SRD Band 75a (Implementing
decision 2019/1345, current consolidated version:
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A02006D0771%2801%29-20220210&qid=1738145465756)

This probably applies to most other countries that are part of CEPT
and/or EU but I'm not good enough with international law to be sure
about others.
It might be worth checking and updating this for many more countries.

This also updates two outdated links (the RTR one was a 404, the CEPT
one redirects with a warning that this link wil stop working).
Specifically the CEPT one might need updating for all other countries as
well (also the link now seems to refer to a newer version of the document
than the originally referenced one. v2.2.1 is from 2021 and was updated
to include the 66-71GHz range as well).

Signed-off-by: Jakob Riepler <jakob.riepler@paranoidlabs.org>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index e282e3b..8a5c0bd 100644
--- a/db.txt
+++ b/db.txt
@@ -114,8 +114,8 @@ country AS: DFS-FCC
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 #  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
-# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
-# AT: https://www.rtr.at/en/tk/Spektrum5GHz/1997_bmvit-info-052010en.pdf
+# Harmonized CEPT countries (February 2021): https://docdb.cept.org/download/25c41779-cd6e/Rec7003e.pdf
+# AT: https://www.rtr.at/TKP/was_wir_tun/telekommunikation/spectrum/bands/1997_bmvit-info-052010en.pdf
 # AT: acceptance https://www.ris.bka.gv.at/Dokumente/BgblAuth/BGBLA_2014_II_63/BGBLA_2014_II_63.pdfsig
 country AT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -126,8 +126,8 @@ country AT: DFS-ETSI
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
 	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
-	# 60 GHz band channels 1-4 (ETSI EN 302 567)
-	(57000 - 66000 @ 2160), (40)
+	# 60 GHz band channels 1-6 (ETSI EN 302 567)
+	(57000 - 71000 @ 2160), (40)
 
 # Source:
 # 'Item' in the comments below refers to each numbered rule found at:
-- 
2.47.1


