Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 Message-ID:Date:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=J/tpDa8HKRS2NksZr3Mss3fq0rEfPpPCFqOLGHpZ8DI=;
 b=EX6wwv+YXXbPGZ
 iWmuTcoTUcqYgDGGSRLQAE//7QNmwpN6khUyOsciA6f2ZFYz0E0RadR2J5hLXz9Op59go9HXGEPZd
 gksIHNYUSOod8i3IQtWswRmc0KEfDOUUQsPbzbB50sErDtBOJT8Cdo/uRuWAQS81cz48CMRyOnbxZ
 6IDUrVrqrOlkaM9iXZtr5GvY2lx3VTFMBh/qTY5B/j36tmKVwDUJ06xys5peSKbTsMnmgMoF0Fef7
 qRdHNpznjVuDeHRa2AeZ4hk2bbDrjM/NM7iivcPTEyGEh93SVpahNFWqQ+vq/PoTWbi5xKounOXiN
 7HySYjMYVNYxwuMnUU5Q==;
Received: from mail-bl2nam02on060d.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::60d]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWXpK-0007dI-4u
 for wireless-regdb@lists.infradead.org; Tue, 11 Dec 2018 02:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quantenna.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHKEjfLS3Aw2rcX3+IO1ewcW7WCpmVq+FuY7IiSpNIg=;
 b=akhqfa0V5VfCRMhA//3LBvm7OrHYTF5in+O3uJc3A5zuVrXxwfqS5sxA4F+lqjoVejwv4a5+tKpdMV9B+tHbS6K3Nt6lqKwn4bYKj0/10PoHWZ6L7Bijwxc4zr0+2LRggAZS3HeifvaQqypAP/+zAlD/ReAvTFtiVY5W8PP+BBs=
From: Igor Mitsyanko <igor.mitsyanko.os@quantenna.com>
Date: Tue, 11 Dec 2018 02:30:58 +0000
Message-ID: <423eaa39-fc06-6a5a-a8fd-5e15d503dff5@quantenna.com>
Content-Language: en-US
Content-ID: <C1AB080D174B3C4BA18BDD7A1616AB46@namprd05.prod.outlook.com>
MIME-Version: 1.0
Subject: [wireless-regdb] Tx power for slave devices in ETSI DFS region
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
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

according to ETSI 
https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
section 4.2.3.2.2, table 2
Note 3 states:
 >Slave devices without a Radar Interference Detection function shall 
 >comply with the limits for the frequency range 5 250 MHz to 5 350 MHz.

And Tx power limits are defined as following:
5150 to 5350: 20 dbm
5470 to 5725: 27 dbm

Which means that if STA device can not do radar detection, it must use 
20dbm Tx powers on all channels (can not use 27 dbm limit).


Looking at regdb 
https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt, 
power limit for frequency range 5470 to 5725 is defined at 27 dbm.


Question is: does wireless core assumes that each device can do radar 
detection in slave modes (eg acting as a STA) and it is enabled by 
default? I couldn't find any logic in kernel which would limit 27 dbm 
power to 20 for STA devices.
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

