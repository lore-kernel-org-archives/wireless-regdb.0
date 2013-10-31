Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vbx4D-0007yQ-Ep
 for wireless-regdb@lists.infradead.org; Thu, 31 Oct 2013 18:34:02 +0000
Received: by mail-bk0-f54.google.com with SMTP id 6so1145272bkj.41 for
 <wireless-regdb@lists.infradead.org>; Thu, 31 Oct 2013 11:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:subject
 :content-type:content-transfer-encoding;
 bh=t9eqWwwytQYMGdHfXhcvorwU7k9n8edy63EJbeKDFbw=;
 b=DCjNPrgOk8HZoksdkTPFcT+MwYcJcDwpRs88uvNVR9Cibp7Q3cOQ6tIAZlJE2FMrV6
 2jLfIApELxAKB4+nMJE91mCH36OKkVBVVmJ3027YBd9yJAKIlNREHhPRFlcnd2eMo8pc
 0Y5tiC0ZvLZWgNzjig/KJVSwbN4XMUrjs8MDWD5LrxYMDSz1EvlBv/fchfiC6TIpZiuZ
 35r7NdwRQ6ip0J508a0C+D6EhE/saBb0rp7GpufPxyMgABwgvk+t0Y6oqtMrONCIbtn8
 8xdfctFw3+7OK1139tkbZc9IpFhMDpbyKwuBx7Wfl6ilhaiu4aDUbD4909eOkt3DBdVT Yaag==
Message-ID: <5272A27F.9060009@gmail.com>
Date: Thu, 31 Oct 2013 19:33:35 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] French regulatory domain change request
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Jean-Pierre Tosoni <jp.tosoni@acksys.fr>, linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

hi Jean-Pierre,

> The current description for France in regdb.txt is :
> country FR: DFS-ETSI
> 	(2402 - 2482 @ 40), (N/A, 20)
> 	(5170 - 5250 @ 80), (N/A, 20)
> 	(5250 - 5330 @ 80), (N/A, 20), DFS
> 	(5490 - 5710 @ 80), (N/A, 27), DFS
> 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
> 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
> 
> Following this paper http://www.arcep.fr/uploads/tx_gsavis/08-0568.pdf 
> " Décision n° 2008-0568" issued by the ARCEP (French Electronic
> communications and Postoffice Regulation Authority) in the year 2008,
> 1) the frequencies 5150-5350 MHz are limited to INDOOR use.
>  (see page 5: "Dans la bande de fréquences*5150-5350* MHz, les WAS/RLAN sont
> limités à une *utilisation intérieure* ...")
> 2) the limits of the frequency band is ~20MHz greater for all frequency
> values (5150 vs. 5170, 5350 vs. 5330, 5470 vs. 5490, 5725 vs. 5710)

> So IMHO the description for France should read: 
> country FR: DFS-ETSI
> 	(2402 - 2482 @ 40), (N/A, 20)
> 	# ref: ARCEP 08-0568
> http://www.arcep.fr/uploads/tx_gsavis/08-0568.pdf
> 	(5150 - 5250 @ 80), (N/A, 20), NO-OUTDOOR
> 	(5250 - 5350 @ 80), (N/A, 20), NO-OUTDOOR, DFS
> 	(5470 - 5725 @ 80), (N/A, 27), DFS
> 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
> 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
> By the way, this looks very like the description for Germany (DE)

You are right, but a patch is missing ;-)

BTW. It should be fixed for all, or nearly all, ETSI countries.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
