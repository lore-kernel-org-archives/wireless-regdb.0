Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=VU8riE0roqubhmKo4izougQUeC56dFuuwmk19EafrQE=;
 b=UJ5F3lJn6Ht43G
 +QZnBq/xdxfCIq9LzzEnX4zRMiMLDpxAyh920g/7EG3CFv02uLErn94OzwndIvktbCwpIe7o7ltf4
 PYkwJhN0qWDebcO3YaxNkRCXewLY1xg6EVE20YNcI+WmWvgfbYI9+rA6mn6S/aztYQwuFbzFVrpzZ
 JsrH5huHFbFaSqXMJXwlH12xSW4gAliJ6SNMMsVoOpQzOW7KaeWQlNkZpD3bZmOF6J4jdqnjOoa5f
 V1TEZIOsThMcqfe7PzDNtyvRTed8pKtP3Ssum2h+YlU/k0hmQqG6PdtEa/TbPhnK0ak1jp8FSaGbJ
 PQVBwU/UNICQSntbgdBQ==;
Received: from mail-db5eur01on0057.outbound.protection.outlook.com
 ([104.47.2.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9eTk-0006Q9-9W
 for wireless-regdb@lists.infradead.org; Tue, 31 Oct 2017 21:53:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aaudk.onmicrosoft.com;  s=selector1-its-aau-dk;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=siDVNjqDvLuy8PmbYpJVARogshrYqzIMCiRgTTNTJX8=;
 b=OKZkES5Xpm0mRtFAxeOOnSb1n+vKnR1F/GIR03oyfeJxjzOt/xJyfQ0E8uMtFHn5SguWLvqgIapOxLLJz9y3LLDYAPIAOhKyhpgLN4ugi1vXQzrjsWtsUE88FcPtVxCtlbKO1GEXSF0fcctIqfJgZKgVkSDl2zwJTcBCw6pjWUQ=
From: Per Mejdal Rasmussen <pmr@its.aau.dk>
Message-ID: <a2e41843-e5a5-25c6-fd02-47716563155a@its.aau.dk>
Date: Tue, 31 Oct 2017 22:53:18 +0100
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi

I have taken the time research which frequencies and power levels are 
allowed for WiFi in Denmark. So db.txt for wireless-regdb can be updated.


Allowed WiFi frequencies in Denmark for WiFi:
---------------------------------------------
2400,0-2483,5 MHz
5150,0-5350,0 MHz
5470,0-5725,0 MHz
5725,0-5875,0 MHz
57-66 GHz

Source: https://www.retsinformation.dk/Forms/R0710.aspx?id=189932
Search for "RLAN". The website is owned by the Danish government.


Maximum transmission strength and usage
---------------------------------------
2400-2483,5 MHz  ? mW/MHz   100 mW EIRP
5150-5250 MHz   10 mW/MHz   200 mW EIRP    Both in/outdoor allowed
5470-5725 MHz   50 mW/MHz     1 W EIRP     Both in/outdoor allowed
5725-5875 MHz  200 mW/MHz     4 W EIRP     BFWA only, 5795-5815 excluded
5725-5875 MHz    ? mW/MHz    25 mW EIRP    Short range devices
57-66 GHz       20 mW/MHz    10 W EIRP     No fixed outdoor install

DFS is required for 5250-5350, 5470-5725 and because of ETSI EN 301 893
DFS is required for 5725-5875 for BFWA, because of ETSI EN 302 502

Sources:
5GHz: 
https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
60GHz: 
https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
The website is owned by the Danish government.


Outdated content of db.txt:
---------------------------
country DK: DFS-ETSI
     (2402 - 2482 @ 40), (20)
     (5170 - 5250 @ 80), (20), AUTO-BW
     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
     (5490 - 5710 @ 160), (27), DFS
     # 60 GHz band channels 1-4, ref: Etsi En 302 567
     (57000 - 66000 @ 2160), (40)


Suggested fix:
--------------
country DK: DFS-ETSI
     (2400 - 2483.5 @ 40), (20)
     (5150 - 5250 @ 80), (23), AUTO-BW
     (5250 - 5350 @ 80), (23), DFS, AUTO-BW
     (5470 - 5725 @ 160), (30), DFS
     # Short Range Devices (ETSI EN 300 440-1)
     (5725 - 5875 @ 80), (14)
     # Broadband Fixed Wireless Access (ETSI EN 302 502)
     (5725 - 5795 @ 40), (36), PTP_ONLY, DFS
     (5815 - 5875 @ 40), (36), PTP_ONLY, DFS
     # 60 GHz band channels 1-4 (ETSI EN 302 567)
     (57000 - 66000 @ 2160), (40), NO-OUTDOOR



History of WiFi frequencies in Denmark for WiFi:
------------------------------------------------
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

-- 
Per Mejdal Rasmussen
http://personprofil.aau.dk/109070

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

