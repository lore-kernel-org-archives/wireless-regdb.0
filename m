Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=kHOrXXeshkpmNi3x3/ag/hrvQE2dwsmrylgoWCeG92M=;
 b=ITva8pwGd/BzUyzz6NasXDFP1+
 L56JBL9vKDnWkm0Y2qWLDjSaucqR1a5DcWFscGBcUKh2HpKx0PBLv0iDppyfjFJJf9dDqY8WGUcyx
 hqapKEAZU4zBRCMnxVaxjRV8ZcMBc/XI+m2ztEm9o/nQUlka4wjlUXvbxvsK6ncRxnxPTPM81dtQ1
 PR+sDOxGok2TxyCzSSB5UQJL8rYQy+sKwFvFpfeXbElwc0LbW3xCdrifQzlmDbPS3u+GYdEtpZH2t
 ik9HhNy0IGqDOlw7yPEeHpx566iCitwOnK8sOwLkfSJGiLYF35X6r7MFuUXUuvKA96npwwgJuzpRW
 Vo2iBGmA==;
Received: from mail4968.hm1315.locaweb.com.br ([201.76.49.68])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOSb7-008ag5-8b
	for wireless-regdb@lists.infradead.org; Wed, 17 Aug 2022 23:37:20 +0000
Received: from mcbain0006.email.locaweb.com.br (189.126.112.72) by
 mail4950.hm1315.locaweb.com.br id hvltqk2n8lgg for
 <wireless-regdb@lists.infradead.org>; Wed, 17 Aug 2022 20:37:09 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <271ca023-d574-7d84-a020-ec5950fb500e@cesarb.eti.br>
Date: Wed, 17 Aug 2022 20:31:56 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Brazil (BR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The wireless-regdb rules for Brazil in wireless-regdb have no comment 
indicating where they came from, and haven't been updated in a long 
time. There have been some changes to the legislation since then, 
including the addition of the 6 GHz and 60 GHz ranges.

The relevant legislation can be found in the following three URLs, 
mostly the last one:

https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita

https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680

https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448

In the last one, the relevant articles are:

* Article 10 is the classic wireless ranges (2.4 GHz, and 5 GHz channels 
149 to 165), and the 900 MHz ranges
* Article 11 is the extended 5 GHz and 6 GHz ranges
* Article 22 is the vehicular (V2X) ranges
* Article 23 is the 60 GHz ranges


Here follows my interpretation of these rules from a wireless-regdb 
point of view, with the relevant article number in parenthesis:

Other than the article 22 range (5850-5925 MHz), these rules don't 
mention a max channel width, so VHT160 or even larger would be allowed 
in all ranges except 5850-5925 MHz.

For ranges 902-907.5 MHz, 915-928 MHz, 2400-2483.5 MHz, and 5725-5850 
MHz (article 10.1), the maximum power output in the transmitter is 1 W 
(30 dBm, article 10.3.2), and the maximum antenna gain is 6 dBi (article 
10.5).

For range 5150-5250 MHz (article 11.1), the maximum EIRP would be 4 W 
(36 dBm, article 11.1.1), but since the smallest channel size we use in 
this range is 20 MHz, and the maximum EIRP spectral density is 50 mW/MHz 
(17 dBm/MHz, article 11.1.2), the maximum EIRP is 1 W (30 dBm); this 
range is INDOOR-ONLY (article 11.1.3), and requires either TPC (article 
11.5) or a reduction of 3 dB (article 11.5.1).

For range 5250-5350 MHz (article 11.1), the maximum EIRP is 1 W (30 dBm, 
article 11.1.1); this range is INDOOR-ONLY (article 11.1.3), requires 
either TPC (article 11.5) or a reduction of 3 dB (article 11.5.1), and 
requires DFS (article 11.6).

For range 5470-5725 MHz (article 11.3), the maximum power output in the 
transmitter is 250 mW (24 dBm, article 11.3.1), the maximum EIRP is 1 W 
(30 dBm, article 11.3.2), requires either TPC (article 11.5) or a 
reduction of 3 dB (article 11.5.1), and requires DFS (article 11.6).

For range 5925-7125 MHz (article 11.7), there are different rules for 
APs, clients, and very low power devices. For APs (article 11.7.1), the 
maximum EIRP is 30 dBm (article 11.7.1.1), and it's INDOOR-ONLY (article 
11.7.1.3); for clients of an indoor AP (article 11.7.2), the maximum 
EIRP is 24 dBm (article 11.7.2.1), and it's INDOOR-ONLY (article 
11.7.2.3); for very low power devices (article 11.7.3), the maximum EIRP 
is 17 dBm (article 11.7.3.1).

For vehicular range 5850-5925 MHz (article 22.1), the base channel width 
is 10 MHz but they can be aggregated (article 22.1.1), the maximum EIRP 
is 23 dBm (200 mW, article 22.2), and it requires TPC (article 22.3).

For range 57-71 GHz (article 23.1), the maximum EIRP is 40 dBm (article 
23.1.1) with maximum peak 43 dBm (article 23.1.2).


I'm unsure as how to correctly represent the rules with a maximum 
antenna gain in wireless-regdb. My best guess as to how these rules 
would be represented in wireless-regdb, based on the US rules which have 
some similar-looking ranges and power limits, would be (ignoring for now 
the 900 MHz and vehicular ranges, since I'm unsure about their correct 
channel widths):

# Source:
# https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
# 
https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
# 
https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
country BR: DFS-FCC
	#(902 - 907.5 @ ???), (30)
	#(915 - 928 @ ???), (30)
	(2400 - 2483.5 @ 40), (30)
	# The next three ranges have been reduced by 3dB, could be increased 
back to 30dBm if TPC is implemented.
	(5150 - 5250 @ 80), (27), NO-OUTDOOR, AUTO-BW
	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
	# requirements, we can extend the range by 5 MHz to make the kernel
	# happy and be able to use channel 144.
	(5470 - 5730 @ 160), (27), DFS
	(5730 - 5850 @ 80), (30)
	# This range requires TPC.
	#(5850 - 5925 @ ???), (20)
	# AP 30dBm, client 24dBm
	(5925 - 7125 @ 320), (24), NO-OUTDOOR
	# EIRP=40dBm (43dBm peak)
	(57000 - 71000 @ 2160), (40)

On a quick look, the result looks sane and makes sense to me: 1 W (30 
dBm) everywhere, reduced by 3 dB on the DFS channels since TPC isn't 
implemented; for 6 GHz the client is reduced by 6 dB, which is also the 
case at least on the US rules according to the comment there; and 60 GHz 
seems to follow everyone else in using 40 dBm.

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

