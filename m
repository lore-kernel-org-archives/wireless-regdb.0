Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11113C19F2E
	for <wireless-regdb@archiver.kernel.org>; Thu, 27 Feb 2025 12:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=534/gYe6iq47ZwP+Br1SPG+hyWeoQO/Rhs3lb6Dkvgo=; b=aL7pqQQ2lngGNROsH2O34BocM2
	DaSKnzRgO0+c/GC1m+/uOqx0YQwsVjX7hr2vEYjSxDuLqljKwLZQrTuunefR8FGx4tw+7e5IE0YkX
	YkPUtau9NYSLkXppCZfBehhJJSZokZJ+YAtUrozcsXaSkctsAQCdSATUvk1P41G9kV+AqsRrY8MzW
	qC+WNZogWVrANIpDoBWM4BtVEDIIdR94Jhlv4D0Tz8+VLSblHKxU3w/hZwniI43CsEE3wm7FaB4a0
	4nZ4HUU39yjXm2zVaUfPSfhgHb+B58J3o26yMPy/vTAHIc+NAP6mt2rhHUP9ey1zdvxOPPGW4ovRa
	y45oYmeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tndKW-00000007QTS-2Mps;
	Thu, 27 Feb 2025 12:49:32 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tncmf-00000007JmH-09UF
	for wireless-regdb@lists.infradead.org;
	Thu, 27 Feb 2025 12:14:35 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5deb1266031so1357077a12.2
        for <wireless-regdb@lists.infradead.org>; Thu, 27 Feb 2025 04:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740658471; x=1741263271; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=534/gYe6iq47ZwP+Br1SPG+hyWeoQO/Rhs3lb6Dkvgo=;
        b=ETAGa+vAhLWFpfw3pYmBsq9gs4oFt0gKh7BFL2poLrUnY/etH8LQGJMfUmouwdV4Fz
         9BLi63vV4Z64GDLGqmOo8zpUkuvXHg5q9N10UuMrXZOZ8xfnzt7pFUwW2wL27kdZ+Vz+
         LHsfMz6movZR3lLJxZXv6P1jhFQH2h1lBFysc6PiFbi/9CCYJv0EZoctSueQjI6sVXxp
         wrdiSPQbrqX0avOnK++2tDvPuwxYrDnZcuSYlZ1qOP25ntSsHOLqMLIaVR1hW/I1flmt
         Ecr2TimeaFuxr+4GuA70/2E7oGB8cEz5VDkVTxVJyT+MRVIg6/BvHHjcyMxAPp2HV4et
         dx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740658471; x=1741263271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=534/gYe6iq47ZwP+Br1SPG+hyWeoQO/Rhs3lb6Dkvgo=;
        b=sE/IexzLukg4cUGSdeiEr2yXIeoumxRQ4n3q2DFmABD4ZPgZGlEzDM6J/H4HHWBd6U
         ikDXbENdopuDYNBb21B4V/JBmjuDpEui4/vHrYSM7eGTjAiH13x2bLJhTYtbtRb7F1+X
         ym+aKN/Vn398v8vHNTChXvBsf/z07nA+4xEtxGXxR34tvUVlvcnBwFs9jduJ1M0RXQuH
         /mAkCXEnYGruS5onDlK+axlT2P/eam8xoTjo6zv/BMSE2vfTYx+jp91u0eef5AOMSEb+
         Rpl7dvt2TRsaKLisGp0VEarg8LdhjblXWlZzAkufjpOyeVp5htw2qEDT8D2oJ2NCspUL
         ULpw==
X-Gm-Message-State: AOJu0YyohUb4e6YG8VYP8QJ+TiaBtcD2jxxY/T7trZKv/Ky04bXBfzlF
	8ASvIoHrK/hxQWpHuSgvpMdoE0iZJjY/8BB9TnZFyo3Eu/gTkIiu+dVHh9bB7R89BjD1iCD12QP
	wAV1GVf77i+zD2Vqt3diGCn0CLKDVvES8
X-Gm-Gg: ASbGnct4nMNs3rJBTCAojCvEILiHRkDjxaYDPD6ODEuJ3ScxsJ5SdweKx/8ZMmubyHS
	IjzZZjhs4qNmM2846mBPRc4Mc1+ODcBGFOwRkaWAqOLaCAWkuln2hizc9KuZAkDZmTOdzz6GPKy
	9dxfTrNYw=
X-Google-Smtp-Source: AGHT+IGcwAkse25B0aiJaf91xCOFfB3riWt5JKLfWzl9FQNzJ/w5lzaZkBCpRBBulccjEfHR7WjpOQeBFLj5Z/jH9lo=
X-Received: by 2002:a05:6402:274e:b0:5e0:685f:30b8 with SMTP id
 4fb4d7f45d1cf-5e0b724490fmr27079026a12.25.1740658470800; Thu, 27 Feb 2025
 04:14:30 -0800 (PST)
MIME-Version: 1.0
From: Betonmischer <vkosikhin@gmail.com>
Date: Thu, 27 Feb 2025 15:14:19 +0300
X-Gm-Features: AQ5f1JoXqg01CUP9ptZZYxPAoiPfFFlu1uJO8fhte3HEOqTBNlCgYwefNBCFS88
Message-ID: <CAMcVZfuSTvzS0BeX4AOT1i_bVhS9=kE3B=njWTPCm+1j3ehbYg@mail.gmail.com>
Subject: wireless-regdb: Update regulatory rules for Russia (RU) and provide
 new sources
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_041433_082558_84589960 
X-CRM114-Status: GOOD (  18.83  )
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

wireless-regdb: Update regulatory rules for Russia (RU) and provide new sou=
rces

Transmit power in the 5 and 6 GHz ranges for Russia is currently
limited to 100 mW, which is only partially correct. On certain
channels, depending on the revision of the IEEE 802.11 standard, 200
mW is permitted by Russian law.

Frequencies and transmit power available for use by the general public
in Russia are governed by three bodies of legal documents: on
registration of radio-electronic equipment, on allocation of radio
frequency bands, and the rules for the use of radio access equipment.
All of those must be taken into account to prevent the user from
accidentally failing to comply with regulations.

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
(http://publication.pravo.gov.ru/Document/View/0001202110220034). The
annex referenced by the amendments contains exceptions from the list
of devices requiring registration with the Federal Service for
Supervision of Communications, Information Technology, and Mass Media
(Roskomnadzor).

Another set of restrictions comes from the State Commission for Radio
Frequencies under the Ministry of Communications and Information of
the Russian Federation. I'll be citing the most recent amendments to
the Decision of the SCRF dated May 7, 2007, No. 07-20-03-001 =E2=80=9COn th=
e
Allocation of Radio Frequency Bands for Short-Range Devices=E2=80=9D
(https://digital.gov.ru/ru/documents/4039) which apply to the relevant
frequencies.

Decision of the SCRF dated June 16, 2021, No. 21-58-05
(https://digital.gov.ru/ru/documents/7973):

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
(https://digital.gov.ru/ru/documents/8628):

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

Decision of the SCRF dated September 23, 2023, No. 23-68-03
(https://digital.gov.ru/ru/documents/8628):

> 3. On amendments to previously issued SCRF decisions:
>
> 3.1. Based on the application of the Association of Trade Companies
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

Additionally, there are rules for the use of radio equipment which all
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
14.09.2010 No. 124=E2=80=9D (https://digital.gov.ru/ru/documents/4626), pag=
e
25:

> Requirements for radio access equipment of the 802.11ac standard
>
> [...]
>
> Limit values of average EIRP and average spectral power density EIRP
> when operating at the maximum declared power
>
> Frequency range, MHz Output average EIRP, dBm
> with TPC without TPC
> 5 150 =E2=80=93 5 350 MHz 23 20/23 (1)
> 5 470 =E2=80=93 6 425 MHz 30 27

(1) A value of 20 dBm is applied, except in the case of transmissions
for bands that fully fall within the 5150 =E2=80=93 5350 MHz range, in whic=
h
case a value of 23 dBm is applied.

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
(http://publication.pravo.gov.ru/document/0001202008070002), page 9:

> Requirements for radio access equipment of the 802.11ax standard
>
> [...]
>
> Maximum power in frequency bands, MHz
> 5150 =E2=80=93 5350 5650 =E2=80=93 6420
> Max. transmitter power , dbW -10 0

I propose the following changes to wireless-regdb by picking the
lowest transmit power value for each combination of frequency and IEEE
802.11 revision among the three bodies of legal documents. dBm units
are preferred over mW when applicable, as 23 dBm is slightly lower
than 200 mW after conversion.

IEEE 802.11n:

5150 =E2=80=94 5350 MHz 100 mW
5650 =E2=80=93 5850 MHz 200 mW

IEEE 802.11ac:

5150 =E2=80=94 5350 MHz 23 dBm with TPC, 23 dBm without TPC if contiguous
within the range, 20 dBm without TPC if discontiguous and out of the
range
5650 =E2=80=93 5850 MHz 200 mW

IEEE 802.11ax:

5150 =E2=80=94 5350 MHz 100 mW
5650 =E2=80=93 6420 MHz 200 mW

IEEE 802.11be isn't defined in the Rules for the Use of Radio Access
Equipment yet. Therefore, depending on the interpretation, 320 MHz
could be illegal to use in public networks until explicitly included
in further revisions. Russian law tends to be restrictive when it
comes to radio communications, and, to my knowledge, no major brand
has officially shipped a device with Wi-Fi 7 capabilities enabled in
Russia.

The source currently cited in db.txt
(https://docs.cntd.ru/document/1300597464?section=3Dtext) is not on a
government-maintained website. It is also limited in scope and
doesn't cover all of the relevant regulations. I propose to replace it
with different sources, which cover this topic exhaustively,
from official government platforms:

Decision of the SCRF dated June 16, 2021, No. 21-58-05
(https://digital.gov.ru/ru/documents/7973) =E2=80=94 contains the most rece=
nt
frequencies for 2.4, 5, and 57=E2=80=9366 GHz bands

Decision of the SCRF dated December 23, 2022, No. 22-65-05
(https://digital.gov.ru/ru/documents/8628) =E2=80=94 6 GHz band added

Decision of the SCRF dated September 23, 2023, No. 23-68-03
(https://digital.gov.ru/ru/documents/8628) =E2=80=94 reference to LBT added

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
14.09.2010 No. 124=E2=80=9D (https://digital.gov.ru/ru/documents/4626) =E2=
=80=94 rules
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

For research and verification purposes only, up-to-date
compilations are provided by law firms:

https://www.consultant.ru/cons/cgi/online.cgi?req=3Ddoc&base=3DEXP&n=3D8340=
25
(free access from 8 PM to 0 AM, Moscow Time)

https://base.garant.ru/199539/53f89421bbdaf741eb2d1ecc4ddb4c33

--
Best regards
Valeriy Kosikhin
Head of Testing Lab
3DNews - Daily Digital Digest
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Web: www.3dnews.ru
E-Mail: vkosikhin@gmail.com

