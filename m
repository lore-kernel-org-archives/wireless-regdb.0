Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B25C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLf9R4BvPQem/snKHId3ajChh/QOFBvv+i6F2La+1uI=; b=KtQ9BIfIqu5Dvt
	tFkxFXgwpTRz3+f0CP+66WibcqNlGaLnP28SF3lfyJFJ9nsAtDzbQ+aNfnxYKXm9ZHlv/QF4PXko0
	WV8ErkYF2uGMe7tI9B1uGgH2HEEGlymyskFOlLDRvGw6PN40Oq0FhXpaAm3PeHVXtg2ZdGuKuIbRr
	2eXMyMiX/EpvA6tWR8QxjvPd2n7/++8y7wJwlLInDATZNXKae6gxccatAn/uRenPJha7K3fZlEf8k
	H0SuYrKEmfMmTg+16WLqfV4vZb4HtBdcW4FrxTj/9zx5uAHqTzKjTb3wjly0kbX0nBLR9b3NN6DQu
	tN2ri+4s06MLtS33rBXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqLH-00000002pHR-1rJa;
	Fri, 16 May 2025 08:22:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqJG-00000002oR8-3dyz
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:20:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F321D5C41F6
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:18:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1156C4CEE4
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747383650;
	bh=Z9yHLCOcUTvAJaDRoOqBHTW1paqPZ4hEEJAWtS+PHPg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=LMnEsJyojFOs1eKC+AaeJ4oYf6JLUoJIvgYj4lk2xsS8FrfjV91jlJDkxXcEMy4JL
	 JLpDQH+zLnm+ttE/HlAQtv81OAyM77lmLLncY296uYMm7+4fD9WowKA0UsziMFE3zz
	 g31sMy6xkN3ZQO91GJsO91kXl5gRoAL0kyyD3iMLRJDj9DeNJNuEGjc3nqmnJM+HN9
	 D0yp/nTUEmK1hS9zdaurgoC1zaF8kQDybXK5CZqOiQp6W77l4FKi7FtOXhN4gNXlv4
	 oNnoZ3Y5+WwJ2B+ucDWJ7ESEfNKCl5CSNfSf4175bXdG/yjntTju/KR9Z79CMjlcjI
	 OxjQcehuUxcAg==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30db1bc464dso16137611fa.0
        for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 01:20:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVIiASH5F3ZaMIwWrGzQjtx0uAGE01rnqXgGm9mAf/Jt9a8n/+UlybU7gHQZ41sl5HBpLBAh8bbtN6fRFPeQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymOkycMvkRUUguyPcufqfAmOGp5DawpzdpyZzMMz9770SldSJG
	qLZTt1AOnuWfzZV3qMTEL2s9hJYeHF0ctM48XiPtU0DFKz+LT+VSu6bpMkYi18cqBA+ZuD75hM5
	nav00ECLtPo4VuEMnt/eR36yXtstqLV0=
X-Google-Smtp-Source: AGHT+IFOUDfa13iDohf+REfjZamfX5SNyDISO8nLy9XQVzgpJAurr3TSu0MSfkO50YCvVlzWPZhYmgN39RYWozx5Oxc=
X-Received: by 2002:a2e:b88e:0:b0:30d:e104:b795 with SMTP id
 38308e7fff4ca-328077d4cf2mr8224481fa.39.1747383648317; Fri, 16 May 2025
 01:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAC=t7aR6tripS=+LJprV25wzcqd_T47iAHepZrRQOzDRKzuGtg@mail.gmail.com>
 <CAC=t7aQZL9uih-e+8Eq-rikJExspYRUi7gt4N_DpddzszTOGMQ@mail.gmail.com> <CAC=t7aT8SanBhCBrJi+fE1ym0zfEvXUULYfXtwBfc7u1hB=Xzw@mail.gmail.com>
In-Reply-To: <CAC=t7aT8SanBhCBrJi+fE1ym0zfEvXUULYfXtwBfc7u1hB=Xzw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 16 May 2025 16:20:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v65_MXsuQjCPB-uHOYQVgLU+Zs7MtB5_X9Q3O-aQ=_39nA@mail.gmail.com>
X-Gm-Features: AX0GCFv1WvHzXvsGtH5a1vFCXaS2pA8JzlMACIpC6Apa9ohfxXE3VFdKK8cbGC8
Message-ID: <CAGb2v65_MXsuQjCPB-uHOYQVgLU+Zs7MtB5_X9Q3O-aQ=_39nA@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Iraq (IQ)
To: Mohammed Abdullah Ali Al-Obaidi <mnewiraq2000@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_012050_995698_CF098A51 
X-CRM114-Status: GOOD (  22.52  )
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

On Tue, May 6, 2025 at 2:32=E2=80=AFPM Mohammed Abdullah Ali Al-Obaidi
<mnewiraq2000@gmail.com> wrote:
>
> Dear wireless-regdb maintainers,
>
> I understand that my previous email was flagged as spam. I apologize
> for any inconvenience. I will try again with a shorter version.

It could be that you were sending the emails in HTML, which the Linux
kernel mailing lists don't accept. Attachments also don't work well.

> I am reaching out to propose an update to the wireless regulatory
> database to reflect Wi-Fi frequency regulations in Iraq. Attached is
> the official documentation detailing these regulations. Could you
> please guide me on submitting these changes?

Please follow the documentation at:

https://wireless.docs.kernel.org/en/latest/en/developers/regulatory/wireles=
s-regdb.html

In essence, you:
  1. clone the wireless-regdb repository
  2. make an edit to the db.txt file to add an entry block for Iraq
  3. make a git commit from the edit
  4. make a patch file from the git commit
  5. send the patch to this mailing list

> The source of the provided document is
> https://cmc.iq/ar/wp-content/uploads/2025/03/Republic-of-Iraq-National-Fr=
equency-Allocation-Table-2-Final.pdf

The document only lists the allocation, but not the power limits for each
band, or any other restrictions. You would need to track that down.


Thanks
ChenYu

> Regards,
>
> Mohammed
>
>
>
> Regards,
>
> Mohammed Abdalla
> +9647902729029
> mnewiraq2000@gmail.com
>
>
> On Tue, May 6, 2025 at 12:30=E2=80=AFAM Mohammed Abdullah Ali Al-Obaidi
> <mnewiraq2000@gmail.com> wrote:
> >
> > Dear wireless-regdb maintainers,
> >
> > I understand that my previous email was flagged as spam. I apologize fo=
r any inconvenience. I will try again with a shorter version.
> >
> > I am reaching out to propose an update to the wireless regulatory datab=
ase to reflect Wi-Fi frequency regulations in Iraq. Attached is the officia=
l documentation detailing these regulations. Could you please guide me on s=
ubmitting these changes?
> >
> > The source of the provided document is https://cmc.iq/ar/wp-content/upl=
oads/2025/03/Republic-of-Iraq-National-Frequency-Allocation-Table-2-Final.p=
df
> >
> > Regards,
> >
> > Mohammed
> >
> > On Tue, 6 May 2025, 12:18=E2=80=AFam Mohammed Abdullah Ali Al-Obaidi, <=
mnewiraq2000@gmail.com> wrote:
> >>
> >> Good day,
> >>
> >> I hope you=E2=80=99re doing well. I am reaching out to propose an upda=
te to the wireless regulatory database to correctly reflect Wi-Fi frequency=
 regulations in Iraq.
> >>
> >> Currently, OpenWrt maps Iraq=E2=80=99s IQ code to the world 00 domain,=
 which does not account for the specific frequency and power limitations se=
t by Iraqi authorities. To address this, I would like to submit official re=
gulatory documentation outlining Iraq=E2=80=99s permitted bands, transmit p=
ower levels, and any necessary restrictions.
> >>
> >> Attached to this email is official documentation detailing these regul=
ations. I kindly request your guidance on how best to submit these changes =
and ensure accurate representation for the IQ country code within the Linux=
 Wireless framework.
> >>
> >> Please let me know if any additional information is required, and than=
k you for your time and support in maintaining an up-to-date wireless regul=
atory database.
> >>
> >> Regards,
> >>
> >> Mohammed Abdalla
> >> +9647902729029
> >> mnewiraq2000@gmail.com

