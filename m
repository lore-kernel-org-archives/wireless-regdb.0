Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=0pXuQjmpTBqDcf9xqWkfelIoBePZQnc6D+/VMNS2B9o=;
 b=D1b
 du62uxRaSFF2GyDTLGv813AxZajwlSI1IzqyCyzVnZRsu0yzdLl3NUwivqP2MQu5x50AeFbge3A9m
 9E+6J45BaYzQfx0gfVBCO1rY5j60Fk/fDUFS+YvwckkjZ6dqG/UZk/zfHBOsOFlMGOCbf+4XOibT3
 UXMs6qyJsnXK9V86wsKuqg0gpQaZIV0Q9Zjdj1qVPItV4cpmjrXME+RHeCx8ehOsCyLuOY+etNpKL
 RM1DWgXvleqf0eFoo8AErRaCbJ8CM2LP8S5Gxihe2WJO/OCWn4KFIOXUDlSI0Z6bcj29e7tP/POpd
 FwWp+WNB7JP97tTQxRuBUUYO1wVQrpQ==;
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEA3h-00DQoB-2C
	for wireless-regdb@lists.infradead.org;
	Tue, 27 Jun 2023 14:52:47 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-26307d808a4so1125652a91.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 27 Jun 2023 07:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20221208; t=1687877563; x=1690469563;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pbggdALUm82t0La70QhMqTY00W9nZK4H6t+OCLPvr14=;
 b=pxdnYf6sLJ9NFGZZxISbmHoND8jpdKz64aoMGKl9OfMlQXQ+AEatOI1hAGgWvk3P/z
 VZvEmWYf3BAwaYi5+R9R5UiMQRW/LkPFjFW5J2Z3GC4OWFF/pUYppXLdrP+MNkZIfafr
 o9/PUoUR6++FDAofjtZ/jBPK7PGzlt8tu9XCv0xo1TlEYuXbOX4qH41knJInfbyjMRr4
 IrjuETCNvtja4yofYL79IpcdfTl2QmOMqE0eITyQqYs1jKFJnum9hFbdSU5hBk8Vpq63
 vkpLzMCHHMrfIFIKq49sZUC6BmWVANpvNHgykHibTzcbUfaCZ1xMAA/PDX74VkGOx4yZ eKLA==
MIME-Version: 1.0
From: Atahan Bostan <ooatahanturan@gmail.com>
Date: Tue, 27 Jun 2023 17:52:05 +0300
Message-ID: <CAN=yUYY7nY=NEUp3Y2+RP0V_ekpK7Mn4jp87DuQrqLC60JsVKw@mail.gmail.com>
Subject: [wireless-regdb] =?utf-8?q?wireless-regdb=3A_Update_for_regulato?=
	=?utf-8?q?ry_info_for_T=C3=BCrkiye_=28TR=29_on_6GHz?=
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi everyone,

wireless-regdb as it stands currently does not cover 6GHz usage on
Türkiye. Therefore I did my best effort to provide an updated regdb
entry for the Türkiye along with correct transmission power values for
5GHz bands and it should look like this if I'm not mistaken:

```
# According to https://www.btk.gov.tr/frekans-tahsisinden-muaf-telsiz-cihaz-ve-sistemleri
(Exemption from Frequency Allocation for Wireless Devices and
Systems).
# 5725-5875 is SRD usage only
# Full specifications of all unlicensed frequencies:
https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
country TR: DFS-ETSI
    # 2.4 GHz band, TS EN 300 328
    (2400 - 2483.5 @ 40), (20)

    # 5 GHz band, TS EN 301 893
    (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
    (5250 - 5350 @ 80), (23), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
    (5470 - 5725 @ 160), (30), DFS, wmmrule=ETSI

    # SRDs, TS EN 300 440
    (5725 - 5875 @ 80), (25 mW)

    # 6 GHz band, TS EN 303 687
    (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI

    # 60 GHz band, TS EN 302 567
    (57000 - 71000 @ 2160), (40)
```

Notes:

- The range 5725-5875 MHz is allowed for unlicensed use for industrial
purposes up to 1000mW, but not for Wi-Fi specifically, but I put it
into regdb because it was there for most other European countries as
well. SRDs, or in Turkish, KET devices, are described according to
https://www.etsi.org/technologies/short-range-devices
- There are three different specified output powers for different
outdoor and indoor use cases for the 60GHZ band in the document but I
will include the 40 dBm without outdoor limit to align it with other
European countries and standards.
- In Türkiye, outdoor usage allowed up to 14db, if it can be added,
add "(5945 - 6425 @ 160), (14), wmmrule=ETSI" there as well, but I
didn't add there, again, for consistency with other EU countries.

Please double check the formatting before merging or anything, just in case.

Thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
