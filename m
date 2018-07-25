Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=F9R9hgwCw2e9gbzC+fNS/03wx5ILkPoD3zyUGnTej5w=;
 b=GaMmFLXF/6Obhw
 CNrSy/y/tKdzxwuJVozuCdyzC09dd8tstHMiNhy5KfD9tryxRMPSLnY7MFM6wwjan5pLywRIJxx49
 sHmJeXqiA7JdvCRzgZ3p9onCHEM/Ng7YJzJlHIGcYJeIXEsmwEDVaxReE50Wbs4O8RQrO3C9y0/De
 eQYTpeIg/QFQ41RhJbWizdqlrNlaRuL3dJ4p2ig6Xz1VETbrbUxkmgHDSXhi856Xdh5eSouf6aXFY
 l1siaDHU3AxfnJQ6s9WkGmxBkJ9OxF02ZuoZbFWcO8AFXQC82saXjNH/HizpoxKruJOMd7eBh9ELe
 dqaQkf1cHVHZhrIf6HvA==;
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiEID-0004L1-EC
 for wireless-regdb@lists.infradead.org; Wed, 25 Jul 2018 07:33:07 +0000
Received: by mail-qk0-x242.google.com with SMTP id 26-v6so4286244qks.9 for
 <wireless-regdb@lists.infradead.org>; Wed, 25 Jul 2018 00:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=AP99inFJJx7ugPNrmDg5+071JKfRnS2bNINCjcld7+M=;
 b=crF2yrqJhx/aubXMdMcTVmK/sy8r+Vx1IvLvKwVd+U7z/X0uVedUpZBCS8AchUnj5a
 1aCqE+Z0ScAxvBGfF374ksMONq6xxeLpnqs/8yuXEXNFjoOtN0z6aYHbYgYzFB1oSPbB
 f/fjLfrfsL9MP7GcKq3e9SwqqmzWRD/iNj+pt3A8cOFswUAeNl1Hqzp8qEBoxDgtz8ln
 fK3mXjPv40X26x6hJPC5aFp8jSj1HjzO2oAxNxfcRQWgPhsRhSCTO+JD02s50umzfpej
 I8mMeBldwLszPZVkhcU3sRVQDJry2+X1i/gXbYMl82y2EGABj8kYkXo5D9qLQBydIooP Vjug==
MIME-Version: 1.0
In-Reply-To: <20180724205057.GD3636@ubuntu-xps13>
References: <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
 <20180724205057.GD3636@ubuntu-xps13>
From: bkil <bkil.hu+Aq@gmail.com>
Date: Wed, 25 Jul 2018 09:32:33 +0200
Message-ID: <CAPuHQ=EQqkJCnM1aKrDYnTJTw3RXU2HvO_BX+eU4tQfpyPBgHQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update rules for
 Hungary (HU) on 2.4/5/60G, 5725-5875MHz
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Yes, sorry, I noticed it later on, but wanted to wait for comments
before resending. I will do that later today. Thank you for the
review.

Regards

On Tue, Jul 24, 2018 at 10:50 PM, Seth Forshee
<seth.forshee@canonical.com> wrote:
> On Sat, Jun 30, 2018 at 10:40:34PM +0200, bkil wrote:
>> * 2400-2483.5M: extend bounds
>> * 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB
>> * 5250-5350M: extend bounds, add NO-OUTDOOR
>> * 5470-5725M: extend bounds
>> * 5725-5875M: introduce, as EU SRD provisions have been implemented
>> * 57-66G: add NO-OUTDOOR
>>
>> Freely available online references have been added hosted by the regulatory
>> body in Hungary, the National Media and Infocommunications Authority.
>>
>> To refer to a specific section, you can grep for the frequency in question.
>>
>> Translation key:
>> "Csak beltéri" / "Épületen belüli használatra korlátozott" = indoor only;
>> "Kültéri és beltéri" = both indoor and outdoor;
>> "Nem működő TPC esetén a maximális teljesítményjellemzők 3 dB-lel
>> csökkennek." = reduce max power specs by 3dB in case of no TPC;
>> "Rögzített kültéri telepítés nem megengedett" = no fixed outdoor install
>>
>> Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
>
> Apologies, I had started reviewing this a while back, but got distracted
> and forgot to come back to it.
>
> The changes look okay as far as I can tell. However the patch itself
> seems to be corrupt -- one line is wrapped, and there are whitespace
> problems. This is probably due to your mail client, I suggest using
> git-send-email.
>
> Can you try re-sending?
>
> Thanks,
> Seth
>
>> ---
>>  db.txt | 23 +++++++++++++++++------
>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index 8963c01..cadfe77 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -581,13 +581,24 @@ country HT: DFS-FCC
>>   (5490 - 5730 @ 160), (24), DFS
>>   (5735 - 5835 @ 80), (30)
>>
>> +# http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
>> +# http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
>> +# http://nmhh.hu/dokumentum/319/kis_hatotavolsagu_eszkozok_srdk.pdf
>>  country HU: DFS-ETSI
>> - (2402 - 2482 @ 40), (20)
>> - (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
>> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
>> - (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
>> - # 60 GHz band channels 1-4, ref: Etsi En 302 567
>> - (57000 - 66000 @ 2160), (40)
>> + # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 300 328
>> + # additionally: 100mW @ 10MHz channels, 50mW @ 5MHz (max. 10mW/MHz)
>> + (2400 - 2483.5 @ 40), (20)
>> + # ref: 2005/513/EK
>> + # note: TPC not needed @ 5150-5250
>> + (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>> + # note: max would be +3dB with TPC @ 5250-5725
>> + (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>> + (5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
>> + # ref: Short Range Devices (SRD) - 2006/771/EK, (EU) 2017/1483, MSZ
>> EN 300 440, MSZ EN 302 064
>> + (5725 - 5875 @ 80), (25 mW)
>> + # 60 GHz band channels 1-4, "Fixed outdoor installation not allowed"
>> + # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 302 567
>> + (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>>
>>  country ID: DFS-JP
>>   # ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
>> --
>> 2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
