Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ZNdft8m8QG0zkezQH4WDouA11p+QiBb7o5Hcbme2eZk=;
 b=BXMYdIjFdaFy6d
 PvO2cfmbWeQDJnTpm4OfwCP1pEcxbytKF0K51WGee3MUfhDIxTl29P00Wo6dLYJjePd449mkCD91K
 lXnV1T2e9Fkm54Z6lDyKnT28MA0I9EpYW2mLI1vP0ay4Q/xdOAMd9UdTyMKVN3GXZDBpExaF5GRn4
 ySykNmFXjZHKBw90Zu9ZKbTvJRSO23fOi/nQUmjsyhjn/7TTYtJDEzTHjrBWEUmc2nurMZq8L0XBY
 1a4sfYVQKcWK6dIqacwnjEwZwyYUvlIGSBwtJYR+nYbLR7cC1pCh+/iWp4onWUA6KLNdZkFNKKB2c
 kAK153Qe+ffEGlq5Ry3w==;
Received: from sphereful.sorra.shikadi.net ([52.63.116.147])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qL1IX-00BHl7-18
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Jul 2023 12:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=shikadi.net ; s=since20200425;
 h=MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References;
 bh=ND0pD31csde2KLHVwQ6L1FzB1O9wl5BeBq3v9vAOJ/A=;
 b=Syaq9i/vqdBxcywDaUFm+Bwm9N
 oo/sTso7gxQFhU10S/4pzfM3gc3VqCBGrDmqeKkt0JqP5f4pTqUyo3CgtcEroyPwvj290O9terQm4
 BEg4Cap8m3AzF+c6fvROWcEuW2ysHpwE4mW0fVJPKv5IJliXrj/bvrkNn3H+bOBiUpEUSf11LXkCT
 GQAqq0PVjjaDb0MFgxlCiIgiGX0REETOtzlix55czCQr72THEMR5viJ0l8fzNKnqwui+AvmxEAyTr
 zLNE2wmIDqj2Fou/G2/ToYM/wPNZqrJKhGz2qnMRCAWXIbVxtNT90sRbsOeLWJN32bUle62bHLLkP
 2Fft8r9Q==;
Date: Sun, 16 Jul 2023 22:56:04 +1000
From: Adam Nielsen <a.nielsen@shikadi.net>
Message-ID: <20230716225604.1d5a136a@vorticon.teln.shikadi.net>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Australia (AU) for June 2023
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

 - Update legislation link from March 2022 version to June 2023.
 - Add comments for each frequency range referring back to legislation.
 - Switch units from dBm to mW to match values listed in legislation.
 - Allow 5850-5875 at low power, as this has always been permitted.
 - Combine 5150-5350 bands to permit a 160 MHz channel.

Signed-off-by: Adam Nielsen <a.nielsen@shikadi.net>
---

Hi all,

Just a few minor changes for AU.  I have included (5150 - 5350 @ 160) which
overlaps two existing bands, however I am not sure if this is the correct way
to do it.  From what I gather, having the two bands listed separately (items
61 and 62 in the patch below) would prevent a single 160 MHz channel from
being spread across both bands.  I figure adding another entry that covers
both frequency ranges (with the most restrictive limitations) would permit
the 160 MHz channel to be used, however please correct me if this is wrong.

I added a bunch of comments pointing back to the relevant section of the
legislation document as I found it a bit of a challenge to work out where
each entry mapped back to.  So hopefully this will make it easier for the
next person to work out where the rules are coming from.

If there are any other issues with the patch let me know.

Cheers,
Adam.

 db.txt | 46 +++++++++++++++++++++++++++++++++++++---------
 1 file changed, 37 insertions(+), 9 deletions(-)

diff --git a/db.txt b/db.txt
index ef4e609..d0b7ec6 100644
--- a/db.txt
+++ b/db.txt
@@ -124,20 +124,48 @@ country AT: DFS-ETSI
 	(57000 - 66000 @ 2160), (40)
 
 # Source:
-# https://www.legislation.gov.au/Details/F2022C00281
+# 'Item' in the comments below refers to each numbered rule found at:
+# https://www.legislation.gov.au/Details/F2023C00524
 # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
 # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
 # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
 # of this more restrictive band has been shifted up by 5MHz from 5725MHz.
 country AU: DFS-ETSI
-	(2400 - 2483.5 @ 40), (36)
-	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW, DFS
-	(5470 - 5600 @ 80), (27), DFS
-	(5650 - 5730 @ 80), (27), DFS
-	(5730 - 5850 @ 80), (36)
-	(5925 - 6425 @ 160), (24), NO-OUTDOOR
-	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
+	# Item 58
+	(915 - 928 @ 4), (1000 mW)
+	(920 - 928 @ 8), (1000 mW)
+
+	# Item 59
+	(2400 - 2483.5 @ 40), (4000 mW)
+
+	# Item 61
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+
+	# Item 62 (200 mW allowed if TPC is used)
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
+
+	# Combine the above two bands to get a 160 MHz channel.
+	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
+
+	# Item 63(a) (1000 mW with TPC)
+	(5470 - 5600 @ 80), (500 mW), DFS
+
+	# Item 63(b) (1000 mW with TPC)
+	# The end is 5725 but we borrow 5 MHz from the following less restrictive band
+	# so we can get an 80 MHz channel.
+	(5650 - 5730 @ 80), (500 mW), DFS
+
+	# Item 60
+	(5725 - 5850 @ 80), (4000 mW)
+
+	# Item 22
+	(5850 - 5875 @ 40), (25 mW)
+
+	# Item 63AA (25 mW if outdoors)
+	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
+
+	# Item 65
+	(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR
 
 country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.40.0

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

