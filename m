Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C9606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vXSuumTU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=4vQr3HN3Y0pvkzuIckMkJmRF3IhmcINm3TLdP49hxNg=; b=vXSuumTUjWmT726wPgQ4n8YYb7
	EYQhkGflizYf/gIvV4/Df8i7dJ9wYe6rb9LTM/tIdSrR1TfCNybV7vj0G2o/pR98EUbglbGszaZX/
	WAzLAj5/ThfU6T1HZ9Xt16Vcu3Zvrb770BWVQmJvo6g0SE+Py51Xh9W2dI0hTmGGS/UJfSnPyWi8q
	ckVZIN+mcNPzyYA2yTSIpmnhq4xuWz/PPGiDq7h9U6bUR6o/SbWp2McF6b2L1BaZcyt8CKlVX2pWF
	ER9uU+FzcAP/5gT7kSh46M41IqLirxJcOX3LZOFCqdva9eRhOoFvoXV+zE6H7fia1DCA8YY4EM6iN
	oYtaDZdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVki2-00000005iWU-3FHL;
	Tue, 24 Nov 2026 07:12:58 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkhz-00000005iVx-35yW
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:12:57 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000627;
    24 Nov 2026 10:12:55 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:12:48 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000626;
   24 Nov 2026 10:12:46 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO0004CC;
  24 Nov 2026 10:12:41 +0300
Received: from spooler by mail-s22-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:12:39 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG0004CB;
   24 Nov 2026 10:12:39 +0300
Date: Tue, 24 Nov 2026 10:12:42 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: =?US-ASCII?Q?=5BPATCH=5D_wireless-regdb=3A_Allow_5725-5875_?=
 =?US-ASCII?Q?MHz_short_range_devices_for_Georgia_=28GE=29?=
User-Agent: K-9 Mail for Android
Message-ID: <EC40FABC-4701-499A-A1D4-0BD6AB88FDF2@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_231256_126380_D5C1B081 
X-CRM114-Status: UNSURE (   6.55  )
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

Table 1 of Annex 1 to the National Radio Frequency Spectrum Allocation
Plan (interface requirements for non-specific short range devices), as
amended by GNCC Resolution No=2E 9 of 25 July 2024, allows 5725-5875 MHz
at 25 mW e=2Ei=2Er=2Ep=2E under EN 300 440, with no duty cycle or other
condition=2E

Add it as for the other CEPT countries, and correct the comment, which
only mentioned Table 3 for this range=2E

Suggested-by: Chen-Yu Tsai <wens@kernel=2Eorg>
Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/db=2Etxt b/db=2Etxt
index f92ac10=2E=2E341cb18 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -813,8 +813,9 @@ country GD: DFS-FCC
 # including WAS/RLAN), as amended by GNCC Resolution No=2E 9 of 25 July 2=
024:
 #  https://matsne=2Egov=2Ege/ka/document/view/6234066
 # Note 3=2E3 of the table requires TPC in 5250-5350 MHz and 5470-5725 MHz=
 and
-# lowers the limits by 3 dB without it=2E 5725-5875 MHz is listed only fo=
r
-# EN 302 502 (fixed broadband data transmission), not for WAS/RLAN=2E
+# lowers the limits by 3 dB without it=2E In 5725-5875 MHz Table 3 lists =
only
+# EN 302 502 (fixed broadband data transmission); Table 1 of the same Ann=
ex
+# allows non-specific short range devices at 25 mW e=2Ei=2Er=2Ep=2E (EN 3=
00 440)=2E
 # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
 #  https://docdb=2Ecept=2Eorg/implementation/16737
 #  https://docdb=2Ecept=2Eorg/download/4685
@@ -825,6 +826,8 @@ country GE: DFS-ETSI
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
 	# 1 W with TPC (note 3=2E3); Linux has no TPC, so 3 dB less
 	(5470 - 5725 @ 160), (500 mW), DFS
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-6, ref: ETSI EN 302 567
 	(57000 - 71000 @ 2160), (40)
--=20
2=2E43=2E0


--=20
RFAREAS Support

