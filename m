Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C425DC48260
	for <wireless-regdb@archiver.kernel.org>; Fri, 26 Jan 2024 10:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=krVn4OeUL/ZtKJj1q/PKY6xPFZUbhi/ZPPKjnOMh/OU=; b=laoV387WfRuBmFk5pSRMhsyVY3
	3X0Cr3nQivVc6qOYRiqEkCfAgt07Ns2uYIB+6tMDK0Ht4N4u47Aov49Yn5ZZRyoPNcIlb18Xehvfd
	6kROPEys52GDlFMlr0lm4sa3apNkETQBSR7We4VgIt2ijFNBgg7fi+P4RjlbVqpaH/p6h2e79GFhJ
	aNgImZwxQPApdHBaAGItyelacCY2pOG/W72lIcg0Ne5R7FaJQm1RlEZN6W6AW7doVe8zecDj7GrRz
	NtcM91Onw1vMnOa4P5riInXVtCiLWQuKbLtl7N/BBNEq9XnJ9f11fp+WIdLr0uD4pL/Kb8KgvImNg
	iR+xaBPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTJjN-00000003tM5-01aE;
	Fri, 26 Jan 2024 10:46:41 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTJjJ-00000003tLS-43ek
	for wireless-regdb@lists.infradead.org;
	Fri, 26 Jan 2024 10:46:39 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-783d4b3a00bso20572785a.3
        for <wireless-regdb@lists.infradead.org>; Fri, 26 Jan 2024 02:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706265994; x=1706870794; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=krVn4OeUL/ZtKJj1q/PKY6xPFZUbhi/ZPPKjnOMh/OU=;
        b=mE3Vs9HJtG7owGg/wM65Yz3ONkugS0s+Bs7SfLMZdwlj9/Rt2kH4MR0PhEpKJBPHP3
         JtZHpgwNCOFRteSD2dVhtOOl4Ul0Pg/CEcJGETB1Qs/b00cbvFFsxkhDzpSoYiZjclRV
         h30FQtc1GaLT8Pf6qMoGXouxg17bnerr81GtA+9fqZ2xPlWrVLUL1OmxQ3faj2bDcDKA
         yur22J2/xVOmaWdomjdGOEEHWs1ZxUoDYTU/JMmqyJFP9C5Bz96bXn6X6zR+6JmhWVLC
         8ASXwE40/V9/RfkHviV4VbTEgC7Z04eA0knHQaCkcgWv1LdJIGS7eIeV9A+TmmPE+jqf
         W4pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706265994; x=1706870794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=krVn4OeUL/ZtKJj1q/PKY6xPFZUbhi/ZPPKjnOMh/OU=;
        b=qHA+wbIqvsPiFcAD2JPmjPOf2sapZ+9TsC3I3tCk48+LBej0jHP+OTzoWwYpsuq8kV
         gm+qzlVJiq5nv1eFKKunC5W7Qhum6A4i2MnHvtHGz7hW2N5XbXJh63Jxrmcpm9Za8Y0d
         LfBvC80YbanUPSBQdT2CnIDrlLiw0/roUDOKQsnuQDT5xwYmP62pXtCmpri7s6V/uZn1
         DRA94SxdSTu0a8HraqeAurWZIv+wTbKxpEizE6Dxmwzkj6XxmqDJNiKfSiCdLYZoLcBI
         tOqUgNNqxyZvLISyg7AZwn/t96d3hw9K0H+Gg9qoXukcj5dRXMqzD9yXlnkoHXSsX/Ao
         4nHQ==
X-Gm-Message-State: AOJu0Yxo/UEesyuM/wOdz5Mu71GHZfXPaJocU2+TM/iiBmhwzWuNo02Y
	lD+cc4GbWpva6dVB0zTQ0HzuYlj5HDSXW5t4ho0j4CHNtIxtyMjHgn6wKqfXlA9405A8K7z8TWl
	2/+PJpa8hSNevduvJJ1NWD6Ip/hY=
X-Google-Smtp-Source: AGHT+IG4KEy17knQeCJ7D0bBdlM0MgTqZGNJPR4DCzhUZ8j0NKQ177ro1LkU5tHWow08DHmc0sdOCfKP8jddXUu01go=
X-Received: by 2002:a05:6214:2249:b0:686:ab0f:9ad0 with SMTP id
 c9-20020a056214224900b00686ab0f9ad0mr1211997qvc.124.1706265994387; Fri, 26
 Jan 2024 02:46:34 -0800 (PST)
MIME-Version: 1.0
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
 <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
 <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net> <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com>
In-Reply-To: <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com>
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Fri, 26 Jan 2024 12:46:23 +0200
Message-ID: <CAAgmp6vdK-bMJCnXUqhPPADRcd3sJXeFvuSOt5_7HCSV2dVKEQ@mail.gmail.com>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
To: b.K.il.h.u+tigbuh@gmail.com
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, thomas.huehn@hs-nordhausen.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_024638_030957_A6265C16 
X-CRM114-Status: GOOD (  30.36  )
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

Hi,

The only project I've heard of that implements such functionality is
https://github.com/thuehn/Minstrel-Blues.

On Thu, Jan 4, 2024 at 12:02=E2=80=AFPM <b.K.il.h.u+tigbuh@gmail.com> wrote=
:
>
> Ideally, TPC should be a fully automatic mechanism that reduces
> transmit power between the two points to as low of a level as possible
> while delivering the same quality of service. The purpose is to reduce
> the excess headroom in each link. I.e., if you could still link with
> 65Mb/s towards a given direction using 14dBmW, you should not transmit
> with 20dBmW.
>
> Some only set the AP TX power globally (i.e., same towards all of its
> connected clients at the moment) to tackle the hidden/exposed node
> problem, but again must do this adaptively and change this constantly
> without human intervention. There exist multiple advanced algorithms
> for this, some proprietary tuned for corporate deployment.
>
> Actually, if we accepted automatically retuning tx power with iw based
> on actual link stats of momentarily connected clients every 60s with
> cron, this could be added to OpenWrt pretty easily.
>
> > Class A devices control their transmit power within =C2=B13 dB and clas=
s B devices control their power within =C2=B19 dB.
>
> - https://www.litepoint.com/blog/wi-fi-6-ofdma/
> - https://www.cisco.com/c/en/us/td/docs/wireless/controller/technotes/8-3=
/b_RRM_White_Paper/tpc.html
>
> On Thu, Jan 4, 2024 at 10:42=E2=80=AFAM Johannes Berg <johannes@sipsoluti=
ons.net> wrote:
> >
> > On Thu, 2024-01-04 at 10:07 +0100, b.K.il.h.u+tigbuh@gmail.com wrote:
> > > You can find a wording in most such regulations that if TPC is not
> > > supported, the maximal TX power must be reduced by 3 dBmW. Hence in
> > > all such cases, the entries in db.txt contain 3 less than the maximum=
.
> > >
> > > If, on the other hand, you know of a country that specifies that
> > > devices lacking TPC may not use the band at all, all such band entrie=
s
> > > must be omitted (commented out along with a URL).
> >
> > Yeah, that's how we (currently) handle things.
> >
> > I'm not even sure what the requirements would be for "TPC" to be
> > implemented, tbh.
> >
> > > > As far as I know the kernel doesn't have facilities to support TPC =
or
> > > > transmit power control,
> >
> > Right. I have, however, heard the interpretation that the fact that we
> > have - even if nobody uses it - the "iw set txpower" command means that
> > we *do* have TPC ... Not really sure what to make of that though.
> >
> > > > nor does the wireless-regdb database.
> >
> > Correct. With the new regdb format we could add something that would
> > enable these ranges in the kernel only with some additional
> > requirements, but
> >   (a) we don't implement that now, and
> >   (b) I don't know what the requirements would actually be, e.g. would
> >       it be enough that the driver promises it implements "TPC" in some
> >       way? Or even the manual setting?
> >
> > > > And so
> > > > in the database we would either omit rules that require TPC, or inc=
lude
> > > > alternative rules (as specified by local regulations) not requiring=
 TPC.
> > > > Am I right?
> >
> > Right.
> >
> > johannes
>

