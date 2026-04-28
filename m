Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA49CFF8868
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 09:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pkZ6oxnoncKr7jqUvyDrIdS2cxfpXEDf6Td11rH+FU=; b=EA18sEF7HWGgUr
	yVvjRN73hAVYNt42vYP/dFDGm8OyVtkeL2w5r7n1hbnBtKmyesMQyoS3zu26QtoBZYAazKGiQB+qB
	NE6KwXATSH1eYA3xZ8Hnhc8A1dCw1ZB+6j0dXVJsqn3QGL94i1/MoEW7qXm5rrUzwDbiVLQJltwtx
	11bL9EZb2aJHaKX8rByXYPVPzjg7PlaIgtD0Zpf6wVqM4G7S0v1EiXjJwqYc6l5CpN24SqPI4Kqda
	25lOI3YIAx++Ritio6jUTO+13bNi2QjU8ZM5w/ms4T46+9HaflqhX8Dvat5C2ces8duUWOkRjzPeC
	mKqj0+JFwdMrFjAW/s/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHefc-0000000151n-1so9;
	Tue, 28 Apr 2026 09:23:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHefb-0000000151X-258O
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 09:23:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7EB316014C
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 09:23:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 360A0C2BCB5
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 09:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777368234;
	bh=9pkZ6oxnoncKr7jqUvyDrIdS2cxfpXEDf6Td11rH+FU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=si4DzF2uqzT/VXlkmg6UQCU6fvWCLW0kNYoxT5kigUVg5+aztNt2nK+k6sFhE4Fg3
	 ua53wAvDK33QOrnh8IcK1OX62JeSfAj5oQst4HGk+XkgCNdtCcfeRkLuKP9hN5s3YO
	 YcUfYT1NQ6oyPM2WpqhJluttPOkf1x/C6t6c8DQZ3k1N3nxxULtPQy9tLYiIRS0WYp
	 YpfWC8A9ULmcRyEiC53dgdRVhgQUPolxO7/kpEo1rZVfKVZ6UW04ddDBaeIcl7txWG
	 k1NiCmjh97duvZnfMaSoUw2nrjPnODCJK8gY3yzdYmTTiR2k1TQ2BQcFOlD+FEk9nW
	 FFaQPinWRlPSQ==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38dd9f11a09so99620401fa.2
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 02:23:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+mC+Ln0v0kQTd3rCzl/9BgmFGbclVyS5bNpWmbyRX7YOeLhZKLi4Ob8uN03NgfqTFWwMhdpWptwLmC3qE/EA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw54M9KEcMaNFvrJCni6mUJhkP7+5mLxwWPdp3ekjjFdA63hHPd
	xLhMhDGD9kqnHTp45PcCLjVXeN2m9JlttxplTf1lUQ2xTUI1Uy0v5XGE2tCJkjVHSRu4FHPgGGf
	3lUsBs/rpCGKw0sVOtiyPCo3xfC/61Mk=
X-Received: by 2002:a05:651c:4191:b0:38e:9eb1:6940 with SMTP id
 38308e7fff4ca-39240f694d5mr6737951fa.10.1777368232579; Tue, 28 Apr 2026
 02:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <20250708-russia-320-v1-1-53641e8dd417@0upti.me>
 <20260428074500.ru-320-review-resend@gmail.com> <b9d9d6e1-91c4-487f-82af-e53d4148c11b@0upti.me>
In-Reply-To: <b9d9d6e1-91c4-487f-82af-e53d4148c11b@0upti.me>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Apr 2026 18:23:38 +0900
X-Gmail-Original-Message-ID: <CAGb2v66SDbn7KV+ehT9qpEZa1RRYXSXCM_3O-0qgqayks8igqg@mail.gmail.com>
X-Gm-Features: AVHnY4IY33HCwe-Lx3cMh6T9rTZtboswfbohryCVPxTEjpmsxN1GBvAQmwk1AqM
Message-ID: <CAGb2v66SDbn7KV+ehT9qpEZa1RRYXSXCM_3O-0qgqayks8igqg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: allow 320MHz channel width for Russia
To: Ilya K <me@0upti.me>
Cc: Louis Kotze <loukot@gmail.com>, Valeriy Kosikhin <vkosikhin@gmail.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, Apr 28, 2026 at 5:17=E2=80=AFPM Ilya K <me@0upti.me> wrote:
>
> On 2026-04-28 10:44, Louis Kotze wrote:
> >
> > Note that the patch base predates the recent RU power update (commit
> > 6873bfe in wens/wireless-regdb), which changed 5925-6425 from 100 mW
> > to 200 mW, so this needs a rebase on current HEAD before it can be
> > applied.
> >
> I can resend a rebased version if necessary.

Yes, please send a new version for the record.


Thanks
ChenYu

