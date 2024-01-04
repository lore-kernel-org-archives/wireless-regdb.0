Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1426DC47074
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jan 2024 09:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eqFUtFVL0U7tdRFhaeYDMZRzFaaJJ9J0Tp73uqe4ZXQ=; b=TcirY7WaW8m0DokGcBAjSAf3Ib
	D64uAYhVWWM4mWyaDOFOcXPkL26gkPbPIbQoi8xoXSMmmOUw/leObwlsYAcOSL4+KUluUiJZ7ay/q
	NGsxc+mtckcnMAYeAkAxFafiv9y1HviNeZ5T7Z9DH7EtjBRAjwjwYDmUErv9tlOI6DfiY125LqJJZ
	pr/nfnkFlz6S3XJZxLVdcSxiXQl/adlLiI+vaqvrCYt8qAS6WnEX1dk3Ap4p9ln5Jh4hr0uvtUoF2
	eMfJ0gzFhF8cXcRlmMD1IlayWC/nmwJQe4WDlr77PL1+ZYqxuarS86YaQxOXcu0e2Memgi6EOI2w2
	Z4mKkVvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKFK-00DPkN-37;
	Thu, 04 Jan 2024 09:42:38 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKFI-00DPjp-22
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jan 2024 09:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=eqFUtFVL0U7tdRFhaeYDMZRzFaaJJ9J0Tp73uqe4ZXQ=;
	t=1704361354; x=1705570954; b=WcNzYA+7e4IGFU3sHiSZcDcu0YWDumqDhG2fO24un2a5bLX
	Vbb0NcpjppFC/KRFuHvZ39wRCKP5ErJH6+tb9LtxkTEKShh/GYMooTBicBdZPQBO16ObH2Kbd9MAs
	It4F4HaLAPsA92wl//eZkN1DO21Ab1Y9ypuNF4deQKarl7CP7j1rgcZ22ljc2rwMzxUFSBCHGS2O7
	nZ97F4pu26JBXPi0OVYzvM5AV8BmPdaMOKa+Dgvp7NLmqnt7zMgECBpR1dIbid3xDKq8Z/O2R1XCH
	iuMKPqulY3Cn4vxk2qkuMym2s6RptfDnM//38yanH7cxgyGos5jGRr2ZTsSeI9gg==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rLKFD-00000004THE-43RE;
	Thu, 04 Jan 2024 10:42:32 +0100
Message-ID: <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
From: Johannes Berg <johannes@sipsolutions.net>
To: b.K.il.h.u+tigbuh@gmail.com, wens@kernel.org
Cc: Seth Forshee <sforshee@kernel.org>, Kalle Valo <kvalo@codeaurora.org>, 
 wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless
 <linux-wireless@vger.kernel.org>
Date: Thu, 04 Jan 2024 10:42:30 +0100
In-Reply-To: <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
	 <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.2 (3.50.2-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_014236_693468_C4982220 
X-CRM114-Status: GOOD (  16.41  )
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

On Thu, 2024-01-04 at 10:07 +0100, b.K.il.h.u+tigbuh@gmail.com wrote:
> You can find a wording in most such regulations that if TPC is not
> supported, the maximal TX power must be reduced by 3 dBmW. Hence in
> all such cases, the entries in db.txt contain 3 less than the maximum.
>=20
> If, on the other hand, you know of a country that specifies that
> devices lacking TPC may not use the band at all, all such band entries
> must be omitted (commented out along with a URL).

Yeah, that's how we (currently) handle things.

I'm not even sure what the requirements would be for "TPC" to be
implemented, tbh.

> > As far as I know the kernel doesn't have facilities to support TPC or
> > transmit power control,=C2=A0

Right. I have, however, heard the interpretation that the fact that we
have - even if nobody uses it - the "iw set txpower" command means that
we *do* have TPC ... Not really sure what to make of that though.

> > nor does the wireless-regdb database.

Correct. With the new regdb format we could add something that would
enable these ranges in the kernel only with some additional
requirements, but
  (a) we don't implement that now, and
  (b) I don't know what the requirements would actually be, e.g. would
      it be enough that the driver promises it implements "TPC" in some
      way? Or even the manual setting?

> > And so
> > in the database we would either omit rules that require TPC, or include
> > alternative rules (as specified by local regulations) not requiring TPC=
.
> > Am I right?

Right.

johannes

