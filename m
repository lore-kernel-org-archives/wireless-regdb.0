Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
 MIME-Version:Message-Id:Date:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=pK2ods7FTgM0ZZKA6p87Us/H65zh3P3T/0OQMZpT4b8=;
 b=0Axu89TKk67O0355hCRl18K3oL
 47EDZ7qqTd+lAKaaZI88UqRQ+mcDxVUDwIP0Qs8XqHBMFmdAoInzhqN6ii/Y3sIq0I5fzPZiujrN0
 ZsXdpd0M6+/uEFqOo0BaiyxkR4K47YrRtKwHa2YjWfWcJ7kyTKU2VXgmoYsXyjP3+VB87tEznK31x
 tCRNnCWh7Z5ZzUmzYUXXqfh1+QIZgc1Tqfo2dm/MlAzW/mtj1sljw9PwywXj0IOwqf81NvRKJWIjd
 qiMKv2IvMHa2jUF69LRVun21fWWW9xideWKGb42yQmmEqq88UPVe13849+05E1MZWJ3EVUuavOrGm
 trl4IFeQ==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lycgn-00EhRg-G2
 for wireless-regdb@lists.infradead.org; Wed, 30 Jun 2021 16:03:51 +0000
Received: by mail-ej1-x633.google.com with SMTP id hr1so1686772ejc.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Jun 2021 09:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version:in-reply-to
 :references:content-transfer-encoding;
 bh=D+HdESE/0kImJ3JvndQPrJ4lv0LDDAWGN+8xozTNEsQ=;
 b=DFzemgQfphcn7B/yPeY7CjGVJUpn2+AIJ1VtAHUVm+k9YyHjQByrQlArZjr90cpyu6
 A/8xJhO/+F6uBw/zTU6y99VE32KWuR9cO4bLEOlFROPD++8GqGcZ/ZQBkRTd0Zlp23D+
 MSxLGbsBhnKs1j1VAo6oDSi1lTVrGAA62tBy4dZuO4vG/odtPP7+4DeWGdm/R+KTu6hL
 2K/Gd3dZ7U83/gpGf5wyVGokekbKvl6KvHazRn47iQ4HA3RnLXFqv/sHhSBYc5FtTIiF
 +Tx4ADfvO1+E7zmAU305VbHwv9lWI6tf9HgkAeDzYv8td+/vOA5KBu3YJLQnO6EVO5uq w0wg==
From: bkil <b.K.il.h.u+tigbuh@gmail.com>
Date: Wed, 30 Jun 2021 18:03:20 +0200
Message-Id: <10ffaa74a0779b7c7047de70cb1db7dfb0000022.1625068999.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
References: 
	 <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: recent FCC report and
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
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
index c71a03a..ae6ea31 100644
--- a/db.txt
+++ b/db.txt
@@ -1587,7 +1587,10 @@ country US: DFS-FCC
 	# requirements, we can extend the range by 5 MHz to make the kernel
 	# happy and be able to use channel 144.
 	(5470 - 5730 @ 160), (23), DFS
-	(5730 - 5850 @ 80), (30)
+	(5730 - 5850 @ 160), (30), AUTO-BW
+	# https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band
+	# max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
+	(5850 - 5895 @ 160), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW, NO-IR
 	# 60g band
 	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
 	# channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

