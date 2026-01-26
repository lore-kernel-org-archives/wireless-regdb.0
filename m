Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B38D19501
	for <wireless-regdb@archiver.kernel.org>; Mon, 26 Jan 2026 16:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0hEcAwD15dAFDpHiJsFrYCQxgDoNTEey+4kspjVoHg=; b=Rvr4ZzN/kUf0fD
	xkraBXB7UUJv105Cqvx75OCr9ZZDZstph4jodJbpT5llncA5Kl4vyHBBCWXkNH0f+KzNwfFJRrDVy
	JvJu3GW+Z72hSYTL5zTXW9c7R6WQzlWbAWkSH8WAAOh/rCGa7Tmrc4lJ9qQASsLI8I5tdRqgyGfUa
	fJvUdlA+sj06FgGT9+EF63wjLgSl/yoGBtpiE9mo+Saqc6OAsZHfRGW2q9EE1wwQ7dJ4cpRfAz4EO
	fJu4IsqxLyZvAeD3xwVG8hHuFbadDnKhMEG3NuZZ+nW6hU0etkIUEfiIF6gkXa5MO6iGY4Pid8Nm/
	2jbua7XUPPf65WNhtGkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkPRU-0000000Cric-3gqJ;
	Mon, 26 Jan 2026 16:27:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkPRU-0000000CriN-12gg
	for wireless-regdb@lists.infradead.org;
	Mon, 26 Jan 2026 16:27:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F42B60130
	for <wireless-regdb@lists.infradead.org>; Mon, 26 Jan 2026 16:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9F6BC16AAE
	for <wireless-regdb@lists.infradead.org>; Mon, 26 Jan 2026 16:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769444874;
	bh=v6xqP4YBm6WGUxGEZnZIxK1wlGkNktq+EEbB6siMeGU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=L2Ja1RphVmTWcIbriIH/gVPH/HNbnlvcCP20W8QMldVIhKATDbU0cht+SDELdm3Mp
	 5dI4n3ZyYtwWiCB23TTUzv2ybfB2doUkGsxch1jNkC8BzBuAElEm4OsfIUOxJp52y2
	 EOZTw/6lGfY4LjKVOfbywcNtdhaGdA2Kpba1bv96CvuE2LOR1LXxZGa914Gyxk6FLx
	 67HogaPX6LxFI3UBEwpBcRrZuqKyk0gkp3j8t4qoO0PiI0s2h1WfkoulC320u8FQ2C
	 10yNnYIz9wccQA1W/b4ypf2G3iMBuQ2bQW2BglRiZPSngarueBKgOXx4UdB3o6Xm+V
	 WNgVn/X3dd4Cw==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-382fd45a1feso48676771fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 26 Jan 2026 08:27:54 -0800 (PST)
X-Gm-Message-State: AOJu0Yz4cgllcfVNIqPP5asXVMNl9PZ5itcZa080P+0pjgIi7/3TFFOX
	8AX+S/2nXHgNImeqNk17a5gGJmIOIrz7EUGdZebpirYkT42qopaLp4CBLfftnwQcR5OsGx56My7
	GChERIwAgc7mYhd6jZ7B9IOYe+vSW4L8=
X-Received: by 2002:a2e:bd0b:0:b0:383:6f5f:3322 with SMTP id
 38308e7fff4ca-385fae9de34mr17716041fa.20.1769444873174; Mon, 26 Jan 2026
 08:27:53 -0800 (PST)
MIME-Version: 1.0
References: <gJk9K2NbSv84IW0dpE3w6ug7lbvQvz-uWkaxUH2igF7fcvblPCi-xchnclVDvO_cGtP34C08PKj2VQTxonbQ3Gm6M7Vy5PlyhrylOoJcMPo=@proton.me>
In-Reply-To: <gJk9K2NbSv84IW0dpE3w6ug7lbvQvz-uWkaxUH2igF7fcvblPCi-xchnclVDvO_cGtP34C08PKj2VQTxonbQ3Gm6M7Vy5PlyhrylOoJcMPo=@proton.me>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 27 Jan 2026 00:27:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v65DKxNt3Zg4PjCSi-spV_TuK=rDw9t0VMvafnXO-nDhxA@mail.gmail.com>
X-Gm-Features: AZwV_QgNMv7lSRc5G9a0c7F2yoViORtjtOFC2NBV0_ABeiYrcMFkkyeAM2XClAY
Message-ID: <CAGb2v65DKxNt3Zg4PjCSi-spV_TuK=rDw9t0VMvafnXO-nDhxA@mail.gmail.com>
Subject: Re: NO-OUTDOOR operation
To: srl100 <srl100@proton.me>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
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

On Mon, Jan 26, 2026 at 10:54=E2=80=AFPM srl100 <srl100@proton.me> wrote:
>
> Am I right in thinking that the following entry in the regulatory databas=
e means that it is not legal to use WiFi on the 2.4 or 5 GHz bands in Indon=
esia?

That's what the database currently says. If you have information to the
contrary, please send a patch to update the rules.

> country ID:
>         (2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
>         (5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
>         (5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
>         (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>         (57000 - 64000 @ 2160), (10000 mW), NO-OUTDOOR
>
>

