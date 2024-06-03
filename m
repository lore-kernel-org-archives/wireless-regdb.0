Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058FAC25B76
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Jun 2024 07:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8olmHpdHVxcJDOhziNdiQwy+oh+3e9tYhXZk0a92zQ=; b=suHxOLJvh7URpNJa2kziJ7aqQ3
	A+fmjSXtJsQsOTpp52Vpr6+LjaoOBekvuGmUnc9XiDCBHwJv8zkBSZptwHA47SEdh9VYlcfyie3TA
	PnHBQ4dQGAOikLhbjqVwbyCebbAnjf9LVi8hYVkeE8UpjlMeQHWgBemdnFbhaG/1pcLbLyxVbmGj2
	77GzH5Q4SVYCj/ZEc0mxPpWU3IvlJeMlOPz1CoxuLAHMq/gujJxD5aOFqSAX2FFD6WLIjogmYmRWI
	+uxCGdINU6jnnN6EnPS0LfJroUyEeFGaWblCicQA8S3S8EcMCZwW8HcXIhJKyDtdn/Rcb2OucTbL1
	uQogpg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1pj-0000000FrFI-1dLu;
	Mon, 03 Jun 2024 07:10:19 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1pg-0000000FrD0-12ui
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Jun 2024 07:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=A8olmHpdHVxcJDOhziNdiQwy+oh+3e9tYhXZk0a92zQ=;
	t=1717398613; x=1718608213; b=YUDb9eG2G0Yp9eJ23KPMaYYWdnIN3euhHODc5T2NLAh5kYu
	10XyQ/XPmLN5ZY5tETbctIizD9lhNc+Jis8d4JUDnlUHQI+LlHocfCbC0dUudCfhIzvBOxtsnjHkz
	Ol/VHB/ONXZs/2Vd1BRuvXFzrjv9zwHAzPN1BUS9kB/raWX5KxB/iCty7ekGkSW0ObiLyBoTYMyRf
	CWZ6/6LszOG4aPBxYcHwHMnLGhjz6i1yiHkaQkYf+PFLUIkJqMurYH927+vcJuNzZMTE/kmIe4cft
	NrAASyZmCwHsGwgPoUSVL/L+cfAtWWbS4t5OjqzdGw+BwkHNjeZN2zOdSawzCGCQ==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1sE1pZ-00000009I8v-3Oes;
	Mon, 03 Jun 2024 09:10:10 +0200
Message-ID: <234e631d44001c22368b8ddad916d9a0f13604f6.camel@sipsolutions.net>
Subject: Re: S1G and 6GHz channels in Estonia (and EU)
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Taavi =?ISO-8859-1?Q?Eom=E4e?= <taavieomae@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless
	 <linux-wireless@vger.kernel.org>, Kalle Valo <kvalo@kernel.org>
Date: Mon, 03 Jun 2024 09:10:08 +0200
In-Reply-To: <CAGb2v66xjwgcMZ2-N9CEg055Q+mLQKm20Nvo9mmHD3LY=C=Vjw@mail.gmail.com>
References: <CALfTr+pXU_=ORh2w3GE+YiU9igh61uWZS-zdG1GyKFb5Qs6fTg@mail.gmail.com>
	 <CAGb2v67-9Gyxwpy8w9X=Gz7wXuVO0DncwXoRPV6_zrpF7MdEsg@mail.gmail.com>
	 <CAGb2v66xjwgcMZ2-N9CEg055Q+mLQKm20Nvo9mmHD3LY=C=Vjw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_001016_566112_AA6FB3DA 
X-CRM114-Status: GOOD (  15.17  )
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

On Mon, 2024-06-03 at 14:39 +0800, Chen-Yu Tsai wrote:
> (Resend to Kalle's correct email address)
>=20
> On Mon, Jun 3, 2024 at 2:36=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wro=
te:
> >=20
> > (Adding linux-wireless ML, Kalle and Johannes)
> >=20
> > On Mon, Jun 3, 2024 at 1:13=E2=80=AFAM Taavi Eom=C3=A4e <taavieomae@gma=
il.com> wrote:
> > >=20
> > > Hi!
> > >=20
> > > I have a few questions about the current regdb values for Estonia/EE =
and EU:
> > >=20
> > > 1) There are no allowed S1G/HaLow/802.11ah EE (or EU) bands:
> > >=20
> > > Based on resources online and Estonian law
> > > (https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv - Extra 6)
> > > these two additions should be correct:
> > >=20
> > > + (863 - 868 @ 1), (25 mW)
> > > + (915.8 - 919.4 @ 1), (25 mW)
> > >=20
> > > (Note: I don't see a way to define duty-cycle limitations, but that
> > > should be okay?)
> >=20
> > I'm not sure if there are plans to support S1G in Linux. If not then
> > the information would go unused and untested. If it is supported, then
> > patches are more than welcome.

There's some S1G support, but perhaps only in hwsim right now.

johannes

