Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=Udwxwl4jqHmct7EBNPDVAoUjqSsMK4Ilwe4GVC5Snlc=;
 b=JPxDCYhNAfQL1HxOc0rb4HNUfs
 6LhiTae3+18ooQT3MwySy/mBFYMbEQYlfBV7Wy7kksGyhEuluWNBvrzYvDQHJOX7m1nrVNNOUDb0W
 Ift4B4CGHSCwSUsr2P2xhGtSv4Wnm2lTLMmRLjmw7CSLEIr262IfYFrHtqJZFrsO1Uwsjjgn1sJZo
 dSd4Pv0rH8fwFtDGbYDmrMfgsFW4tX6URjUGceh244/J4NLwxyMO13E50L6L7XVkHeAq9eKpjICde
 CmkaD92mCguvz/h6h5eElFspsbHtGE0RRG1zpT6J7rrDJS0wSBay6e0NMM5XYEPf3heoNWRNkKcTj
 3lfGeTMA==;
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkxHH-0006nL-S8
 for wireless-regdb@lists.infradead.org; Thu, 03 Dec 2020 22:40:45 +0000
Received: by mail-ed1-x543.google.com with SMTP id c7so3852934edv.6 for
 <wireless-regdb@lists.infradead.org>; Thu, 03 Dec 2020 14:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xj0b6s1S6xpPPjCYL4aLEzgZqx91J3FeyLtAU8fCjoo=;
 b=QGFvr7RHj/Ev4oo+p17ZThbimmZS+5G0enSbTQ/zu1bDT3QlzBwTTaUH4WIRu0O9eg
 uDFQcQ/qvWhUwmTueXyMvtCKJ47ncu+UVh/JLDtg14iJJL39+ZlJRKAg9z9YJc5sC0Og
 FsFTTWR1EfO6JqBH3SBQV49pu9x10xsFEkhOUluw7BgSB/kuG8fuhHgpChvQBku3w77m
 E0XyIQIH7xZKWI2OaO/H8NYuzmkWzgb7iSbY4viaX4Peu7Q5OV/IieDbTyjoiYgw0c+3
 H4T3J7HgbDTvIia+gGbuosikJQ9jWLUBmBcAWjt/zfi6piIoD/JzffHv0IuHO5OqC7ed QxVQ==
From: bkil <b.K.il.h.u+tigbuh@gmail.com>
Date: Thu,  3 Dec 2020 23:40:30 +0100
Message-Id: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: recent FCC report and
 order allows 5850-5895 immediately
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The new band is called U-NII-4.

The report recommends combining it with 5725-5895 to allow 160 MHz
bandwidth, but that's technically not that easy with regdb due to the
differing restrictions of the two parts. Marking the line for U-NII-3
NO-OUTDOOR and PTMP-ONLY along with extending its range would be a
possible workaround, but this needs to be discussed.

I don't see a requirement for TPC, hence reducing EIRP by 3dB is not
needed. I've marked it 33dBm (minus 6dB for clients) to cope with 20MHz,
but the band can support higher power, though the logic is complicated.

The upper subband (5895-5925 MHz) of the new band is reserved for ITS.

"We limit unlicensed use to indoor operations in recognition of the
potential that ITS licensees may currently be operating"

"We also proposed that U-NII-4 devices be permitted to operate at the same
power levels as U-NII-3 devices."

"For the U-NII-4 band, indoor access point EIRP will be limited to
33 dBm/20 MHz and 36 dBm/40 MHz. When combined with U-NII-3 band spectrum,
indoor access point EIRP can scale to 36 dBm for 80 and 160 megahertz
channels."

"Client devices would be limited to power levels 6 dB below the power
limits for access points."

"the First Report and Order prohibit U-NII-4 client-to-client
communications to protect co-channel incumbent ITS"

Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
---
 db.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c71a03a..e6dd063 100644
--- a/db.txt
+++ b/db.txt
@@ -1587,7 +1587,10 @@ country US: DFS-FCC
 	# requirements, we can extend the range by 5 MHz to make the kernel
 	# happy and be able to use channel 144.
 	(5470 - 5730 @ 160), (23), DFS
-	(5730 - 5850 @ 80), (30)
+	(5730 - 5850 @ 80), (30), AUTO-BW
+	# https://www.fcc.gov/document/fcc-modernizes-59-ghz-band-improve-wi-fi-and-automotive-safety-0
+	# max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
+	(5850 - 5895 @ 40), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW
 	# 60g band
 	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
 	# channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

