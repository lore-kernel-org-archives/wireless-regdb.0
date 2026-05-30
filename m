Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC76CD5BD0
	for <wireless-regdb@archiver.kernel.org>; Sat, 30 May 2026 15:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaaMX06Hb9Qet7b/Ta2+gfIEUiRqgAjujDcukqX0l0w=; b=nBAeF1SyIgRsvK
	re0OxNn9EvUNgUPxtBLBLempEtNF0zVrwEDzg9m9odS730sMEjcmQYP1k7UQFJ7pjDpGSEN66BPem
	SHms361UVNGgNMnKeCjmJNn9dSLpcJzPXNBueENGDd1reNFD8Nk7rAV5E1kOnR9vNrgTbuQoFpREL
	F46KHb4OAay6a6GwKEYUcj7mCG055jr3fP2vCLgp9SO4j4vu9fexwKv+NKTFEClBxOU/fXxux+aTE
	r13/r2+nmupk/Dn3RvWSMpV4S1yRAtEjUuOJwdObRTP38KagW6lRlm8+KVBhGO8e1KX/fMb9fiAW8
	P2NqBypGkaAzce6AQSSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLh6-00000008sxO-3reI;
	Sat, 30 May 2026 15:33:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLh6-00000008sxB-1ESs
	for wireless-regdb@lists.infradead.org;
	Sat, 30 May 2026 15:33:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4F92860120
	for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 15:33:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C311F0089A
	for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 15:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780155227;
	bh=PaaMX06Hb9Qet7b/Ta2+gfIEUiRqgAjujDcukqX0l0w=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=dDNIK3GFqhGOEop1oZ0NoZol62JXspmQdOuBvVdFXhqTHerXnx8i+3kHVpskwiXzv
	 8uruOO+mybjygY2xmQUUqtaTuuyF2nGbCOU5x7jqWlzvYi4N137ze6gZMAncmgult0
	 buv2sVnkq0/eyOoKFAfCtd5eeqCV8ftvqdU0kbJEWeP7QHWKq81dImBIph65bkkJG6
	 PV3AFh6e1vKepC2SA0ZX+vSqHawistW6uT2MrGkr5pGcMHtWQVd1r+y/pJq/GcpXnv
	 ++dZ28ySPHod8bJSdXa0Vzg81e12swHoUnsmBl3LwUYrXQVYs7lXLYnbnHXc3juigA
	 wq7X4uuDnapBw==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5aa5e9a64b4so1163623e87.3
        for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 08:33:46 -0700 (PDT)
X-Gm-Message-State: AOJu0YwZFcrycHZ4J2+ccYwuhXV74JS9wuJDdCVCDqVMuZf/uYT1wMuY
	LGAZ3OB4gUj6cgsj3NlYO9ixkCrP4Pcm9aXvW8kvFppv8Og7MejL/Ajamfg6jkLV1IhX0gbhnUD
	FlC4V4Ci+3pbtTIeUPZL25870tpwpm7A=
X-Received: by 2002:a05:6512:2525:b0:5a8:8df1:61bf with SMTP id
 2adb3069b0e04-5aa6090ab09mr1186716e87.21.1780155225333; Sat, 30 May 2026
 08:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260521101501.1841-1-mnew_iraq.ref@yahoo.com> <20260521101501.1841-1-mnew_iraq@yahoo.com>
In-Reply-To: <20260521101501.1841-1-mnew_iraq@yahoo.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 30 May 2026 18:33:33 +0300
X-Gmail-Original-Message-ID: <CAGb2v66pbBcCL+wmW8CS8LQWJ+KrhO1u+RV+2LKxoM23ywvBDg@mail.gmail.com>
X-Gm-Features: AVHnY4Ik9SJLBKP4RabgX9OJbY6wCM6R-CjqZu2QG7HjqjGjdpfYwDvGCAbfoDM
Message-ID: <CAGb2v66pbBcCL+wmW8CS8LQWJ+KrhO1u+RV+2LKxoM23ywvBDg@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: add regulatory rules for Iraq (IQ)
To: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
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

Just a couple notes.

On Thu, May 21, 2026 at 1:15=E2=80=AFPM Mohammed Abdullah Ali Al-Obaidi
<mnew_iraq@yahoo.com> wrote:
>
> Add a regulatory entry for Iraq (ISO 3166-1 alpha-2: IQ).
>
> Iraq is currently absent from the regulatory database. Devices set
> to country=3DIQ fall back to the world domain (00), which leaves most
> of the 5 GHz spectrum marked "no IR" and severely restricts even
> 2.4 GHz operation. The Iraqi Communications and Media Commission
> (CMC) has now published an explicit, numerical national regulation
> that fills this gap.
>
> Source document
> ---------------
>
>   Title : Regulation on short-range radio communication devices
>           (SRD) and devices using ultra-broadband (UWB) technology
>   Issuer: Republic of Iraq, Communications and Media Commission
>           (CMC), Telecommunications Regulatory Department,
>           International Relations Section
>   Decree: Council of Commissioners decision No. 122/q-2025
>   In force from: 2025-09-22
>   Edition: First edition, 2025; 26 pages
>   URL   : https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-r=
ange-radio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-=
technology.pdf
>
> The values below are taken directly from Article 4-1-13 ("Wireless
> Access Systems / WAS") of that regulation, which is the table
> governing Wi-Fi (Annex A of the regulation defines Wi-Fi as
> "802.11 Local Area Networking in 2.4 and 5 GHz ISM bands").
>
> Bands and limits, as stated in Article 4-1-13:
>
>   2400-2483.5 MHz  : 100  mW EIRP, indoor and outdoor, LBT/DAA
>                      (EN 300 328, ERC/REC 70-03)
>   5150-5250 MHz    : 200  mW EIRP, indoor
>                      (EN 301 893, ITU-R Res. 229 Rev. WRC-19)
>   5250-5350 MHz    : 200  mW EIRP, indoor
>                      (EN 301 893)
>   5470-5725 MHz    : 1000 mW EIRP, indoor, DFS + TPC
>                      (EN 301 893)
>   5725-5875 MHz    : 2000 mW EIRP (10 MHz ch) / 4000 mW (20 MHz ch),
>                      indoor and outdoor
>                      (EN 302 502)
>   5945-6425 MHz    : 200  mW EIRP, indoor
>                      (EN 303 687, ECC Report 75)
>   57-66 GHz        : 10   W  EIRP, indoor, LBT/DAA
>                      (EN 302 567)
>
> Notes on the encoding chosen below
> ----------------------------------
>
> * TPC handling for 5470-5725 MHz: The regulation explicitly requires
>   both DFS and TPC. Because Linux/wireless-regdb does not natively
>   enforce TPC limits, the rule is encoded with the standard DFS flag
>   to remain as compliant as possible within the framework's capabilities.
> * Indoor/Outdoor for 5725-5875 MHz: The regulation explicitly permits
>   both indoor and outdoor operation for this band, so no NO-OUTDOOR flag
>   is applied.
> * EIRP limit for 5725-5875 MHz: The regulation provides two figures
>   (2000 mW for 10 MHz channels, 4000 mW for 20 MHz channels). Because
>   wireless-regdb expresses a strict per-band ceiling to ensure compliance
>   across all configurations, the limit is conservatively set to 2000 mW
>   to prevent narrower channel widths from exceeding their legal limit.

Please leave a short comment above the rule mentioning this. Something
like "adopting limits for 10 MHz channel width to be conservative."

> * 6 GHz channel width: Encoded at 80 MHz (the widest standard-power
>   option) pending further clarification from the CMC regarding AFC
>   requirements.
>
> Background on the unique 5.8 GHz figure
> ---------------------------------------
>
> The 2000 mW EIRP ceiling for 5725-5875 MHz reflects an explicit Iraqi
> national choice that follows EN 302 502 (BFWA). This choice puts Iraq
> at the high end of the regional spectrum policy for the 5.8 GHz band
> and is included verbatim from the regulation.
>
> Signed-off-by: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
> ---
> v2:
>   - Changed 5725-5875 MHz EIRP ceiling from 4000 mW to 2000 mW to
>     ensure absolute compliance at narrower channel widths (10 MHz).
>   - Trimmed redundant encoding notes regarding standard NO-OUTDOOR,
>     DFS, and AUTO-BW conventions.
>   - Clarified TPC handling limitations and indoor/outdoor encoding
>     choices.
>
>  db.txt | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/db.txt b/db.txt
> --- a/db.txt
> +++ b/db.txt
> @@ -insert-after-IN-block@@
> +# Iraq
> +# Source: Regulation on short-range radio communication devices (SRD)
> +# and devices using ultra-broadband (UWB) technology, First Edition
> +# 2025, issued by the Iraqi Communications and Media Commission (CMC)
> +# under Council of Commissioners decision No. 122/q-2025, in force
> +# from 2025-09-22. Limits below are taken from Article 4-1-13
> +# (Wireless Access Systems) of that regulation.
> +# https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-ra=
dio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technol=
ogy.pdf
> +country IQ: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (100 mW), wmmrule=3DETSI
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
> +       (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=
=3DETSI
> +       (5470 - 5725 @ 160), (1000 mW), NO-OUTDOOR, DFS, wmmrule=3DETSI

Since Linux doesn't support TPC, it would be better if this rule follows
EN 301 893 and reduces the EIRP. EN 301 893 reduces the limit from 30 dBm
to 27 dBm. Please just use 27 dBm here, and also mention it in the commit
message.

> +       (5725 - 5875 @ 80), (2000 mW)

The boundary of WiFi channel 144 actually goes up to 5730. Since this
5 MHz is split between two bands, the current way actually prevents
you from using this channel. Normally we add AUTO-BW to both channels
that are straddled. But since the restrictions for 5725-5875 are looser,
we just let the previous band go up to 5730 MHz instead of 5725 MHz,
and leave a comment explaining it.

Please do so as well. You can use the US region as an example.

> +       (5945 - 6425 @ 80), (200 mW), NO-OUTDOOR, wmmrule=3DETSI
> +       (57000 - 66000 @ 2160), (40)

Please copy the the numbers and units from the regulation verbatim,
unless modifications like the TPC-less reduction was done. So this
should not be "40" dBm, but "10000 mW".


Thanks
ChenYu

