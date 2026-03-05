Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FAB8EDEC07
	for <wireless-regdb@archiver.kernel.org>; Thu,  5 Mar 2026 04:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Irsv3o8UJ/ocw0TNQ/YmhEoJoegODW1TK2IHoRPY0Zg=; b=jRC0Y4Xggvmcrh8h+dYJX+HE10
	V3eXI8Gzbc17z4PgdCXbRwRki1WYli3mg2b0Dcx39cKn+1NUqj9Ti/L+f6xmUpyxfYvJCNjvp/3sg
	6EpnIf3RVJ1WGJJ9rkFiaBBP244MzHczzsGnbeWZtMCip90CvS0pdvRPw46mSpY+IQTuqcsQReD5E
	t/zGhmuLy/xt7arxUOa93vCnvSzHCn2FXsiHeFt0YCdc78YMZUjxQ1jpS9r1pAdpcqJBBmh1apyKL
	TgNky690r318opLhApfWpxfS1tU4kDJlnJwoVvhnyufO+CVQhLTyBdNjy5ePdzFc1MvLBj+yHnreK
	bMbm47Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0gT-00000000v4r-0IcY;
	Thu, 05 Mar 2026 04:51:37 +0000
Received: from sender1-o38.mgovcloud.in ([169.148.143.38])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0gP-00000000v46-1t2B
	for wireless-regdb@lists.infradead.org;
	Thu, 05 Mar 2026 04:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772686282;
	s=zmail; d=nic.gov.in; i=gaurav.kansal@nic.gov.in;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Irsv3o8UJ/ocw0TNQ/YmhEoJoegODW1TK2IHoRPY0Zg=;
	b=gjQl4lTkdbrlYrPvC/2cQgUz/ngKDRIes6Rahe0O4Xv77e3zKCekrZ5o9THr+vCf
	CLH2DoINX9pWbaw8mYg4ad0tEoT1GaVHwkTtOcfxbJOLt+fSR63uO6GYjcB4YgL672k
	g8fot9rgbrHmt1AoDHjhCRN4Nby8ns4iJwZn9jok=
Received: from mail.mniccloud.in by mx.mniccloud.in
	with SMTP id 1772686281604138.5197316429062; Thu, 5 Mar 2026 10:21:21 +0530 (IST)
Date: Thu, 05 Mar 2026 10:21:21 +0530
From: Gaurav Kansal <gaurav.kansal@nic.gov.in>
To: "wens" <wens@kernel.org>
Cc: "Degrader Snehil" <degradersnehil@gmail.com>,
	"linux-wireless" <linux-wireless@vger.kernel.org>,
	"wireless-regdb" <wireless-regdb@lists.infradead.org>
Message-ID: <19cbc560b77.26d9e41153869.4098135238965712348@nic.gov.in>
In-Reply-To: <CAGb2v6406826bWiKEQ0jf0TSPL9xtNx+i=_YCRJNnUjUftF0_w@mail.gmail.com>
References: <CADqxL9qYq_+8dPgXj5i_HjkpTOZwiAawsa90tNbA4Q87ZhCrSA@mail.gmail.com>
 <CAGb2v6617V-jLnLrBYEZfSiv-2c8QsN2HMCmQbaXdm9NVwGGEA@mail.gmail.com> <19cbc39a90e.1cd9982953056.6486968654066866605@nic.gov.in> <CAGb2v6406826bWiKEQ0jf0TSPL9xtNx+i=_YCRJNnUjUftF0_w@mail.gmail.com>
Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 GHz
 (5925-6425 MHz)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Importance: Medium
User-Agent: MGov Mail
X-Mailer: MGov Mail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_205133_772074_8E0D96B1 
X-CRM114-Status: GOOD (  25.90  )
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

Hi ChenYu,

Oh my miss.


Reagards,
Gaurav Kansal


From: Chen-Yu Tsai <wens@kernel.org>
To: "Gaurav Kansal"<gaurav.kansal@nic.gov.in>
Cc: "Degrader Snehil"<degradersnehil@gmail.com>, "linux-wireless"<linux-wir=
eless@vger.kernel.org>, "wireless-regdb"<wireless-regdb@lists.infradead.org=
>
Date: Thu, 05 Mar 2026 10:01:05 +0530
Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 GHz (5=
925-6425 MHz)

 > Hi,=20
 > =20
 > On Thu, Mar 5, 2026 at 1:28=E2=80=AFPM Gaurav Kansal <gaurav.kansal@nic.=
gov.in> wrote:=20
 > >=20
 > > Hi ChenYu,=20
 > >=20
 > > Didn't the information is already merged as per my last patch submissi=
on?=20
 > =20
 > It looks like I requested some changes, and you agreed to send an update=
,=20
 > but I never got it.=20
 > =20
 > ChenYu=20
 > =20
 > > Regards,=20
 > > Gaurav Kansal=20
 > >=20
 > >=20
 > >=20
 > >=20
 > > From: Chen-Yu Tsai <wens@kernel.org>=20
 > > To: "Degrader Snehil"<degradersnehil@gmail.com>=20
 > > Cc: <linux-wireless@vger.kernel.org>, "wireless-regdb"<wireless-regdb@=
lists.infradead.org>=20
 > > Date: Thu, 05 Mar 2026 09:08:56 +0530=20
 > > Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 G=
Hz (5925-6425 MHz)=20
 > >=20
 > >  > Hi,=20
 > >  >=20
 > >  > On Thu, Mar 5, 2026 at 3:16=E2=80=AFAM Degrader Snehil <degradersne=
hil@gmail.com> wrote:=20
 > >  > >=20
 > >  > > Hi,=20
 > >  > >=20
 > >  > > I would like to request an update to the IN (India) regulatory do=
main in wireless-regdb to add the newly permitted lower 6 GHz band (5925=E2=
=80=936425 MHz).=20
 > >  >=20
 > >  > Thank you for the information. Would you like to provide a patch?=
=20
 > >  > If not, I can write up a patch and tag you as the reporter.=20
 > >  >=20
 > >  > > The Government of India has officially opened this band for licen=
ce-exempt use via Gazette Notification G.S.R. 47(E), dated January 20, 2026=
, published January 21, 2026, issued by the Ministry of Communications unde=
r the Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy Act, 19=
33.=20
 > >  > >=20
 > >  > > Gazette details:=20
 > >  > >   Title   : Use of Low Power and Very Low Power Wireless Access S=
ystem=20
 > >  > >             including Radio Local Area Network in Lower 6 GHz Ban=
d=20
 > >  > >             (Exemption from Licensing Requirement) Rules, 2026=20
 > >  > >   File No : 24-04/2025-UBB=20
 > >  > >   Gazette : No. 47, CG-DL-E-21012026-269488=20
 > >  > >   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Comm=
unications=20
 > >  > >   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74e=
b6f6907934d17d0015ab5.pdf=20
 > >  > > The Gazette defines two device classes for 5925=E2=80=936425 MHz:=
=20
 > >  > >=20
 > >  > >   1. Low power indoor=20
 > >  > >      - Max EIRP         : 30 dBm=20
 > >  > >      - Max PSD          : 11 dBm/MHz=20
 > >  > >      - Max bandwidth    : 320 MHz=20
 > >  > >      - Restriction      : Indoor use only (Rule 5)=20
 > >  > >=20
 > >  > >   2. Very low power outdoor=20
 > >  > >      - Max EIRP         : 14 dBm=20
 > >  > >      - Max PSD          : 1 dBm/MHz=20
 > >  > >      - Max bandwidth    : 320 MHz=20
 > >  > >      - Restriction      : None=20
 > >  > >=20
 > >  > > Additional operational restrictions per Rule 5 of the Gazette:=20
 > >  > >   - Band is prohibited on oil platforms=20
 > >  > >   - Indoor use prohibited on land vehicles, boats and aircraft be=
low 10,000 ft=20
 > >  > >   - Communication with and control of drones/UAS is prohibited=20
 > >  > >   - Contention-based protocol is mandatory for all devices (Rule =
4)=20
 > >  > >=20
 > >  > > Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425=
 MHz (Rule 6)=20
 > >  > >=20
 > >  > > Proposed addition to the existing country IN entry in db.txt:=20
 > >  > >=20
 > >  > >   country IN:=20
 > >  > >           (2402 - 2482 @ 40), (30)=20
 > >  > >           (5150 - 5250 @ 80), (30)=20
 > >  > >           (5250 - 5350 @ 80), (24), DFS=20
 > >  > >           (5470 - 5725 @ 160), (24), DFS=20
 > >  > >           (5725 - 5875 @ 80), (30)=20
 > >  > >           (5925 - 6425 @ 320), (30), NO-OUTDOOR   # low power ind=
oor=20
 > >  > >           (5925 - 6425 @ 320), (14)               # very low powe=
r outdoor=20
 > >  > >=20
 > >  > > Note: Since both device classes share the same frequency range bu=
t have different EIRP limits and indoor/outdoor restrictions, I have repres=
ented them as two separate lines. Please advise if a different encoding is =
more appropriate.=20
 > >  >=20
 > >  > Unfortunately we currently only support one rule per band. I'm incl=
ined=20
 > >  > to add the VLP one so outdoor usage is allowed.=20
 > >  >=20
 > >  > > I have attached the official Gazette notification PDF as supporti=
ng evidence.=20
 > >  > >=20
 > >  > > Intel has also submitted a related update (Intel=C2=AE Wireless W=
i-Fi Drivers 24.20.2) for this band for India. I am not certain whether tha=
t patch covers wireless-regdb (db.txt) or only their iwlwifi driver interna=
ls, so I am submitting this request for wireless-regdb independently to ens=
ure the authoritative database is updated.=20
 > >  >=20
 > >  > AFAIK Intel manages regulatory requirements in their firmware, so i=
t is=20
 > >  > unrelated to the database we maintain.=20
 > >  >=20
 > >  > > Intel's Regulatory Domain Info was found in Release notes of thei=
r  Intel=C2=AE Wireless Wi-Fi Drivers 24.20.2 available at page 2 of https:=
//downloadmirror.intel.com/914148/ReleaseNotes_WiFi_24.20.2.pdf.=20
 > >  > > Please let me know if any further information is needed.=20
 > >  >=20
 > >  > The information you provided is very detailed. Thanks!=20
 > >  >=20
 > >  >=20
 > >  > ChenYu=20
 > >  >=20
 > >  >=20
 > >=20
 > >=20
 >=20


