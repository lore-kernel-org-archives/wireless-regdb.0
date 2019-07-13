Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=FxxMrD6bPiTSnxaJ2SbpdoNXABM5vNuTBXyQ2URhQzM=;
 b=C6qPtq7JNHYine1gXhJwYc+nF
 fJ7Zm3+BsyoVgfWBZqCl10YblECmBIls7TIMVdnEdzoQ2TRAhuOV9PhTuScpZuebC2Cpf0VUdDdMR
 vbLX3F5pyXxbLsk9YqXS9ZawgTji0haGm6P+Sh8lbVvYiTyDSEhK/uujJr8gdrTKII1TUDk/XfPyj
 yhUCL4+9QfX6p7mlSlZaFanSOI5f0l5FrIx3IA1o6g85g+YqXAKvPcRtKzZBjaDQysPbeFBh9WEJR
 VF3f1TaA7AW0Q5GotQS2wkAK2qKt25BVoy92z485vdOybkFgI0u8KmXL+WQJx3TxqG248rnOwB7tC
 gszwunVhA==;
Received: from staff.inrete.it ([85.89.129.9] helo=mintbk2.inrete.it)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hmLXs-00023U-6s
 for wireless-regdb@lists.infradead.org; Sat, 13 Jul 2019 17:10:50 +0000
Received: (from root@localhost)
 by mintbk2.inrete.it (8.14.3/8.13.4/Debian-3sarge1) id x6DHAjk1009951
 for <wireless-regdb@lists.infradead.org>; Sat, 13 Jul 2019 19:10:45 +0200
References: <20190702141944.25902-1-martin@strongswan.org>
 <20190713130253.GH5418@ubuntu-xps13>
From: gb@inrete.it
Message-ID: <8c7c0973-b1c9-0032-1819-e868855b896f@inrete.it>
Date: Sat, 13 Jul 2019 19:10:37 +0200
MIME-Version: 1.0
In-Reply-To: <20190713130253.GH5418@ubuntu-xps13>
Content-Language: en-US
Subject: [wireless-regdb] Update to wireless-regdb about Italy
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi

I'm Italian and I work in Italy, I realize that nowadays the regdb entry 
for Italy is as follows:

country IT: DFS-ETSI
     (2402 - 2482 @ 40), (20)
     (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
     (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
     (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
     # 60 GHz band channels 1-4, ref: Etsi En 302 567
     (57000 - 66000 @ 2160), (40)

And it misses the lines:

     # Short Range Devices (SRD) (ETSI EN 300 440)
     (5725 - 5875 @ 80), (25 mW)

Common to may European Countries.

I dug a bit in the current Italian regulation that is online on the 
website of the
Ministry of Economic Development: https://www.mise.gov.it/index.php/en/

In the section about the "National Plan of Frequencies" (only in 
Italian) at the URL:

https://www.mise.gov.it/index.php/it/comunicazioni/radio/pnrf-piano-nazionale-di-ripartizione-delle-frequenze 


Two PDF files are linked:

--Tabelle di attribuzione Tabella B (27,50 MHz – 10.000 MHz) (pdf)
https://www.mise.gov.it/images/stories/documenti/Tabella_B_2750_MHz-10000_Mhz.pdf 

Which at page 28 allows the use for ISM according to the general 
European legislation: 2006/771/CE ERC/REC 70-03

--Note (esplicative, di carattere tecnico e con attribuzioni in deroga 
al piano) (pdf)
https://www.mise.gov.it/images/stories/documenti/NOTE-pnrf.pdf
Which at page 334, in the paragraph 3.2.3 states in a explicit way the 
permit to operate the in the band 5.725 ÷ 5.875 MHz,
with SRD and max power at 25 mW.

According to this regulation there's no reason not to have the:
  (5725 - 5875 @ 80), (25 mW)
Inserted for Italy in the regdb

Who can do it ?

-- 

Giorgio Bernardi

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
