Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Hta5B8x5B4G63/GVPPGflKuWdLI1vNdnR4yT8jGhDhE=;
 b=DWVDJxeiVUzefq
 s9A4U90goobeQiuJuGw1d6mpJKmVjpYf88KFpXlyqthbwxrwJab7n7YWDKEcmD66+77QDuZNpFanB
 gVuc/2JB/ExiWAVSR4LJuEabJiCXlJwoIq0/2MMxqB3lX/O9YmRmyWWjCNUONXu412ZGTa2YhITQz
 NY8DW6HwTJ0d4g0FdBmrajWNjNG1qKT5mdmgPvmekOusc8kihhQUb+Zy51ZZAdCAZqpDAOiPyd5TW
 LXY9/1S4H13YqZYR3uk/Je13fO7UpFZ2quJYpZUjnq0rfgMbvsW0GAdMjnXZ5Z+/m8rES7BJ1Ni2C
 gVAYWri2ZODBiSdH3w0A==;
Received: from mail-ve1eur01on0082.outbound.protection.outlook.com
 ([104.47.1.82] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6v7W-0003VC-Kl
 for wireless-regdb@lists.infradead.org; Tue, 24 Oct 2017 09:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aaudk.onmicrosoft.com;  s=selector1-its-aau-dk;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=h8tB/q2Rzvesx4QOPixd9CF0NcKQCTbApcR7cybWU9E=;
 b=BszeI5yFfyBWJc7XnTbEFj9Hdci6/UDKyxARzQ100jPwSZNJ4MYEsgODaM0VskaTxwHvMpWK3sBklpeXF0GP1rAi8srBvcZujnEFONUhjTgB7K+uZLGhhgRwmEm8BeI/8lbAb8/ThxjsVYwZks7p7HpkzWSRSbWRWZBE91TT+Rc=
From: Per Mejdal Rasmussen <pmr@its.aau.dk>
Message-ID: <25548470-bf47-3827-6aa3-de4684d66f12@its.aau.dk>
Date: Tue, 24 Oct 2017 11:03:06 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] Update regulatory rules for Denmark (DK) on 2.4
 and 5GHz
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
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi

The content of db.txt for Denmark (DK) is wrong. The 5GHz is from some 
where between 2002-2006, and the 2.4GHz has never been correct.

Current content of db.txt:
--------------------------
country DK: DFS-ETSI
	(2402 - 2482 @ 40), (20)
	(5170 - 5250 @ 80), (20), AUTO-BW
	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
	(5490 - 5710 @ 160), (27), DFS
	# 60 GHz band channels 1-4, ref: Etsi En 302 567
	(57000 - 66000 @ 2160), (40)


Current free channels Denmark:
------------------------------
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5875,0 MHz
57-66 GHz


I suggest to copy the rules for Germany (DE) to Denmark (DK):
-------------------------------------------------------------
country DK: DFS-ETSI
	(2400 - 2483.5 @ 40), (100 mW)
	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW
	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
	(5470 - 5725 @ 160), (500 mW), DFS
	# short range devices (ETSI EN 300 440-1)
	(5725 - 5875 @ 80), (25 mW)
	# 60 GHz band channels 1-4 (ETSI EN 302 567)
	(57000 - 66000 @ 2160), (40)


History of free channels Denmark:
---------------------------------

 From 1999-09-07:
2400,0-2483,5 MHz
5150,0-5250,0 MHz

 From 2000-03-30
2400,0-2483,5 MHz
5150,0-5350,0 MHz

 From 2002-12-10
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
17,1-17,3 GHz

 From 2006-11-07
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5925,0 MHz
17,1-17,3 GHz

 From 2007-09-20
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5875,0 MHz
17,1-17,3 GHz

 From 2008-06-11
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5875,0 MHz

 From 2009-11-27 (current)
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5875,0 MHz
57-66 GHz

Source (search for "RLAN"):
https://www.retsinformation.dk/Forms/R0710.aspx?id=189932



-- 
Per Mejdal Rasmussen
http://personprofil.aau.dk/109070

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

