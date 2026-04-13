Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83229EBFD24
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 09:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WKKmnWFPbnhKbpO1T1q1rl2S2rQ4qU7qMg1GjEBeP8=; b=CvoJbjmZLk89MzP+9mEMf1gzDC
	/m7Rs7fBD+DrXzaFEzEubQG1GAXgHtwFT8fzc7zxzeAOXFKw17f6JFPhPPqJb01VrdiWMCfDiUn/v
	za49eIHdLotrUyzN0Xhe86ZCWAqXDlrCc+yoztf8xJelK/9Pw0diT0AVKgKxqFyun0OubsIQhTrnw
	XYf/NJqnb6riExiXBlmvWswEGU+xnoAa08/KGVifsYpl0l7qQQHb8KrrVZpWrKENC+0ZIG4gAYoLp
	EDCpznfuVNYBbdd9Ridmb2BMkscitCRPL8RHkJfT2+sWp58yU/nZ9AihTpGcPO8T6WPaPNPcjSiPW
	3lHwuZ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCDex-0000000FNSd-3Qn6;
	Mon, 13 Apr 2026 09:32:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCDev-0000000FNRt-3pMG
	for wireless-regdb@bombadil.infradead.org;
	Mon, 13 Apr 2026 09:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9WKKmnWFPbnhKbpO1T1q1rl2S2rQ4qU7qMg1GjEBeP8=; b=MFIn8/q4Wkrqk+6LwfUe7awOVu
	7NIJFjfpau+bDQqTQach2ENJmVOZp7/bJdE6uuBczgSvRDaElxwzIVye/H26qjm8O2kvJ0lnl/CQx
	/2huRw9YrEAGnx4p0l4cdwn6bKrhpY9ky0Yj0FbGNSGFpBDoXAaKLxjxoIBCz8w3G6Upu9OLFqM66
	kDJOouJBKxIeAAGlTu/teX3MTNQQSwvG8v3FFoHS3xhoO+9ILKlwxhkW0XxLNE/MiaWhswBc1nVXz
	WTz6KWuQ6qtjvvd2yYCf8nKCsZEFBUmIYHmoo3lAKqATaiEqfI/lVCBbLGBCaPnPWBLDpHMXCnK5i
	g/aBmABw==;
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCDeq-0000000GV0t-0GFR
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 09:32:44 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6717d83f0ceso1142442a12.3
        for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 02:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776072758; cv=none;
        d=google.com; s=arc-20240605;
        b=HM4W4xPqwEs3URxnsWQgKJ7KIaQ2U5m8diBdKX0MIvwmdzPW3i2nCvRwh4Dpu1c7tl
         3krLUq2/l6oItNnzyN/it0rT0U+B/yqGC35vOXsY4uLICTX1pidQkHF9fno49cfCGAtr
         FWMnHPxKiFUeuWySILJ/mNjZ99x2s9OcNE4Osgqyj0HfEkpYJXX733onHbQb+rGy02Md
         P4tvTxHG86rZK+7PDRJLCblraP6NPc6E8La4Qd5VXASv+hBUQkVnWyr1jQWmXFjf9Lz5
         WRuTN8mKL9YpS4SiXJ8N+Hxeqoi2OFOtVzp/UNUH0c/wxuDQ/orE+PpQu73n0wqPMz6k
         J2aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9WKKmnWFPbnhKbpO1T1q1rl2S2rQ4qU7qMg1GjEBeP8=;
        fh=FYqXnKgfGqrTbq2WC5Yx6CvnHzbVAW+QOKCKlaS9aPw=;
        b=QYvDaTyl1Qop3FVZf0z+yktudh9+nuTpubzoOnwIMwEZD0tEYfTnSbfbrBpGCr7cE6
         FohjmjTRY9KDkj7fPL/KWNHKFlbKhP7nx61N1Spb21fscNpGB88aeNYSFEDQ2mnW1jK9
         /fNxYrEkO7ur1X27TmwvL2QnOQ4pBstJsQfpauTQA42f20Pkz/RiAOUS3d8S58gApvVo
         2JtT0Z7KckgSFXGovzmVrbEUJc+k/fwwM4FqE285yZfzakvtejdQl3OqeVpI/ND2cgKl
         g8j8CxR0r+CZN5tegDIfgtU3Crh3x/qFaphjCuPFdW0b7+PPBthvkPpZglitsuyyAt9c
         0l/g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776072758; x=1776677558; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WKKmnWFPbnhKbpO1T1q1rl2S2rQ4qU7qMg1GjEBeP8=;
        b=CxhsacG/JWo4vHkhVcHwmK9UXM30T+QtiUBaxM1ATOq9uMPhqAw4FUs607RujNp00k
         4Ni8X9Eiel7EWm16C9PRb0I6pJ8r9yNcKrKL/Tcig5XJonxwOrgbTyBd+VZElLZGbdZM
         elET5Gza8v8mZKrZIQDMQTwCzVpSuzb29xQXTj/IbOVNDBnAM9v+yU3uYxgw7KZTJ6sV
         xomvJCgTuyGBq49s+u1WcXTCvSY/XV1JznFkVsJ/GYVRni62DGi6sy4ODGGaopmqX97g
         R7+iIFOBLs82JP/AOP1+e+/358i7m0N99fhfwlkFp7ch7dzq0BpfxZSE+tgR6ASX6LV9
         yC0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776072758; x=1776677558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9WKKmnWFPbnhKbpO1T1q1rl2S2rQ4qU7qMg1GjEBeP8=;
        b=mMQOYkJNTVxYFx0ynn7bDani5udhX3yH3iUe/RQbww15MQMJUbxSpVzg7iyOop/D+p
         w1eVKn107nvTQFN7BeWmAZHjFhld1AE+HFCMgunpCKmM15kuBBfEmG1JHoTRce5DS0pz
         WYzsUTZGkPurUGhz9GqhdteBMHmfbPuQGNI3S6wGt61If+gMdFxBFlnIrtw4BMbIA98o
         Bd//qv63z6cZE0L4Au/v8zH8uv/aPrsIAPLAPa9qAeWf52T+3cysFuBq//ZFtuqrNuCq
         wOXRakeg1EG5MHXLY8NxtE1OOgIp45BGeJ3n3k/CrvPasMCJlMtNDdb4AgFJAxKlgnWL
         q7Jw==
X-Forwarded-Encrypted: i=1; AFNElJ8xcDrRSol6/2sNwYj/zI1o7VxK10N3vXAmhiWVs1EtlwlPXSFS4MoxSU1sLjT9is/EXBe2P9jldDuh5HQWmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxzJQ4CUuxOhHNWfTbpS75djwp1TImkNEoNKzKsqv2mD6qqYMk6
	vRpbChHadWFZxh/obFtoR7cBJeETVMFXnoqk4Kh0U2if0Z7noSCl5Xf/kzulnXDpLqGuzqwXiTy
	XVXv5UOFfJUkWJaqyVBy/C40o0GR2jMI=
X-Gm-Gg: AeBDievBSa2r8f0gF4M1S8l/qw3r9xVNTtNHzh4/0GsMs9TLYQ1er4Al1TsgNRlnkY7
	reKP92VSelUV97RMcFkvWxBk8RYOj+TXtkF4RKotKSyxV2DEJntAkqdTzmkAMQrLOetUXT336WO
	v495IjA93RULj40Dw7KCbKDA9aza8Xu6+WxEXezSizcwn4wcWPFCbcs906L51wpQBkjPUxpb/u4
	gQm9/RfvreqDmAHnFORb+pBZAF8cspWbgR1MLJPN6/j+eFUIsOpryw67wMVyjwo3Xx+BPuTkSM8
	wonTi+R9nxiOL58VOw==
X-Received: by 2002:a17:907:1b10:b0:b9c:9da7:910e with SMTP id
 a640c23a62f3a-b9d724da4f2mr686165766b.18.1776072757269; Mon, 13 Apr 2026
 02:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-4-loukot@gmail.com>
 <CAGb2v67DTq4tRgaPqG3WU6d+6mHdxdhcCvdX1QKd5ByKoF+=Xg@mail.gmail.com>
In-Reply-To: <CAGb2v67DTq4tRgaPqG3WU6d+6mHdxdhcCvdX1QKd5ByKoF+=Xg@mail.gmail.com>
From: Valeriy Kosikhin <vkosikhin@gmail.com>
Date: Mon, 13 Apr 2026 12:32:25 +0300
X-Gm-Features: AQROBzAZ82hhaBFCX33Roe4sK8LpzF2obeWJXVjx8XrNcnb8VZi_ePqD_TrcjRU
Message-ID: <CAMcVZft=-taAxe9=Y_jc+F1dcJbdt46SsEdTSwJCN4uz7WBd1g@mail.gmail.com>
Subject: Re: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
To: wens@kernel.org
Cc: Louis Kotze <loukot@gmail.com>, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_103242_254407_4DBC56A6 
X-CRM114-Status: GOOD (  22.23  )
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

I brought up this issue previously, but nobody seemed to be interested and
I can see why. The relevant Russian law is very convoluted. Plus, I see wro=
ng
sources being cited all the time (either from non-official sites or now bro=
ken
government-maintained links). I hope the updated compilation I made makes
this topic easier to navigate and removes ambiguity (such as the "automated
power control system" part). Please bear with the long list of references.

As per the wireless-regdb principles
(https://wireless.docs.kernel.org/en/latest/en/developers/regulatory/statem=
ent.html#principles),
It should be reasonably impossible for a user to fail to comply with local
regulations either unwittingly or by accident. That makes Russia a
complicated case, since the frequencies and transmit power available
for use by the general public in Russia are governed not by a single law,
but by three bodies of legal documents:

* on registration of radio-electronic equipment;
* on allocation of radio frequency bands;
* the rules for the use of radio access equipment.

All of those must be taken into account to prevent the user from
accidentally failing to comply with regulations. I'll break them down to th=
e
best of my ability and propose changes to the wireless-rgdb rules and
source references.

-----
PART 1: on registration of radio-electronic equipment
-----
Since March 1st, 2025, 200 mW transmitters on the 5 or 6 GHz band are
permitted without the need to apply for registration by the Decree of
the Government of the Russian Federation dated July 1, 2024, No. 897
=E2=80=9COn Amendments to the Decree of the Government of the Russian
Federation dated October 20, 2021, No. 1800=E2=80=9D
(http://publication.pravo.gov.ru/document/0001202407010020).
Translated citation from page 4:

> 25. Short-range devices:
>
> [...]
>
> b) In the annex to the specified list:
>
> [...]
>
> Clause 14 shall be amended as follows:
>
> =E2=80=9C14. User (terminal) transmitting equipment, including a receivin=
g
> device, operating within the IEEE 802.11 (Wi-Fi) family of short-range
> standards, functioning in the radio frequency band 2400 - 2483.5 MHz,
> with a maximum allowable transmitter power of no more than 100 mW,
> including built-in or integrated components of other devices.
>
> User (terminal) transmitting equipment, including a receiving device,
> operating within the IEEE 802.11 (Wi-Fi) family of short-range standards,
> functioning in the radio frequency bands 5150 - 5350 MHz and
> 5650 - 6425 MHz, with a maximum allowable transmitter power of no more
> than 200 mW, including built-in or integrated components of other devices=
.=E2=80=9D

The amended document is the Decree of the Government of the Russian
Federation dated October 20, 2021, No. 1800 =E2=80=9COn the Procedure for t=
he
Registration of Radio-Electronic Equipment and High-Frequency Devices=E2=80=
=9D
(http://publication.pravo.gov.ru/document/0001202110220034). The
annex referenced by the amendments contains exceptions from the list
of devices requiring registration with the Federal Service for
Supervision of Communications, Information Technology, and Mass Media
(Roskomnadzor).

PART 1 conclusion:

5150 =E2=80=94 5350 MHz 200 mW
5650 =E2=80=94 6425 MHz 200 mW

-----
PART 2: on allocation of radio frequency bands
-----
Another set of restrictions comes from the State Commission for Radio
Frequencies under the Ministry of Communications and Information of
the Russian Federation. I'll be citing the most recent amendments to
the Decision of the SCRF dated May 7, 2007, No. 07-20-03-001 =E2=80=9COn th=
e
Allocation of Radio Frequency Bands for Short-Range Devices=E2=80=9D
(https://digital.gov.ru/documents/zasedanie-gkrch-ot-07-05-2007-protokol-=
=E2=84=96-07-20),
which apply to the relevant frequencies.

Decision of the SCRF dated June 16, 2021, No. 21-58-05
(https://digital.gov.ru/documents/zasedanie-gkrch-ot-16-iyunya-2021-g-proto=
kol-=E2=84=96-21-58):

> The SCRF decision dated May 7, 2007, No. 07-20-03-001,
> =E2=80=9COn the Allocation of Radio Frequency Bands for Short-Range Devic=
es,=E2=80=9D
> shall be revised as set forth in the annex to this SCRF decision.

Annex to the SCRF decision dated June 16, 2021 No. 21-58-05
(https://digital.gov.ru/uploaded/files/prilozhenie-k-resheniyu-gkrch-ot-16-=
iyunya-2021-g--21-58-05.pdf),
pages 10=E2=80=9311:

> 5150-5350 MHz =E2=80=93 Maximum EIRP: 200 mW =E2=80=93 Indoor use only.
> With the use of an automatic power control system.
> 5650-5850 MHz =E2=80=93 Maximum EIRP: 200 mW =E2=80=93 Indoor use only.
> With the use of an automatic power control system.

Decision of the SCRF dated December 23, 2022, No. 22-65-05
(https://digital.gov.ru/documents/zasedanie-gkrch-ot-23-dekabrya-2022-g-pro=
tokol-=E2=84=96-22-65):

> 26. The following amendments shall be made to Annex No. 2 of
> the Decision of the State Commission for Radio Frequencies (SCRF)
> dated 07.05.2007 No. 07-20-03-001:
>
> Section 2, =E2=80=9CDevices with Direct Sequence Spread Spectrum and Othe=
r
> Types of Modulation,=E2=80=9D shall be supplemented with the following en=
tries:
>
> 5925-6425 MHz =E2=80=93 Maximum EIRP: 200 mW =E2=80=93 Indoor use only.
> With the use of an automatic power control system.

Decision of the SCRF dated September 27, 2023, No. 23-68-03
(https://digital.gov.ru/documents/protokol-gkrch-ot-27-09-2023-=E2=84=96-23=
-68-data-publikaczii-27-09-2023-2):

> 3. On amendments to previously issued SCRF decisions:
>
> 3.1. Based on the Use of the Association of Trade Companies
> and Manufacturers of Electrical Household and Computer Equipment
> (OGRN 1027700101505), in Annex No. 2 to the SCRF decision dated
> 07.05.2007 No. 07-20-03-001, the words =E2=80=9CWith the use of an automa=
tic
> power control system=E2=80=9D shall be replaced with =E2=80=9CWith the us=
e of LBT2 mode.=E2=80=9D

None of the decisions cited above impose a limit of 100 mW, and the
previously ambiguous phrase =E2=80=9Cautomatic power control system=E2=80=
=9C has now
been clarified. =E2=80=9CLBT2=E2=80=9C is an obvious clerical error, where =
=E2=80=9C2=E2=80=9C was
originally a footnote marker, as there is no such thing as the LBT2
mode. I have reported the error to the SCRF.

As far as I know, LBT support is inherent to IEEE 802.11 in the 5/6 GHz ran=
ge.
Correct me if I'm wrong on this.

PART 2 conclusion:

5150 =E2=80=94 5350 MHz 200 mW NO-OUTDOOR
5650 =E2=80=94 5850 MHz 200 mW NO-OUTDOOR
5925 =E2=80=94 6425 MHz 200 mW NO-OUTDOOR

-----
PART 3: the rules for the use of radio access equipment
-----
Additionally, there are rules for the Use of Radio equipment which all
Wi-Fi access points connected to public networks must be compliant
with. Citations are from the original document and the subsequent
amendments.

Order of the Ministry of Communications and Mass Media of the Russian
Federation dated 14.09.2010 No. 124 =E2=80=9COn the Approval of the Rules f=
or
the Use of Radio Access Equipment. Part I. Rules for the Use of Radio
Access Equipment for Wireless Data Transmission in the 30 MHz to 66
GHz Range=E2=80=9C (https://digital.gov.ru/uploaded/files/pr124-10_1.pdf),
page 62:
>
> Requirements for radio access equipment of the 802.11n standard
>
> [...]
>
> Maximum transmitter power in the frequency band:
> 5150 =E2=80=93 5250 MHz no more than 20 dBm (100 mW)
> 5250 =E2=80=93 5350 MHz no more than 20 dBm (100 mW)
> 5650 =E2=80=93 5725 MHz no more than 30 dBm (1000 mW)
> 5725 =E2=80=93 5825 MHz no more than 30 dBm (1000 mW)
> 5825 =E2=80=93 6425 MHz no more than 30 dBm (1000 mW)

Order of the Ministry of Communications and Mass Media of the Russian
Federation dated April 22, 2015, No. 129 =E2=80=9COn Amendments to the Rule=
s
for the Use of Radio Access Equipment. Part I. Rules for the Use of
Radio Access Equipment for Wireless Data Transmission in the Frequency
Range from 30 MHz to 66 GHz, Approved by Order of the Ministry of
Communications and Mass Media of the Russian Federation dated
14.09.2010 No. 124=E2=80=9D (http://publication.pravo.gov.ru/document/00012=
01505180039),
page 25:

> Requirements for radio access equipment of the 802.11ac standard
>
> [...]
>
> Limit values of average EIRP and average spectral power density EIRP
> when operating at the maximum declared power:
>
> Frequency range (MHz) | Output average EIRP (dBm) with TPC, without TPC
> 5 150 =E2=80=93 5 350 | 23, 20/23 (1)
> 5 470 =E2=80=93 6 425 | 30, 27
>
> (1) A value of 20 dBm is applied, except in the case of transmissions
> for bands that fully fall within the 5150 =E2=80=93 5350 MHz range, in wh=
ich
> case a value of 23 dBm is applied.

The footnote is somewhat ambiguous. The distinction seems to lie
between discontiguous channel bonding (e.g., 80+80 MHz) and contiguous
bonding within the lower channel range.

Order of the Ministry of Digital Development, Communications, and Mass
Media of the Russian Federation dated July 6, 2020, No. 321 =E2=80=9COn
Amendments to the Rules for the Use of Radio Access Equipment. Part 1.
Rules for the Use of Radio Access Equipment for Wireless Data
Transmission in the Frequency Range from 30 MHz to 66 GHz, approved by
the Order of the Ministry of Communications and Mass Media of the
Russian Federation dated September 14, 2010, No. 124.=E2=80=9D
(http://publication.pravo.gov.ru/document/0001202008070002), page 11:

> Requirements for radio access equipment of the 802.11ax standard
>
> [...]
>
> Frequency range (MHz) | Max. transmitter power (dbW)
> 5150 =E2=80=93 5350 | -10
> 5650 =E2=80=93 6420 | 0

PART 3 conclusion:

5150 =E2=80=94 5350 MHz 100 mW or more depending on IEEE 802.11 version
5650 =E2=80=94 5850 MHz 200 mW
5925 =E2=80=94 6425 MHz 200 mW

PART 4: proposal
-----
I propose the following changes to wireless-regdb by picking the
lowest transmit power value for each frequency range among the three bodies
of legal documents cited above.

5150 =E2=80=93 5350 MHz 100 mW NO-OUTDOOR
5650 =E2=80=93 5850 MHz 200 mW NO-OUTDOOR
5925 =E2=80=93 6425 MHz 200 mW NO-OUTDOOR

-----
PART 4: sources for citations
-----
The source currently cited in db.txt
(https://docs.cntd.ru/document/1300597464?section=3Dtext) is not from a
government-maintained website. It is also limited in scope and
doesn't cover all of the relevant regulations. I propose to replace it
with a set of different sources, which cover this topic exhaustively,
from official government platforms:

Decision of the SCRF dated June 16, 2021, No. 21-58-05
(https://digital.gov.ru/documents/zasedanie-gkrch-ot-16-iyunya-2021-g-proto=
kol-=E2=84=96-21-58)
=E2=80=94 contains the most recent
frequencies for 2.4, 5, and 57=E2=80=9366 GHz bands

Decision of the SCRF dated December 23, 2022, No. 22-65-05
(https://digital.gov.ru/documents/zasedanie-gkrch-ot-23-dekabrya-2022-g-pro=
tokol-=E2=84=96-22-65)
=E2=80=94 6 GHz band added

Decision of the SCRF dated September 27, 2023, No. 23-68-03
(https://digital.gov.ru/documents/protokol-gkrch-ot-27-09-2023-=E2=84=96-23=
-68-data-publikaczii-27-09-2023-2)
=E2=80=94 reference to LBT added

Order of the Ministry of Communications and Mass Media of the Russian
Federation dated 14.09.2010 No. 124 =E2=80=9COn the Approval of the Rules f=
or
the Use of Radio Access Equipment. Part I. Rules for the Use of Radio
Access Equipment for Wireless Data Transmission in the 30 MHz to 66
GHz Range=E2=80=9C (https://digital.gov.ru/uploaded/files/pr124-10_1.pdf) =
=E2=80=94
rules for up to IEEE 802.11n

Order of the Ministry of Communications and Mass Media of the Russian
Federation dated April 22, 2015, No. 129 =E2=80=9COn Amendments to the Rule=
s
for the Use of Radio Access Equipment. Part I. Rules for the Use of
Radio Access Equipment for Wireless Data Transmission in the Frequency
Range from 30 MHz to 66 GHz, Approved by Order of the Ministry of
Communications and Mass Media of the Russian Federation dated
14.09.2010 No. 124=E2=80=9D
(http://publication.pravo.gov.ru/document/0001201505180039) =E2=80=94 rules
for IEEE 802.11ac and IEEE 802.11ad

Order of the Ministry of Digital Development, Communications, and Mass
Media of the Russian Federation dated July 6, 2020, No. 321 =E2=80=9COn
Amendments to the Rules for the Use of Radio Access Equipment. Part 1.
Rules for the Use of Radio Access Equipment for Wireless Data
Transmission in the Frequency Range from 30 MHz to 66 GHz, approved by
the Order of the Ministry of Communications and Mass Media of the
Russian Federation dated September 14, 2010, No. 124.=E2=80=9D
(http://publication.pravo.gov.ru/document/0001202008070002) =E2=80=94 rules
for IEEE 802.11ax

Decree of the Government of the Russian Federation dated July 1, 2024,
No. 897 =E2=80=9COn Amendments to the Decree of the Government of the Russi=
an
Federation dated October 20, 2021, No. 1800=E2=80=9D
(http://publication.pravo.gov.ru/document/0001202407010020) =E2=80=94 200 m=
W
transmitters in the 5/6 Wi-Fi range are now exempt from registration

-----
PART 5: sources for research
-----
For research and verification purposes only, up-to-date
compilations are provided by law firms:

https://www.consultant.ru/cons/cgi/online.cgi?req=3Ddoc&base=3DEXP&n=3D8340=
25
(free access from 8 PM to 0 AM, Moscow Time)

https://base.garant.ru/199539/53f89421bbdaf741eb2d1ecc4ddb4c33

On Mon, Apr 13, 2026 at 8:04=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Sun, Apr 12, 2026 at 6:22=E2=80=AFAM Louis Kotze <loukot@gmail.com> wr=
ote:
> >
> > The State Commission for Radio Frequencies (GKRCH) Decision No. 22-65
> > (December 23, 2022) authorized 6 GHz LPI at 200 mW (23 dBm) EIRP
> > with 10 mW/MHz PSD. The current entry incorrectly uses 100 mW.
> >
> > Reference:
> >   GKRCH Decision No. 22-65 (2022-12-23)
> >   https://www.eleoscompliance.com/en/article/russia-the-federal-communi=
cation-agency-fac-of-russia-allows-6ghz-wifi
>
> This page doesn't actually contain any useful information.
>
> I can't seem to access the reference from the original submission.
> I'll try again later.
>
> I did find https://www.gccorp.com.tw/en/?p=3D2173 using the document name
> you gave, but that also mentions that "automatic power control system"
> is required. I assume that is TPC, which Linux basically doesn't have.
> So we still have a problem here. If the rules were based on FCC or EU
> regulations, then we sort of adopt a 3 dBm reduction in the limit.
>
>
> ChenYu
>
> > Signed-off-by: Louis Kotze <loukot@gmail.com>
> > ---
> >  db.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 9938089..777d323 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1772,7 +1772,7 @@ country RU:
> >         (2400 - 2483.5 @ 40), (100mW)
> >         (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
> >         (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
> > -       (5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
> > +       (5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
> >         # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order =E2=
=84=96129_22042015.pdf
> >         (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> >
> > --
> > 2.53.0
> >
>

--=20
Best regards
Valeriy Kosikhin

