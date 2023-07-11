Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=IbQL0vR0V5e2wW8Rz4dw6yh+SGqPkBbaskvOEjefrwU=;
 b=fRKg5J45gAtJcH
 KFwUy5azGDAbj7qAWjO6QdNnY6hhK2+S5Exj9TU42pYJ7nCbDyK0zL95hN4KUsppMMuP/GwqqiKb+
 q2lUcEmaOzyj/3x5BAPJmzwEHCGelXgfvCsxCBIXB0EupeP2Xa/dznmtz/RKkrzFqwrEGRNzjK8SC
 Gf9rnnCASNVDybxSTmQ9Xcn6sRderzrhCJRdu4dI6Q8l+S1Gf11VZZu1Qn576Ssv0A3UzL0uYsgY0
 FUFB9t5vPDp+OmBtmClU+K05LWbAyFJev/l5chFkNsPzV9AlKCnJZ8Fec5fvPSFnvIG+Z0xqqAcym
 D/ivG8zUdl1bb4F49pag==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJFrb-00FKwo-2Q
	for wireless-regdb@lists.infradead.org;
	Tue, 11 Jul 2023 16:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689091518;
	bh=NP4RgVFV87HxMbW0g7Ahd5bOmElLDNklKwtzH2Yxe78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kZc5GSphaOjVUxIJfBxs+vZngqxc+zUVuRO6LuuWYpLCtEDKNZnaT7VT6RoUP60Vh
	 nyyVoS9SP6ZNsvMySttBMqGtEe5EqwtirRICVc0ShgqNdh27Ufd6TP11lln8R1BKpI
	 LxCTwiyt5PA7SxlTfsLvdvNxMbn9zshDJhYFCv4LPSBSFeTs3+u99lUC2TzoRPmT9T
	 1tDOMUNsnTD/eVFv5GbsrEaiWpBesvGus5ufpCBmAKgEC6EICaOwst8tKGkGmNToeH
	 /21GC0StC38GNtslZrtV4k1nik8Q6bF6MtmcLrkxQgW8rF2IovFUomg2anavzwqqSL
	 G6Aj47GGSuRQg==
Date: Tue, 11 Jul 2023 11:05:17 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZK19vSLNj7xDmY6h@do-x1extreme>
References: 
	 <CAN=yUYY7nY=NEUp3Y2+RP0V_ekpK7Mn4jp87DuQrqLC60JsVKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN=yUYY7nY=NEUp3Y2+RP0V_ekpK7Mn4jp87DuQrqLC60JsVKw@mail.gmail.com>
Subject: Re: [wireless-regdb] 
 =?utf-8?q?wireless-regdb=3A_Update_for_regulato?=
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
To: Atahan Bostan <ooatahanturan@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 27, 2023 at 05:52:05PM +0300, Atahan Bostan wrote:
> Hi everyone,
> 
> wireless-regdb as it stands currently does not cover 6GHz usage on
> Türkiye. Therefore I did my best effort to provide an updated regdb
> entry for the Türkiye along with correct transmission power values for
> 5GHz bands and it should look like this if I'm not mistaken:

Thanks! I looked at a machine translation of the document and made some
notes below. I may have some mistaken impressions though from less than
ideal translation, so please let me know if anything I've said looks
wrong based on your reading.

> 
> ```
> # According to https://www.btk.gov.tr/frekans-tahsisinden-muaf-telsiz-cihaz-ve-sistemleri
> (Exemption from Frequency Allocation for Wireless Devices and
> Systems).
> # 5725-5875 is SRD usage only
> # Full specifications of all unlicensed frequencies:
> https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
> country TR: DFS-ETSI
>     # 2.4 GHz band, TS EN 300 328
>     (2400 - 2483.5 @ 40), (20)
> 
>     # 5 GHz band, TS EN 301 893
>     (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>     (5250 - 5350 @ 80), (23), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI

This range requires TPC. Since Linux does not support TPC, so the max
EIRP must be reduced to 20 dBm.

>     (5470 - 5725 @ 160), (30), DFS, wmmrule=ETSI

Also a TPC requirement here, so this needs to be reduced to 27 dBm.

>     # SRDs, TS EN 300 440
>     (5725 - 5875 @ 80), (25 mW)
> 
>     # 6 GHz band, TS EN 303 687
>     (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
> 
>     # 60 GHz band, TS EN 302 567
>     (57000 - 71000 @ 2160), (40)
> ```
> 
> Notes:
> 
> - The range 5725-5875 MHz is allowed for unlicensed use for industrial
> purposes up to 1000mW, but not for Wi-Fi specifically, but I put it
> into regdb because it was there for most other European countries as
> well. SRDs, or in Turkish, KET devices, are described according to
> https://www.etsi.org/technologies/short-range-devices

Based on the wording above Table 3 (again I stress this is a translation
so it may not be completely true to the original) I get the impression
that short-range devices for boradband data transmission must comply
with the criteria from Table 3. If this is the case, I think we should
leave 5725-5875 MHz out.

> - There are three different specified output powers for different
> outdoor and indoor use cases for the 60GHZ band in the document but I
> will include the 40 dBm without outdoor limit to align it with other
> European countries and standards.

This is the correct value to use as we have no mechanism to indciate
different rules for different scenarios, therefore we often need to take
the lowest allowed EIRP.

> - In Türkiye, outdoor usage allowed up to 14db, if it can be added,
> add "(5945 - 6425 @ 160), (14), wmmrule=ETSI" there as well, but I
> didn't add there, again, for consistency with other EU countries.

As with 60 GHz, we cannot have multiple rules for different scenarios.
The only options are to do as you've done and use 23 dBm with
NO-OUTDOOR, or else use 14 dBm and remove NO-OUTDOOR.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
