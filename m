Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DBC8C52D7B
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 05:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Subject:References:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0/QpVTn6ZIGXHyFAts7w8iY12Sl93F93ovf0uhUOmGo=; b=xUfyy3Jxmo23VuBB1fMRk4sbpv
	vFOtp6zceZI8PP6gvXwx89Y61dXv8LhwxKsogy46InkaRIELP2a6UvHNpcDwBS+m8M7jq5O4P8EbB
	zZ60SzvlMUNMtEidB3UhbmLnUlFcNNTlbgDq2vatfCoNabJLIwM2rpbar3ss78+ikcUeNotZaboqp
	+VJgyRmhyxC+vjdUCpJ9BB8IJ44fwQJU5+8OpWDyu/rDLvEqN3SNj3TzhYsDByP3bd0E9ww6W9QCm
	n22L79U5580XgzI8LA14gDq8E/Q8TLu90VzqbzYvgEv3pD/gKGM3X8/FaKAB9AUJU6gDTsQqFmA4e
	FxdoACQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdk5G-00000002SAd-09BY;
	Tue, 13 Aug 2024 05:28:38 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdjMq-00000002MGY-2WgX
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 04:42:46 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7c3ebba7fbbso1287387a12.1
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 21:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723524163; x=1724128963; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/QpVTn6ZIGXHyFAts7w8iY12Sl93F93ovf0uhUOmGo=;
        b=koRTDO7PR2RKzA5NISmpE2C+Q42VVgO2BksSw3tCXKUjmq8+NQmAwrGrqJaBsYPleB
         +eGHUdmDwqkTERgVLasdxi4UK6/S01rpJecU11I3BC4EYjLytcy1/zgK7itd1cKG9gWI
         Camf7V+4TXHJqO+moOuuUdPyzjAn4HJSjbTU9JplJhdEBnAkIGJfTPXPcn3VOZyuJOk4
         6OanpLaz78JtDOSC+S9+zZX0OWKRVll7mHMXVcxKeIPOkkihKXKo1RRaisAK+yC4ABvH
         Un7t19ugaYw7A8ZQ/EneICIWsC7od1F0PAjynuNyYzrpFE1KeZ5NV4Biw78nk7FmQJAP
         2p2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723524163; x=1724128963;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0/QpVTn6ZIGXHyFAts7w8iY12Sl93F93ovf0uhUOmGo=;
        b=VE5tHudCppYkzZdrhoCbv7EpJxyVRNtAmjapKRKrptsuHM/avJGtVu/UC5dm5iFb6O
         JYIq03ByEUvEBsGPlJYZFaN82R9vN3vJroTi5SPtDsDs360mDo/BTgzEky61buJdBICB
         Ur5XQxTIAIAFyHYXeADcyKhFrAwf0JpCOv3D50iH5Y02mpEMqdonNr5xMLYGXK7hDf2O
         dRABF7NMef2RCnESBma41kQ73dWDXE/0ZH9HIWYt2W1ciPDX1zM5AnNHhM8KsNe40c5c
         ca3Bf51Kp8q9ii9px5VsbCJrlN+LQYQAyCrfDXJ5g2gCAoheVi5Yby4MlZ8MOd3sd6os
         8e7g==
X-Gm-Message-State: AOJu0Yz2z4y1ZWOKxE/3l9nte6wKfU3/oAxpyG0dol7/BmPLE1FMS03B
	vRhCbO4sqlhvIiMc2phPnREQHz5ORNArw03JGRYP6oDxSwEZKlX5omPh+oXiXeo=
X-Google-Smtp-Source: AGHT+IGvuQaiRvQ0ULxrzd8Icl0f6QdjWPnykeuCsb/mWryGsBbeV+MTnTZ7ySHcQHlaydXUTRI3hg==
X-Received: by 2002:a05:6a21:10a:b0:1c3:a760:9757 with SMTP id adf61e73a8af0-1c8d75eb607mr2817208637.49.1723524163330;
        Mon, 12 Aug 2024 21:42:43 -0700 (PDT)
Received: from [10.10.10.181] ([49.146.143.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d1c9c5e64fsm9460471a91.0.2024.08.12.21.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 21:42:42 -0700 (PDT)
Message-ID: <3304fc0c-04fc-4874-842c-12294cc647c1@gmail.com>
Date: Tue, 13 Aug 2024 12:42:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: gcperfinian@up.edu.ph
Cc: wireless-regdb@lists.infradead.org
References: <CAJ5pLOZ-LfP8_ZNeh63_C8LNcx9kwK97AAa6gYQSQ+ge21Qydw@mail.gmail.com>
Subject: Re: wireless-regdb: Discussion of MGWS/60GHz rules for Philippines
 (PH)
Content-Language: en-US
From: Kleo Bercero <kbeflo@gmail.com>
In-Reply-To: <CAJ5pLOZ-LfP8_ZNeh63_C8LNcx9kwK97AAa6gYQSQ+ge21Qydw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_214244_672471_56C6A40C 
X-CRM114-Status: GOOD (  24.96  )
X-Mailman-Approved-At: Mon, 12 Aug 2024 22:28:37 -0700
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Good day!

Providing context for specifying 24 dBm for 57-66GHz.

Please kindly reconfirm and maybe ask NTC to create a power limit on paper.

Thanks!

Kleo Bercero

---

Date: Wed, 24 May 2023 10:59:38 -0500
From: sforshee <sforshee@kernel.org>
To: Kleo Bercero <kbeflo@gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Philippines (PH)

On Mon, May 22, 2023 at 06:41:49PM +0800, Kleo Bercero wrote:
 > Good day,
 >
 > I have amended the previous patch. Please review before I submit the 
patch.
 >
 > I have decided to remove the 915-918 frequency range as previous 
memorandum
 > circulars fail to provide citation for power specifications and also 
I have
 > found it to be the only entry with this frequency range on 
wireless-regdb.
 >
 > For channel bandwidths NTC's memorandum circulars does not specify 
channel
 > bandwidth except for 57-66GHz.
 >
 > For 57-66GHz I have contacted the local officials for this frequency 
range
 > and they have responded with:
 >
 > On Wed, Jan 11, 2023 at 4:06 PM NTC spectrum <spectrum@ntc.gov.ph> wrote:
 >
 > > Good day! The power output for 57-66 GHz ( M.C. No. 01-01-2016) is 250
 > > milliwatts ( indoor only)
 > >
 >
 > Upon reading the cited document it does not mention anything regarding
 > operating power specification (it does cite ITU-R M.2003-1 but it 
does not
 > lead to any power specs). I'm not optimistic if I could provide any more
 > document regarding this frequency range other than citing their reply.

Okay. It would be nice to cite an official document, but I'm content
with using the value provided by the local officials.

 > Power output is derived from MC 03-05-2007 on the following frequencies
 > with mW eirp specifications
 >
 > 2400 - 2483.5 MHz (100 mW eirp)
 > 5150 - 5350 MHz ( 200 mW eirp)
 > 5470 - 5850 MHz ( 250 mW eirp)

---

From: NTC spectrum <spectrum@ntc.gov.ph>
Date: Tue, 10 Jan 2023 08:41:16 +0800
Subject: Re: wireless-regdb patch
To: kleo <kleo@hak.dog>

Good day! The power output for 57-66 GHz ( M.C. No. 01-01-2016) is 250
milliwatts ( indoor only)

On Mon, Dec 26, 2022 at 1:41 AM kleo <kleo@hak.dog> wrote:

 > Good day,
 >
 > I would like to reach out to NTC for help to update our entries on
 > wireless-regdb (is a regulatory database used by Linux) found at
 > kernel.org, more info can be found at
 > https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb.
 >
 > We would like to submit patches for our country's entry found at
 > 
https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.g=
it/tree/db.txt?id=3DHEAD#n1370.
 > You can also find other countries' entries there.
 >
 > Here is our current entry.
 >
 > country PH: DFS-FCC
 >         (2402 - 2482 @ 40), (20)
 >         (5170 - 5250 @ 80), (17), AUTO-BW
 >         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
 >         (5490 - 5730 @ 160), (24), DFS
 >         (5735 - 5835 @ 80), (30)
 >
 > On gathering the required memorandums and additional information the
 > following is our proposed patch
 >
 > # Source:
 > #
 > 
https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCi=
rculars/MC2007/MC-03-05-2007.pdf
 > # https://ntc.gov.ph/wp-content/uploads/2020/02/MC-01-02-2020.pdf
 > #
 > 
https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCi=
rculars/MC2003/MC-09-09-2003.pdf
 > country PH: DFS-FCC
 >     # reference: page 99, 890 MHz =E2=80=93 1300 MHz
 > 
https://ntc.gov.ph/wp-content/uploads/2022/frequencyallocations/NRFAT_Rev=
_2020.pdf
 >     # reference: section 1.1 and 3.1, no power specification
 > 
https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCi=
rculars/MC2013/MC-03-08-2013.pdf
 >     (915 - 918 @ 2), (30)
 >     # reference: section 1.1 and 3.1
 > 
https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCi=
rculars/MC2013/MC-03-08-2013.pdf
 >     (2400 - 2483.5 @ 40), (24)
 >     (5150 - 5250 @ 80), (24), AUTO-BW
 >     (5250 - 5350 @ 80), (24), DFS, AUTO-BW
 >     (5470 - 5730 @ 160), (24), DFS
 >     (5730 - 5850 @ 80), (30)
 >     # reference: operating parameters,no power specification
 > 
https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-201=
6.pdf
 >     (57000 - 66000 @ 2160), (40)
 >
 >
 > We are currently missing power specifications reference for (915 - 918 @
 > 2), (30) and (57000 - 66000 @ 2160), (40). The maintainer requires us to
 > submit referenced memorandum for the patch.
 >
 > Any corrections for the patch are welcome.
 >
 > Thank you!
 >
 > Kleo Bercero
 > kbeflo@gmail.com /
 > kleo@hak.dog
 > https://github.com/kleo
 >
 >
 >
 >

