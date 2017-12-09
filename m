Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=ERneEMl/gbxLnx89gcmHizdKwuXdgfeLTcn24W/w77Y=;
 b=dYRsDwRuUIjpTZ0p62o/Qz/IA
 wCkSPT5LazlSUfF05NyyinSW7+P0/BN/PPenMZEkbt+YpEa0qa96Me15H4pJfDAWnjwzrM0Utyjcy
 +qUYEmHIzWt7BPbXloxr32u8siHRoSUdMcJ5BSuHkM3OBGz4cWge0PeqW910uodEekdGRHVcbDuEM
 6Vqddpt5O85lWU0hX2FObrjMKI2LXJR2l1IyA1f1GjtMAKV3RQQ07YAjFXPUtlYlyPvVLJ4iiP4cT
 LVRAOFC1GWTDjjIxyzwg5rRW461bD1+KFJgxBp7AfEW2kCS0WEbk5lI447lMjIPp5fe/E7c8KUZcC
 OQhRFMs/g==;
Received: from mail-db5eur01on0087.outbound.protection.outlook.com
 ([104.47.2.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNl32-0002DY-L3
 for wireless-regdb@lists.infradead.org; Sat, 09 Dec 2017 19:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aaudk.onmicrosoft.com;  s=selector1-its-aau-dk;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=0QvgS3jQw4YY1TAo9ZEcWXfG9if0e8h3/5kA9b+/R+w=;
 b=LrA+uhmAXRgNsTnDiaMGWnEvIXrr1HXB7SXY0/yEHIzTlugTvJDq6HzSeXKApHvUDB3NEwS2aOSQUVSeF7P5jTVa2AcXw1QSHX0ERAUmMyatgUY9U4YvKZWFZrCsWgYxwGoKJRPWfVOMZYXYRI4nLuxarn92YVIg6xbY1aM3Pro=
References: <a2e41843-e5a5-25c6-fd02-47716563155a@its.aau.dk>
 <20171203165135.GA31669@ubuntu-xps13>
From: Per Mejdal Rasmussen <pmr@its.aau.dk>
Message-ID: <e2e75443-3ae3-8481-c2ed-96c4fac02706@its.aau.dk>
Date: Sat, 9 Dec 2017 20:43:59 +0100
MIME-Version: 1.0
In-Reply-To: <20171203165135.GA31669@ubuntu-xps13>
Content-Language: en-US
Subject: Re: [wireless-regdb] Update regulatory rules for Denmark (DK) on
 2.4 and 5GHz
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi, thanks for taking your time to look at this. If you apply the text 
below for Denmark to db.txt, then it is an improvement:

country DK: DFS-ETSI
(2400 - 2483.5 @ 40), (20)
(5150 - 5250 @ 80), (23), AUTO-BW
(5250 - 5350 @ 80), (20), DFS, AUTO-BW
(5470 - 5725 @ 160), (27), DFS
# 60 GHz band channels 1-4 (ETSI EN 302 567)
(57000 - 66000 @ 2160), (40), NO-OUTDOOR

But I do think that Denmark has implemented "Short Range Devices (ETSI 
EN 300 440-1)".

source:
https://www.erodocdb.dk/docs/doc98/official/pdf/rec7003e.pdf
(source is down at the moment, I have a copy of it on my work PC. I will 
send it on Monday)



On 03-12-2017 17:51, Seth Forshee wrote:
> On Tue, Oct 31, 2017 at 10:53:18PM +0100, Per Mejdal Rasmussen wrote:
>> Hi
>>
>> I have taken the time research which frequencies and power levels are
>> allowed for WiFi in Denmark. So db.txt for wireless-regdb can be updated.
> 
> Thanks for this information, and apologies for taking so long to review
> this. A few comments.
> 
>> Allowed WiFi frequencies in Denmark for WiFi:
>> ---------------------------------------------
>> 2400,0-2483,5 MHz
>> 5150,0-5350,0 MHz
>> 5470,0-5725,0 MHz
>> 5725,0-5875,0 MHz
>> 57-66 GHz
>>
>> Source: https://www.retsinformation.dk/Forms/R0710.aspx?id=189932
>> Search for "RLAN". The website is owned by the Danish government.
>>
>>
>> Maximum transmission strength and usage
>> ---------------------------------------
>> 2400-2483,5 MHz  ? mW/MHz   100 mW EIRP
>> 5150-5250 MHz   10 mW/MHz   200 mW EIRP    Both in/outdoor allowed
>> 5470-5725 MHz   50 mW/MHz     1 W EIRP     Both in/outdoor allowed
>> 5725-5875 MHz  200 mW/MHz     4 W EIRP     BFWA only, 5795-5815 excluded
>> 5725-5875 MHz    ? mW/MHz    25 mW EIRP    Short range devices
>> 57-66 GHz       20 mW/MHz    10 W EIRP     No fixed outdoor install
>>
>> DFS is required for 5250-5350, 5470-5725 and because of ETSI EN 301 893
>> DFS is required for 5725-5875 for BFWA, because of ETSI EN 302 502
>>
>> Sources:
>> 5GHz: https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
>> 60GHz:
>> https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
>> The website is owned by the Danish government.
>>
>>
>> Outdated content of db.txt:
>> ---------------------------
>> country DK: DFS-ETSI
>>      (2402 - 2482 @ 40), (20)
>>      (5170 - 5250 @ 80), (20), AUTO-BW
>>      (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>>      (5490 - 5710 @ 160), (27), DFS
>>      # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>      (57000 - 66000 @ 2160), (40)
>>
>>
>> Suggested fix:
>> --------------
>> country DK: DFS-ETSI
>>      (2400 - 2483.5 @ 40), (20)
>>      (5150 - 5250 @ 80), (23), AUTO-BW
> 
> Based on the translation of the document, I think this is fine.
> 
>>      (5250 - 5350 @ 80), (23), DFS, AUTO-BW
> 
> I believe this range requires TPC, which we don't support. So based on
> ETSI EN 301 893 the maximum allowed without TPC is 20 dBm, i.e. what's
> is what's currently in the database.
> 
>>      (5470 - 5725 @ 160), (30), DFS
> 
> Again this requires TPC, so based on ETSI EN 301 893 this has to remain
> at 27 dBm.
> 
>>      # Short Range Devices (ETSI EN 300 440-1)
>>      (5725 - 5875 @ 80), (14)
> 
> The document you linked to only specifies this range being usable for
> fixed wireless access, so I don't think it belongs in the database.
> 
>>      # Broadband Fixed Wireless Access (ETSI EN 302 502)
>>      (5725 - 5795 @ 40), (36), PTP_ONLY, DFS
>>      (5815 - 5875 @ 40), (36), PTP_ONLY, DFS
> 
> I'm not sure we should add this ... on the one hand I'm not certain
> whether or not it's meant to apply to fixed wireless access or other P2P
> sorts of connections, and on the other hand the kernel doesn't appear to
> do anything different if this flag is set. So I think it's not going to
> be safe to add these rules.
> 
>>      # 60 GHz band channels 1-4 (ETSI EN 302 567)
>>      (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> 
> This one looks okay.
> 
> Thanks,
> Seth
> 


-- 
Per Mejdal Rasmussen
http://personprofil.aau.dk/109070

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

