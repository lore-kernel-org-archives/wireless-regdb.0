Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
 :From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=8ydnur/rCyncMz7rOVuu8K1RUc/7rltNjoSNUkdwUjk=;
 b=2LiQnunGMgR8UN
 CbJkHOxoI6NODhkoxBrmh3whkHRFoBCmYza2xIWj84TFI3M6PyLk8KfqweH2SnvocvPorxzP6NTMO
 LxSYQoWoTnVg1x++xdPmMAIrfwGIP19EWXxeNsupVxUztqzB3NFiLks9BQaKwA5o4xibsadGNApJ4
 mjVBOiuZG16WKEQdI1QplFEpS6VkkM9OXF0/8Li5ETsAIqn94v5M0PAQMfqcUqL9iTgDGFiHOaA7h
 UOSBWf6AWreIzkm1zh3tOs8+qxrzeKILm02vfGDeqr5kfE3dgAUZd00JfgIGeyYfqSSZNbIYNa2rR
 pAGz6+TH/ZCEcGZOjxZA==;
Received: from mx0b-00186901.pphosted.com ([148.163.137.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX2Pn-00DyWC-1R
 for wireless-regdb@lists.infradead.org; Wed, 23 Mar 2022 14:56:49 +0000
Received: from pps.filterd (m0173336.ppops.net [127.0.0.1]) by
 mx0b-00186901.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22NCYWIc030208
 for <wireless-regdb@lists.infradead.org>; Wed, 23 Mar 2022 14:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avaya.com;
 h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=dk201908; bh=Ngug4NRp8QHUeHAAH/S/dq2eTHxeUc+piaKm+iSUlo4=;
 b=ICoWLIW4wgoaRT7DIroDDkchEhOrtE2nK7hrpQAe8C5T/ZF3Q9dFR1CRadfGZXbMTpIZ
 kBhD/ToaongPFxgLJNyJxe91uj3NwjdJ9gH5T1A8llj51E5gGTehAyMI/umoE9sqtHR5
 QxFV8T6xY9hRE2jjg8ierso3ycqQ5qPvpmdGz2I2uR5PUBTJB/tchqFiss7286anCKSC
 1zQFGJen1QU6jy19U0piwcQ/6vAAxzj4faXXvB1Xm7bM/Zv67IkbrgxQswzBISOnvZtR
 W80MPGIJhpjTFCErFoQN6r0Z93kRLi7EY2M0KJXxPlgVsHV9uMcmev4h021k5mBvX3e8 Vg== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
 by mx0b-00186901.pphosted.com with ESMTP id 3ew87v34yc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <wireless-regdb@lists.infradead.org>; Wed, 23 Mar 2022 14:56:44 +0000
From: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>
Date: Wed, 23 Mar 2022 14:56:41 +0000
Message-ID: <BY5PR15MB4787741965BC6008B3851A35B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: Re: [wireless-regdb] wireless-regdb: master-2022-02-18
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
List-ID: <wireless-regdb@lists.infradead.org>

In testing this release, I have encountered an error with the US domain.

Mar  4 03:55:41 kernel: [ 1269.508101] cfg80211: Invalid regulatory domain detected:
Mar  4 03:55:41 kernel: [ 1269.508161] cfg80211: Regulatory domain: US
Mar  4 03:55:41 kernel: [ 1269.508185] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp), (dfs_cac_time)
Mar  4 03:55:41 kernel: [ 1269.508218] cfg80211:   (902000 KHz - 2000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
Mar  4 03:55:41 kernel: [ 1269.508510] cfg80211:   (904000 KHz - 16000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
Mar  4 03:55:41 kernel: [ 1269.508563] cfg80211:   (920000 KHz - 8000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
Mar  4 03:55:41 kernel: [ 1269.508592] cfg80211:   (2400000 KHz - 2472000 KHz @ 40000 KHz), (N/A, 3000 mBm), (N/A)

It looks like the parsing of the S1G frequencies failed.  Looking at db.txt there are no spaces around the '-' in the S1G channels.  Has anyone else encountered this issue?

Lawrence 

-----Original Message-----
From: wireless-regdb <wireless-regdb-bounces@lists.infradead.org> On Behalf Of Seth Forshee
Sent: Friday, February 18, 2022 8:05 PM
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [External][wireless-regdb] [ANN] wireless-regdb: master-2022-02-18

[External Sender]

A new release of wireless-regdb (master-2022-02-18) is available at:

https://urldefense.com/v3/__https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.02.18.tar.xz__;!!AlswS5g!weTIoMMWD2O_5SH5Hdv8O5itCnmv238R8WvBqAEGn6E0B8-VTkDb7ZGzoucXyTk$

The short log of changes since the master-2021-08-28 release is below.

Thanks,
Seth

---

Jiaxun Yang (1):
      wireless-regdb: Update regulatory rules for China (CN)

Robert Marko (1):
      wireless-regdb: Update regulatory rules for Croatia (HR) on 6GHz

Romain Izard (1):
      wireless-regdb: Update regulatory rules for France (FR) on 6 and 60 GHz

Seth Forshee (2):
      Revert "wireless-regdb: Update regulatory rules for South Korea (KR)"
      wireless-regdb: update regulatory database based on preceding changes

Sultan Alsawaf (1):
      wireless-regdb: Raise DFS TX power limit to 250 mW (24 dBm) for the US

Sungbo Eo (2):
      wireless-regdb: Update regulatory rules for South Korea (KR)
      wireless-regdb: Update regulatory rules for South Korea (KR)

Thomas Pedersen (2):
      wireless-regdb: add support for US S1G channels
      wireless-regdb: add 802.11ah bands to world regulatory domain

Wilco Baan Hofman (1):
      wireless-regdb: Update regulatory rules for the Netherlands (NL) on 6GHz

Xose Vazquez Perez (1):
      wireless-regdb: Update regulatory rules for Spain (ES) on 6GHz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/wireless-regdb__;!!AlswS5g!weTIoMMWD2O_5SH5Hdv8O5itCnmv238R8WvBqAEGn6E0B8-VTkDb7ZGzzZBpJ1w$

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

