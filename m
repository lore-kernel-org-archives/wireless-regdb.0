Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006B9C8303C
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 07:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdulQe9cXhzIof3BZ305Mmp1ccT/I4l/DavEKN1p4WU=; b=XbqSw9yhdsIst0
	uCCcgSVDjyQm1mqP6OFYNIv0KwOMmHP46uz0u/PK3mdwVi0SiMetz/ukROyoXwwAqVcRtI853Ko7u
	4pIRuq4D5yUjUx7plouM/oWTDRblOPb7hkMTdN5tkfy9d2YWpkiZZkA0hCvixwOa1z0JOQKWBksj9
	tcf8nJ8m96H1nVFuPzaYbrbJYqzAESmidiEmQd7Rt6qDOiuYpbB4BCj9DHPxse9D3zJTXBciofxHz
	Tf2lc6iYP+gzIPkjVtogIbPIybrDAR50hKGqw87lCjlbXix7bLCX/KyZYEwM7esnWMTjhct4HO9gU
	l1qt1syJz+kDBDTupT5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ328-00000004coh-2099;
	Tue, 08 Jul 2025 07:46:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ325-00000004co2-3izK
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 07:46:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C5C1B43C92
	for <wireless-regdb@lists.infradead.org>; Tue,  8 Jul 2025 07:46:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6B03C4CEED
	for <wireless-regdb@lists.infradead.org>; Tue,  8 Jul 2025 07:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751960788;
	bh=DTo6M5lf619kLLoaWOPb/W1KDqfDZkScguV96S3rP6s=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=nDOkT4Zeb8q1NACckU99nuxMzaH61O4F3lFLl6+phk9775ZynUtjRrg/pk8E9ohHx
	 x+qz4sAMQFKmbYLfLUw89sp+1I9Ho/SViODOI3Un4sfn2iAU9jwjOT6f+lVNQ98/NS
	 /R3QwAvgxzIePijDpnRxtgP2GMGDfiqhd6SNqfF8CgwJUeFsRi4Jyb7+SJhShCmupz
	 cdPMoDtNAV3eSdlCUE6azPgAq9HeM3J77Lj33vn//f4TG4mBKJN+G9rwbzovjrJhyR
	 yQN+2RcDfARTV2hYvOG3QylE8vzriudesdzcVKvF5RGavyKbnmX+C+yAWAPfKMMUUT
	 ceqM8ir1VVRLA==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-555024588b1so3952506e87.1
        for <wireless-regdb@lists.infradead.org>; Tue, 08 Jul 2025 00:46:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXcp3dOWpjKSmxAwKA8ElBLnte8EoAtRj6k23EpKtZMuoeZxy0JQ5dYmhyGerYe2TmuYysR4xNBR+bOezkP2w==@lists.infradead.org
X-Gm-Message-State: AOJu0YytzNIwByK5QkbW7VlsaVEr5dNYQJEBoljFbBhGj23p4P9q2jQp
	KhC+nKtjvEd13wlvqzN+S4KvL6DjIyvS6ToqfO3KNJWdb1ZQQ1MdRg390s9ZCZjRbPv4Sdq54wa
	tPhfKje2b/LobKCSazyTOtLHgnObSm60=
X-Google-Smtp-Source: AGHT+IHjAE6byGQG4XVAZXRxytoDVyFw9lU38ypb3eoe2P7D/hVWUAzvISuuT41d8uX4WywBS3zaTYCK89UimOaQK48=
X-Received: by 2002:a05:6512:3192:b0:553:2f27:e96b with SMTP id
 2adb3069b0e04-557a14219abmr3880844e87.2.1751960787032; Tue, 08 Jul 2025
 00:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250708015005.6470-1-pkshih@gmail.com>
In-Reply-To: <20250708015005.6470-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 8 Jul 2025 15:46:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v67YNZG_-MtJT_pncaqeQULj3FGLj7jpSUSOGTXe2ipGag@mail.gmail.com>
X-Gm-Features: Ac12FXwklBAEJJlypuFhAQb60x5EXySJCz7ifc3-PKY6mu50ahUqBM0Eq4-VWmg
Message-ID: <CAGb2v67YNZG_-MtJT_pncaqeQULj3FGLj7jpSUSOGTXe2ipGag@mail.gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_004630_001967_D52995C0 
X-CRM114-Status: GOOD (  10.85  )
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

On Tue, Jul 8, 2025 at 9:50=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wrot=
e:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> countries including
>  - Albania (AL)
>  - Andorra (AD)
>  - Austria (AT)
>  - Belgium (BE)
>  - Georgia (GE)
>  - Iceland (IS)
>  - Liechtenstein (LI)
>  - Macedonia, The Former Yugoslav Republic of (MK)
>  - Moldova, Republic of (MD)
>  - Monaco (MC)
>  - Montenegro (ME)
>  - Norway (NO)
>  - Switzerland (CH)
>  - T=C3=BCrky (TR)
>  - Ukraine (UA)
> Add 6 GHz frequency entry if not being added yet.
>
> The following are skipped as they do not have corresponding entries in
> the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz and
> 5 GHz bands from the world domain to stop working.
>  - Faroe Islands (FO)
>  - Gibraltar (GI)
>  - Isle of Man (IM)
>  - San Marino (SM)
>  - Holy See (Vatican City State) (VA)

I also went through the whole list, and it seems "Bosnia and Herzegovina" (=
BA)
is missing a 6 GHz entry. Could you send a followup patch to add it?

Thanks
ChenYu

