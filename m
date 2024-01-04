Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 682CBC47073
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jan 2024 10:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xkAVAVtuW/FEWQGBRaWmPPCw9PXsA3CUF82V5AziZgc=; b=2d6tq8WcQc78SKdkF/Nq3s2VBS
	zQu45Upoqc6pYuudZE5IZUg36TuMFSbuXaJDHmOZk8igMLkbYdDlZTsNduv/HVHxm8iGg4u8ma2Cn
	8VHaRPhgB7hBWecr5E2VvSTfYkXXp6llgassw0gbA7jUwzN84/nwdrAPpFKeOLYueIUaO6k+D+dcK
	8a2j3pmDtaUkVOpOMRM6tgLkH+VxIsvXJlIvSPQ7nvpxY/jIJbBd+KztbJc9XuB4gOyLqBgy0PrcI
	HME+ANz5RQsqvm0QY1nWSxvdoCeSwVjEH+kkHE6eUOR7wiAaQfywhd69SUHsfVU5JBMKmO6LJm9I7
	7jJFz73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKXd-00DSRT-2p;
	Thu, 04 Jan 2024 10:01:33 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKXa-00DSQF-2i
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jan 2024 10:01:32 +0000
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-7bbf9437261so5301839f.0
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jan 2024 02:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704362488; x=1704967288; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkAVAVtuW/FEWQGBRaWmPPCw9PXsA3CUF82V5AziZgc=;
        b=UKDleibgMy8iErTg3/7Hw/+ywXzE//1mNjYH7K2tT74DMNcbp3pjjoLxXZp8tjoAoE
         uwUrnJO+JQOV0Wy5aU/sIYwPJwlNi7jtSUHyMh/6RBfiw5sRIZMtKUFwHNN1tR5tLTVw
         ZtFdPvufFbCSAxvauVDHNBEGxlNmrCj05X4KBgfNIFpHkTVoUlwuv885+dll1KgHBzVZ
         f5sKvlJaP8qk2svvX1Y45CA/BiVU3r5fmbO9jAAX6RVGoH6YJ6VTs5m5affiqpQOSyhR
         JxD4L/ZfJxIE/55+mg6bD636vUS+XqsxTR6/IbkD2afGLHZnlsVlOoUFBFU/DV5Vr8bo
         AEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704362488; x=1704967288;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xkAVAVtuW/FEWQGBRaWmPPCw9PXsA3CUF82V5AziZgc=;
        b=miBbxjnMysJkrhFQ03AnUXKTdcLoGXB4rh0+m/H0HiwUkQmoyTVGi0hGL4YW4zPzbv
         ww+sbCn4k1nvX2X2Z0ksziV14vUlioRkpIQQqXgU4MSSt5o2z9Jqr08m6q5oeilxz9tn
         7HG4N17G0FZxI2rMM5ogRVNUkwCqFr7ft4G23McsKlpMhTJ12qj6lKlBUQwBRrrnx6ug
         5ICv0Z6WLpH5vGrPIxSe47nSF/YZ67asuu5UJHxGY60pTGIc26IAKZNRy87K2r8qlowF
         +plYYCj8DegM/1xRgZeAT3Rt7NUDXcezOUUo3EuMuiJRHYlHsRYxpV9/Pf/KwlMikpUT
         UDEw==
X-Gm-Message-State: AOJu0YyiwanBNuVKBtLscLx9blEa/FoCJqLEma5ZJe71amrCl/Hx6hyN
	1RX5UwCsDQmrNJp5rdd8JaLu0eOCBl7VqJKzmDirGqcQHNg=
X-Received: by 2002:a6b:f913:0:b0:7b7:fddf:678d with SMTP id
 j19-20020a6bf913000000b007b7fddf678dmt354268iog.11.1704362487805; Thu, 04 Jan
 2024 02:01:27 -0800 (PST)
MIME-Version: 1.0
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
 <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com> <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net>
In-Reply-To: <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Thu, 4 Jan 2024 11:01:16 +0100
Message-ID: <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_020130_878146_692BA284 
X-CRM114-Status: GOOD (  25.07  )
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

Ideally, TPC should be a fully automatic mechanism that reduces
transmit power between the two points to as low of a level as possible
while delivering the same quality of service. The purpose is to reduce
the excess headroom in each link. I.e., if you could still link with
65Mb/s towards a given direction using 14dBmW, you should not transmit
with 20dBmW.

Some only set the AP TX power globally (i.e., same towards all of its
connected clients at the moment) to tackle the hidden/exposed node
problem, but again must do this adaptively and change this constantly
without human intervention. There exist multiple advanced algorithms
for this, some proprietary tuned for corporate deployment.

Actually, if we accepted automatically retuning tx power with iw based
on actual link stats of momentarily connected clients every 60s with
cron, this could be added to OpenWrt pretty easily.

> Class A devices control their transmit power within =C2=B13 dB and class =
B devices control their power within =C2=B19 dB.

- https://www.litepoint.com/blog/wi-fi-6-ofdma/
- https://www.cisco.com/c/en/us/td/docs/wireless/controller/technotes/8-3/b=
_RRM_White_Paper/tpc.html

On Thu, Jan 4, 2024 at 10:42=E2=80=AFAM Johannes Berg <johannes@sipsolution=
s.net> wrote:
>
> On Thu, 2024-01-04 at 10:07 +0100, b.K.il.h.u+tigbuh@gmail.com wrote:
> > You can find a wording in most such regulations that if TPC is not
> > supported, the maximal TX power must be reduced by 3 dBmW. Hence in
> > all such cases, the entries in db.txt contain 3 less than the maximum.
> >
> > If, on the other hand, you know of a country that specifies that
> > devices lacking TPC may not use the band at all, all such band entries
> > must be omitted (commented out along with a URL).
>
> Yeah, that's how we (currently) handle things.
>
> I'm not even sure what the requirements would be for "TPC" to be
> implemented, tbh.
>
> > > As far as I know the kernel doesn't have facilities to support TPC or
> > > transmit power control,
>
> Right. I have, however, heard the interpretation that the fact that we
> have - even if nobody uses it - the "iw set txpower" command means that
> we *do* have TPC ... Not really sure what to make of that though.
>
> > > nor does the wireless-regdb database.
>
> Correct. With the new regdb format we could add something that would
> enable these ranges in the kernel only with some additional
> requirements, but
>   (a) we don't implement that now, and
>   (b) I don't know what the requirements would actually be, e.g. would
>       it be enough that the driver promises it implements "TPC" in some
>       way? Or even the manual setting?
>
> > > And so
> > > in the database we would either omit rules that require TPC, or inclu=
de
> > > alternative rules (as specified by local regulations) not requiring T=
PC.
> > > Am I right?
>
> Right.
>
> johannes

