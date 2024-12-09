Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 066A6E77180
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 16:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5+f5jKXy/dUHTkF6McQd//BGvnPBgmqxgm1b3t0cFM=; b=4EJwhu2a5xXn8F
	K8v5+GZ+jGTBs5Ms/a7RT0xA69L9voeHG7/oJsucapUALPK+8xsNlGyP/A8hSuazmiEajvmm6viP8
	q32aZKPyTCbfxq7N9in+xoU0Dt2NK1IWoDm1mgYn5Rr+BEyW3HAMwNk6UGzYnDuqKYrET2EIe/RaZ
	v8diCxKYlYT68DljgWiUCP1RQ8xI5kmPcIIZ5ZD4v2T5ZmgPJrprR7Y0evsM091S1EKNucI4zZ+mC
	YOAM1as5Oq30hoC0gNKXo+G2mJEaAfdGKFbwJgmRmvUUj5zVTQSyb1H2fUwY7bL9104C/o3D6MWFK
	dRlXoBeUfpoOBQZvzSIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgRz-00000008WJ4-3J0e;
	Mon, 09 Dec 2024 16:17:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgRB-00000008W9J-1Tll
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 16:16:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 182A05C5C4D
	for <wireless-regdb@lists.infradead.org>; Mon,  9 Dec 2024 16:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59CAEC4CED1
	for <wireless-regdb@lists.infradead.org>; Mon,  9 Dec 2024 16:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733761004;
	bh=8FfxgXmfC9gs/7flLYGDDNER1UbjpUe7zlpO3Odosks=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=tSdTQI+I2gacX+uDadoBz6DuOPYN19XqyPDwvMl5XR6XNUybS8Deh3RBaEGXXr8pe
	 VOrudVNqhtbfR/C5OCRkFzL2z1bXRsaqYzKjcfEzcjS6nvb6dUPKOrIma9ppX+oGyS
	 +Nh6NDkBjPk17urRVak/towuwc2VmRl1PE70+fMb0dlKjKnowNXHPx28duj76E0iJ+
	 /94YJWMdA43V3EW1Kts76pOQj9EUzkuBHgM2ooZkn25l0y2MDBlSkJY4hDLzyL3dd6
	 9vwKC+hpjW4iFynbTYC+GYydqXHiOdw1RdynWQRUy6Ui7H7uONPxV/Bu59rR+3yDg9
	 4HxqRHkxWQOqw==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30024c73101so38098341fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 09 Dec 2024 08:16:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVLBbWAt8AaA3+GyfsoDdSyzArZ5MpEup5I7gLrqbNl4DbmM10IaF2VOVTOXFFbUY10OBelo9PPTM6jRTNOmA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0r627R5ZDyXzmI34VEWcj0IteCqW5gcDPA1nY2M3rnC11Rh7X
	u/SnYVfrzP+BQJh4ZGOPCZTSlmkdmvtTM2PhGQbM1pOwSsmdz9dRziFnlnFM+mnGCZIAmLo1GQr
	irizWyLR8LFq8vWXjpW8rMFrSZ2E=
X-Google-Smtp-Source: AGHT+IGY9ZVDQM4U8JOXqDkXclkkXG/p36yYXPtJohDi7YJnFzX3vT35on1T6bKnRyhYorwaUDSU3n6PbTZIOFTprxA=
X-Received: by 2002:a05:651c:1516:b0:2ff:e4e6:2543 with SMTP id
 38308e7fff4ca-3002defdce5mr44409831fa.21.1733761002675; Mon, 09 Dec 2024
 08:16:42 -0800 (PST)
MIME-Version: 1.0
References: <274D81C2-56C7-4042-96F9-A04A92BEAEFD@dipier.ro>
In-Reply-To: <274D81C2-56C7-4042-96F9-A04A92BEAEFD@dipier.ro>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 10 Dec 2024 00:16:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v651G_dtC4Nzh4f9rQQ4w8KajAR0xb-8DbcedXiYcnz7jA@mail.gmail.com>
Message-ID: <CAGb2v651G_dtC4Nzh4f9rQQ4w8KajAR0xb-8DbcedXiYcnz7jA@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Armenia (AM) on 2.4
 and 5 GHz
To: tina@dipier.ro
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_081645_478882_88454FB5 
X-CRM114-Status: GOOD (  19.76  )
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

On Mon, Dec 9, 2024 at 11:49=E2=80=AFPM <tina@dipier.ro> wrote:
>
> Public Services Regulatory Commission of the Republic of Armenia has rele=
ased two amendments to its 2011 Decision =E2=84=96169=D5=86 on Approval of =
the Procedure for Issuing Permits for the Use of Radio Frequencies.
>
> 1. Amendment =E2=84=96159=D5=86, on permit of usage of radio frequency ra=
nges without permit, released on May 11, 2012, available at https://www.psr=
c.am/contents/document/4749 (choose language =E2=86=92 HY)
>
> <=E2=80=A6> Based on Article 5, Part 1, Point 1(d) and Point 2(b), Articl=
e 6, Part 1 and Part 2, Point 1, and Article 17, Part 5 of the Law of the R=
epublic of Armenia "On Electronic Communication," as well as Article 70, Pa=
rt 1 of the Law of the Republic of Armenia "On Legal Acts," the Public Serv=
ices Regulatory Commission of the Republic of Armenia decides:
> To amend Points 4 and 5 of the annex to the decision =E2=84=96169N of Apr=
il 13, 2011, by the Public Services Regulatory Commission of the Republic o=
f Armenia titled "Approval of the Procedure for Granting Permissions for th=
e Use of Radio Frequencies," by restating them with a new wording. <=E2=80=
=A6>
> "4. No permission is required for:
> <=E2=80=A6>
> 9) The use of broadband wireless access equipment operating in the 2400=
=E2=80=932483.5 MHz radio frequency band with a power of up to 100 mW.
> <=E2=80=A6>=E2=80=9D
>
>
> 2. Amendment =E2=84=96295-=D5=86, on permit of usage of radio frequency r=
anges without permit, released on August 23, 2023, available at https://www=
.psrc.am/contents/document/11375 (choose language =E2=86=92 HY)

Please try to change any non-ASCII characters down to ASCII.
And please wrap commit messages to under 80 characters per line.

> <=E2=80=A6> Based on Articles 33 and 34 of the Law "On Normative Legal Ac=
ts," the Public Services Regulatory Commission of the Republic of Armenia d=
ecides:
> To amend Subpoint 10 of Point 4 of the annex to Decision =E2=84=96169-N o=
f April 13, 2011, of the Public Services Regulatory Commission of the Repub=
lic of Armenia, titled "Approval of the Procedure for Granting Permissions =
for the Use of Radio Frequencies," as follows:
> "10) For the use of local network equipment operating in the 5150-5350 MH=
z and 5470-5875 MHz radio frequency bands with an effective radiated power =
(e.r.p.) of up to 100 mW (only indoors, as well as in airplanes during all =
phases of flight), utilizing dynamic frequency selection (DFS) and transmit=
ter power control (TPC).=E2=80=9D <=E2=80=A6>

This mentions TPC, which we don't actually support. We adopted reducing
the maximum EIRP by 3 dBm, on the basis of that is what the ETSI regulation=
s
do.

You don't need to include the actual text, which makes the commit
message really long.

Just list the bits that are updated, and provide links to the justification=
.
And pointers to the actual item would be nice. So something like the
following:

1. For 2.4 GHz range, based on reworded subparagraph 9 from
   https://www.psrc.am/contents/document/4749

   * 2400 - 2483.5
     - 100 mW EIRP
     - indoor use only

2. For 5 GHz range, based on reworded subparagraph 10 from
   https://www.psrc.am/contents/document/11375
   which also supersedes the previous document

   * 5150 - 5350
     - 100 mW EIRP
     - indoor use only
     - DFS required
     - TPC required, reduce limit by 3 dBm to 17 dBm

    same for the other range.

> Essentially, this two documents define this frequencies as permitted:
> - 2400 - 2483.5 MHz @ 100 mW
> - 5150 - 5350 MHz @ 100 mW with DFS, outdoor usage forbidden
> - 5470 - 5875 MHz @ 100 mW) with DFS, outdoor usage forbidden
>
> However, I am not sure if AUTO-BW option here is required. As far as I kn=
ow, there is currently no limitation on bandwidth usage in IEEE 802.11 set =
of protocols in Armenia.

Normally any additional notes should be written under the "---" so that
when we apply the patch, it doesn't get included.

AUTO-BW is just for stitching together adjacent bands that have different
requirements. Since you aren't doing that here, it isn't needed.


Also, we require a Signed-off-by line from you, like with all kernel patche=
s.

> ---
> db.txt | 10 +++++++---
> 1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e282e3b..5d5ba22 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -81,10 +81,14 @@ country AL: DFS-ETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
>
> +# Source (in Armenian):
> +# 2.4 GHz https://www.psrc.am/contents/document/4749
> +# 5 GHz https://www.psrc.am/contents/document/11375
> +
> country AM: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 20), (18)
> -       (5250 - 5330 @ 20), (18), DFS
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
> +       (5470 - 5875 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS

Drop the AUTO-BW, as mentioned.

ChenYu


> country AN: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.45.2

