Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:CC
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=HEb2HBqcUFTObQAjzjQWHg+NIzB3MAtClvi77alwmCQ=;
 b=iGgpvFLdims9RX
 Sre1GNw0T3tB2y5zQjeMib/Q8m3aJlp2H9q68iS9xpnjZEexazF+PHOnJzoqWBbbEAEqhA2R+Odoa
 H6x269injtyAz2bJTjsmmUOcvtlUOybWVHMu6IPQKmpncmTsUhVOLRwhEUVti59AL/mIUK2KXbXJt
 pw5WH1VgpIYAaCmNJDzydeqIoaXip4ga19JpyYAyhOnsbDIoJgsFWiqNjTGpyDSuBFEYVfSzMrbd1
 sce/dQVgsegYRYOpqTRlyWKHyQBrSkUgff4JWHbgGqXypeUOE5J6h4sOX+8oFsn/mQK0lTG0XYqM5
 2IhZk09tjMtuXO2Yd67w==;
Received: from mail-dm6nam10olkn2080f.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::80f]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com) by
 bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux)) id
 1piWZc-00A1c3-1v for wireless-regdb@lists.infradead.org; Sat, 01 Apr 2023
 08:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=31LyEhtw+FlBwF0afwQghMzuGKy1irpWiKxhi8lfCbE=;
 b=QumQ3EBJdf5o0gT4uQmZJgPFnw5KGHjA8MvupnC9fEt7qKOGEdsQenSbvZNX1RRSDq2pvUDEqgjoRQaORmkqpLAmKLPCCoA08BeebKpQNl/+Gcir6h2p0zV9dLc1RDV1/O1ln1JXM3XssmYo5KGeypEcigGFOZhxDmx0fgNGvFeegc/4aDprBST3HcR4Aakh2Q6kJWDCqFIaod82MArf5+aXMAGGpb1dVPe+2beWoB3eeK3MgR87vXHZ0MfO4UJad9usC6rYtYw26IKGiUlzbZ+CGrjUNRLZlkmGPqs3GecA8YGzFxs7tOAawf7nd2J7lLOXmTCeKl3fgo5F7jttIg==
From: Eric Sellman <GAK_ACTION@live.com>
Date: Sat, 1 Apr 2023 08:26:51 +0000
Message-ID: <SJ0PR22MB249501047C8F6F51CCB9D06A8F8C9@SJ0PR22MB2495.namprd22.prod.outlook.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Canada on 5GHz
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
To: "sforshee@kernel.org" <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

My apologies but I have made a mistake.

My previous submission about Canada is invalid. The weather frequency range has already been avoided.

Here is the correct information I meant to share with you.

https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6

"Devices with occupied bandwidths which overlap different bands shall comply with all operational requirements for each band."

https://semfionetworks.com/blog/5ghz-regulations-in-canada-2018-update/

Canada still permits the lower 5ghz frequencies to be used for VHT 160. But it's missing according to the information for the Canadian profile in line 326

https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt#n326.

And I wanted to mention that for 5150 - 5250 on line 328, the transmit power has been increased to 1 watt or "30 dBm" according to this document here.

https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11294.html
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

