Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEED7D591A5
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 Nov 2024 16:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gc645Fqa6qgDAAXRDmGCyal4u71PxNRjXFB8kh8iuwc=; b=JXh0zlGKNWR1lAwRID8nWT3Azn
	EazQ5BMuGSYtJHKOjYDXUiE4JLo58qZV7lPo6f8AjiFl3O2aS2Hzm1k/xZLkOCyxJL0B7Hfdy/zez
	HfFo1gBPCt4gEVDct/lVRzdmhpFXFp+i8yIKR++Qp8D1E9a+aFzK3lYsuV2041cabF6AjsV49Q8an
	8S/MCFdqTORghPSDL56yAucsk5sw9Mk8ti/gnjcFUbZc6dDpsQIfBp8uCaRQWddxCLuCjhUlT2GVO
	AlW8oHcSgYaXFpT22+enjFd/n0OcOPiN0K1fFddCBSZPQGn1iGBS04ShJLJ+Cj9tdgscwmqsMuKEM
	vbEh3K8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDRIX-0000000D3oO-2FHy;
	Tue, 19 Nov 2024 16:41:53 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCIHK-00000005aWr-0t0f
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 12:51:55 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-72467c35ddeso2002997b3a.0
        for <wireless-regdb@lists.infradead.org>; Sat, 16 Nov 2024 04:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731761513; x=1732366313; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gc645Fqa6qgDAAXRDmGCyal4u71PxNRjXFB8kh8iuwc=;
        b=BlGatlluEUbkRiHY1V4QDvbVVFlUkZ04uatvsKFCs/JoxTnOtUU00hbuLl55rvFpFy
         Q6T6SOEYLHJ+TMXlXVsS8Sd28xUO1VCZqpp3J+aDT9WlSiIOmBxBZE1yqBU8pAdOnR3j
         iXhh2ekbwD3iafSB1BT8KiAJOEVnAPBee1jvHVqReL6J6QRSmVsAWPep50lLLp5IAwtQ
         uY02EaBS2FbyBcZsxjAxWsoCU+v1fGeBKfjOrBG/5QIZMvFjMLcN4rVyxdMzKxsDxYma
         jZTbEQHSVX2Y99+S3ymFH4Qs9rIkmovvHScdV/9Nv9v/Noui7kqVCCjXgZvVKtJ5t55h
         cxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731761513; x=1732366313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gc645Fqa6qgDAAXRDmGCyal4u71PxNRjXFB8kh8iuwc=;
        b=ZYQG1D3ZPf8wWqjZvOFfvtMYiVf5pISV/r/9yCUYB/VLKi3UckaPSffkxRCWEYsOhi
         1U4vC0YtxOrDD+ikcGo83p03l7oPm8WfxkOddElBjI+i3cKDYnq0OUNgbzRHVUFJT7Ee
         +VADJCESY/Kh5b8GmNxn0tkegl9qPhmfFu3HeXjybF1i6q9ydFPITFiJmEUXWBHK2XTC
         VkUX/3939mzEF/5yPRvW5VDXY9YO+1rbr5UN3TN4rxnFu/QtTWFBs6zYmDsOnIKVP4TE
         mAmAMLoH/HD3tPQMzyD1H2bLGmnrkk1sttcUZ6zxTLIMBk0eoWjM5/pCnpMwIyL8VIZZ
         OBqg==
X-Forwarded-Encrypted: i=1; AJvYcCX2NIvgY3ePpTnIOnZDXkjYg0/as5XmgiXHGYeM9LOs/vt8G8SwSoFhtKYyz2ZbDtgWVmyl8MLrP92YOhEyBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyGfRRPsLAW7IXzWE/g4F6OQp+94ob1X48rkjb2gDlqY8T3XVRX
	NbxyXwcBp+TqMrvVWS7IcR96yaTbOaufsxE4aFHMaY74jNDyx7VpIn5TPZLvTHrABiBNsoJkiZ5
	Qx+ZGp2UMQqJDrKb6dOwJW8WBRNk=
X-Google-Smtp-Source: AGHT+IHGreIYzr2bJ/6W0ODmIX4Ny1M/rNgdyZsolUqt32ukNk6xZFUGNGfFW46QzU0yzTgTg2okmGJunKWq7j63Lf0=
X-Received: by 2002:a17:90b:4d08:b0:2e9:20d8:414c with SMTP id
 98e67ed59e1d1-2e9fe62d772mr15300927a91.5.1731761513234; Sat, 16 Nov 2024
 04:51:53 -0800 (PST)
MIME-Version: 1.0
References: <CAPGdDAmPp80VEZ0TG=cS3QAYKqELHfqChid0wYZ7eLAENFY86Q@mail.gmail.com>
 <2dcd4763853b4645bab7911482209de6@realtek.com>
In-Reply-To: <2dcd4763853b4645bab7911482209de6@realtek.com>
From: Ivan Bulatovic <combuster@gmail.com>
Date: Sat, 16 Nov 2024 13:51:42 +0100
Message-ID: <CAPGdDAkCh81SYsZiCM8pEn8hEpsT19H1DkBx5Tr4A5a+uThhhQ@mail.gmail.com>
Subject: Re: wireless-regdb: Updated regulatory rules for Serbia (RS) fails to load
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_045154_249749_52522483 
X-CRM114-Status: GOOD (  10.22  )
X-Mailman-Approved-At: Tue, 19 Nov 2024 08:41:25 -0800
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

Patch works for me Ping-Ke, cfg80211 doesn't return the error any more
when RS is set.

Thanks,

Ivan


On Sat, Nov 16, 2024 at 9:30=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> Ivan Bulatovic <combuster@gmail.com> wrote:
> >
> > since commit b44edb2eaf3a917fbd7005f05c6faa202c984152 regulatory.db
> > fails to load when country is set to RS with message:
> >
> > kernel: cfg80211: Invalid regulatory domain detected: RS.
> >
> > Offending lines are:
> >
> > 1646: (5725 - 5850 @ 80), (24), DFS, AUTO-BW
> > 1647: (5850 - 5875 @ 80), (24), AUTO-BW
> >
> > OpenWRT is impacted, but I can reproduce this on Linux also.
> >
>
> I sent a patch [1] to correct this. Could you please give it a try and ac=
k the patch if
> it works to you?
>
> Thanks.
> Ping-Ke
>
> [1] https://lore.kernel.org/linux-wireless/20241116082417.8720-1-pkshih@g=
mail.com/T/#u
>

