Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1D6C5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 04:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlRZmoEV8CCDr9wqCJr7LQfTPfG90oTlv1FQ7SOTSig=; b=j68TKMAo2z4f9i
	ciwz/u2kHmuwWQF2bM2qRVN303QA7T6cytBsdIhr5ZGvjvSOjsfn4Arxv+OCodJY7JzpiNCCzDYOJ
	RffOU/fGQ4Pz3sUpiGgVAe5lGEbf2k/SdnPUFv+GhOsb6RLjGwiABZDfEPiU/IxyzzQRAXHttcvLo
	gHRNkwbGZCs9xpooTRPfmHnyt+96eJRbkN6dmzxWEgRJbDzqLQYuPO1/5CcAN+QihmfIZHNZwVpdl
	XIFCZmwyY/uEp352VLoCy4e6u/7lJepJZbu8aZDdSn6RozPtoxyPuBWSAbfYWaeZBxo+7qg5UrfwM
	Kp1UuBh8Uw0MQrkLFpSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMQo-0000000FucX-38jS;
	Mon, 24 Aug 2026 04:37:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMQn-0000000FucR-2PMy
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 04:37:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 000FD600AD
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0121F000E9
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787546226;
	bh=ZlRZmoEV8CCDr9wqCJr7LQfTPfG90oTlv1FQ7SOTSig=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=CXo7PIHD5AY16ItO0n1oDxOHu+HOKLn8Wp0Dh4YhYIxi+cccR5Paqqf41unURXgvY
	 Uq2yWJAVaPqy9GDzkqXlnv5wos6sGtJd9hMV8oD6BsRpE0D2hM5NCNEQpVuP0KJREi
	 ovVy/obd4cfVFdrOJ3wxkhyNhdWuw5sOQvqvP2AAh7C3WO58ZzRTpdn19Wqyl0bFxg
	 L4tceeWRNBqV44vrEZLQuFgdSGfN+CqSBG/nBqkZ9/M/JRqquEurmrT2xtAELD165p
	 Dr+hITrVQiEW2iDT9TiyW9c/iJeSkbzFpc9Y1K54mkruIXaNvSXA4FAjsJFHEpWxyZ
	 g+F27yA30u/vw==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-39c8e65e3f5so25478731fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 23 Aug 2026 21:37:06 -0700 (PDT)
X-Gm-Message-State: AFuF++nPxrZEkYiqjHc/cBRmL5Lkq2YDd0CjsgnGmSRPZdwfCrcwH4UV
	++Eclrn5BhayTyAeyffY08xeL8XKNDIZi7Hhrc/OdcfzKQH7YKMcMYptjMoVpGxxtx7QYkCbjPo
	33qd2O8l+fkYMlFJawn9Vwlhj+A8BYT8=
X-Received: by 2002:a05:651c:a386:10b0:39c:624d:82b9 with SMTP id
 38308e7fff4ca-3a1aebc80e4mr37497911fa.4.1787546225110; Sun, 23 Aug 2026
 21:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsebg5EyxQjqQVm0KQHtx=0f8-mvhPSdsvJFOGEPCFU3H=Y0g@mail.gmail.com>
In-Reply-To: <CAPsebg5EyxQjqQVm0KQHtx=0f8-mvhPSdsvJFOGEPCFU3H=Y0g@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 12:36:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v67O-WqXdA9W-YTV-q9mKz23G3-eFNRJSoVGn07TSXF-hQ@mail.gmail.com>
X-Gm-Features: AcwNN1ULRcLQKbwPRdS7gYWaGjqkYlCf5YwD0qxtvVhevHtLNv0aJadB_Qml_jk
Message-ID: <CAGb2v67O-WqXdA9W-YTV-q9mKz23G3-eFNRJSoVGn07TSXF-hQ@mail.gmail.com>
Subject: Re: country BD (Bangladesh) entry: update to current BTRC allocations
 (2.4/5/6 GHz)
To: Nahid Hasan <nahidhasan12391@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi,

On Fri, Aug 21, 2026 at 5:08=E2=80=AFAM Nahid Hasan <nahidhasan12391@gmail.=
com> wrote:
>
> Hello,
>
> I would like to propose an update to the "country BD" entry in the
> wireless-regdb database. The current entry only allows 2.4 GHz and a
> narrow slice of the 5.7 GHz band, while the regulator (BTRC, Bangladesh
> Telecommunication Regulatory Commission) has since approved much wider
> allocations. This outdated entry means that smartphones sold in
> Bangladesh (SIM MCC 470) cannot see or use 5 GHz channels 36-144 or any
> 6 GHz channel, even though these are officially permitted.
>
> Current entry (db.txt, line 224 as of wireless-regdb 2026-xx-xx):
>
> country BD: DFS-JP
> (2402 - 2482 @ 40), (20)
> (5735 - 5835 @ 80), (30)
>
> Proposed replacement, based on the regulator's National Frequency
> Allocation Plan and the BTRC circular dated 15 September 2024 which
> approved 5925-6425 MHz for unlicensed Wi-Fi/IoT/WLAN use:
>
> country BD: DFS-JP
> (2402 - 2482 @ 40), (20)
> (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> (5725 - 5850 @ 80), (30)
> (5925 - 6425 @ 160), (23)
>
> Justification for each block:
>
> 1) 2.4 GHz (2402 - 2482 @ 40), (20)
> No change; matches the long-standing SRD/ISM allocation of 2400-2483.5
> MHz.
>
> 2) 5150 - 5350 MHz (channels 36-64), (20) dBm, NO-OUTDOOR, AUTO-BW
> Allocated in the Bangladesh NFAP. Indoor-only with 20 dBm EIRP follows
> the ETSI-style practice already used in the region (as in DFS-JP).

Please provide reference with power limit numbers.

> 3) 5470 - 5725 MHz (channels 100-144), (20) dBm, DFS, AUTO-BW
> Allocated in the NFAP with radar-detection (DFS) requirement. A 60
> second CAC (Japan-style DFS, already selected for BD) is consistent.

Please provide reference with power limit numbers.

> 4) 5725 - 5850 MHz (channels 149-165), (30) dBm
> No change to the current entry, only extended from 5835 to 5850 MHz to
> match the NFAP allocation of 5725-5875 MHz (the upper part, 5850-5875,
> is omitted conservatively since it requires pre-authorization for
> commercial equipment; can be added once the regulator clarifies).
>
> 5) 5925 - 6425 MHz (6 GHz channels 1-97, up to 160 MHz), (23) dBm
> BTRC circular dated 15 September 2024 approved 5925-6425 MHz for
> Wi-Fi/IoT/WLAN on a shared basis. (23) dBm EIRP follows the conservative
> indoor-oriented approach used by neighboring regulators. 320 MHz
> (802.11be) is NOT included since the circular does not explicitly
> authorize the 320 MHz channel width.

You need to provide power limit references for Bangladesh, not neighbouring
regions.

> References:
>
> - BTRC circular approving 5925-6425 MHz for Wi-Fi/IoT/WLAN (15 Sep 2024):
>   https://btrc.gov.bd/site/notices/939916e8-a89a-4e3b-aa75-35a0a2172f59/
> - Bangladesh National Frequency Allocation Plan (ITU-published
>   Spectrum Master Plan):
>   https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Pu=
blications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%2=
0plan%20-%20Published.pdf
> - Wi-Fi Alliance, regulations enabling 6 GHz Wi-Fi (BD entry):
>   https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> - Current BD entry in db.txt (kernel.org):
>   https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git=
/plain/db.txt
>
> Practical impact: With SIM MCC 470, Android and iOS devices apply the
> BD regulatory domain. The current narrow entry hides all 6 GHz
> channels and 5 GHz channels 36-144 from these devices in Bangladesh,
> even on Wi-Fi 6/6E/7 routers, forcing fallback to 802.11ac on
> 5 GHz. Updating this entry would restore access to the channels the
> regulator already permits.
>
> I am not a BTRC official; the regulator has not submitted this update
> itself, so I am proposing it on behalf of affected users, citing the
> regulator's published circular and allocation plan above. Please let me
> know if an official letter from BTRC is required before merging, and I
> will forward this request to the commission.

A reference with the band and power limits, as well as any other
restrictions like DFS or TPC (andif TPC is required, what is the limit
if TPC is not implemented) needs to be provided. We cannot put random
numbers into the database without justification.

The BRTC circular only says that the band is allowed. It does not provide
power limits.

The allocation plan only gives bands, and they are quite coarse. And for
5GHz, it says they are currently allocated to ISPs. It is implied that
a license is required.


Thanks
ChenYu

> Thank you for your time and work on this database.
>
> Best regards,
> Nahid Hasan
> Dhaka, Bangladesh
> nahidhasan12391@gmail.com
>

