Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:CC
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=jFCNY9P/3Y6FrWj78ao0yR7N2PS9AHx9PgdjSlJkyH8=;
 b=otiAZUvNEvT99s
 ynzTkI9qDoSPkT8G99AIwB69UGxRUbAbHDLi4yurJyMOXY/gBnrsH2PvLdQUhpdfJmZsX0O5CW5iT
 Pkqrjvd9cv/cxgk9BE2ZUAH4Auxo//2tmyzhMPr3vjmPd6fpSCXd0zebg+lj2kpBAeiCWP0AOe5xw
 5w1ibMwo2D+twoyzuYNOOl/G4k9KSmqL3bHiUSsvYbaWRccawPfowkDWLlzPPmDEbPSiQiFXQmT7K
 PGvrs4gXlY9KREPJBZEZJ3U1Z0zBXCVPq39t3BRBFJhUWFuZe0EMJoV/xLFGAkAISYuR0wRUR6ILl
 ciDuDmQbvB5ZfF2bAKcg==;
Received: from mail-bn8nam12acsn20806.outbound.protection.outlook.com
 ([2a01:111:f400:fe5b::806]
 helo=NAM12-BN8-obe.outbound.protection.outlook.com) by
 bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux)) id
 1piQhw-009YYt-1E for wireless-regdb@lists.infradead.org; Sat, 01 Apr 2023
 02:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RORkSRvfnScOtJWgo3H8wMM6n4sL7l8ZWbmIcRuDuHo=;
 b=BwkPgJT1oX9m9WcZBllNkk5BQPV62QsQcNCeqlyglP2a6uOQqmGS5hulsyndtmwx40u0AUebRAsBRTx6Ika8spYszByvd6CLpTaw8UPXFu/GlInBd1elyjU5cfbjBVI/J2YmkMZlHnKuTHu+/reTSgxrdWDH5yk2E1GshHjrlqihGOrqs5YnRnpSjKAaj+MxJZ3/qS6LKYSgxMqYdo34+vhP+/nbGcFu9NTxSXTiHJkVHpOciAYWZEReTmEP4RgZQWRa0y/Ov66BeTGyS54Lat8NRki3Dy28BdpP7Wx8ArOT02x3LAXxgfD9Blk89O5xjTINeyuaTNN7zVJC/019jA==
From: Eric Sellman <GAK_ACTION@live.com>
Date: Sat, 1 Apr 2023 02:11:04 +0000
Message-ID: <SJ0PR22MB2495707E5FC7EF2334A699BC8F8C9@SJ0PR22MB2495.namprd22.prod.outlook.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 canada on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: "sforshee@kernel.org" <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

I would like to submit a correction to the wireless regulatory database for=
 canada.=20

https://ised-isde.canada.ca/site/spectrum-management-telecommunications/en/=
devices-and-equipment/radio-equipment-standards/radio-standards-specificati=
ons-rss/rss-247-digital-transmission-systems-dtss-frequency-hopping-systems=
-fhss-and-licence-exempt-local#s6

"6.2.3 Frequency bands 5470-5600 MHz and5650-5725 MHz

Until further notice, devices subject to this section shall not be capable =
of transmitting in the band 5600-5650 MHz. This restriction is for the prot=
ection of Environment Canada=92s weather radars operating in this band."

https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git=
/tree/db.txt#n326

Lines 330 and 331 have frequencies 5600mhz to 5650mhz and therefore need to=
 be modified to have those frequencies removed.
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

