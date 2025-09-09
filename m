Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AA29CA0FED
	for <wireless-regdb@archiver.kernel.org>; Tue,  9 Sep 2025 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yX5zOTaOeDzIVPdBFraUXgJCYMcqXOoBy2Gk1EE2Tvg=; b=YB7d6jeylvkzW75eohjD8esIKe
	ZUQsPqEOsDFvdc4POEYh1h9Qvqzx29varvfn50ppYUfPqFO2lXD/zRdWKp4+ibbGp5iGKIcryFini
	NhHhsPx/A9dOvlcVkTH8pXiEa7c+9fT9u/+FkS7TZ3fkAPoMb38P27mZHrQhbCnqVpbj4ELxKKs+s
	TR7nfYgDihtvxpY0fjvl2Q/5C02N2j/iBd9/d4+kaZ4/H5fU/E86DTLAYiS3iscNEDtWb0nXAqPZX
	FfJUjfSOnWdHn6y76IsjN44HDMFuYu0zulCUHA36x0GAyyUzIPkJLncxCLdrCxEJQcGYw1GfokPaO
	87xCqGlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0ba-00000008INp-1HxW;
	Tue, 09 Sep 2025 15:50:02 +0000
Received: from s3.sipsolutions.net ([168.119.38.16] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvx4s-00000006wWU-0JlY
	for wireless-regdb@lists.infradead.org;
	Tue, 09 Sep 2025 12:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=yX5zOTaOeDzIVPdBFraUXgJCYMcqXOoBy2Gk1EE2Tvg=;
	t=1757419440; x=1758629040; b=f4gNfWU4AG5A6+hNz/2/NStyW7wHRmMQeMF8dw5Rg05spcS
	NmTuB700oC+PhR9FB+PLYi3Cvai1xgSzARmpZO/LRMnl+c2yEgw1tmnmwLvCbbcPHnaFO4S51p6/L
	hVkX5igqxsomwVKPQEGzaT7SRUDvz+0DWLsZwTie+x/1XNQhN9kA5O506rg3crOPsaVyEQMeG6TLt
	MQn2N1sXhQNh4EmqASGhgJY6B34H2/YyHAfBze5X+wniCajZWryXPpORCYfQsihyyNHPRiL6bmgWM
	KPZLCZ7MSoDENZuHdNK3oBG2QyYdpkS+kzD5Y2siFNH3JzO7r97RpwcVKebqNJVw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uvx4l-0000000AEob-1ro3;
	Tue, 09 Sep 2025 14:03:55 +0200
Message-ID: <48ac8a2f24666d84b2278959fe29bb11bbf4236a.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Allow 6ghz in the US
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org
Cc: rmandrad@gmail.com, Nicolas Cavallari
	 <nicolas.cavallari@green-communications.fr>, Dennis Bland
	 <dennis@dbperformance.com>, Ping-Ke Shih <pkshih@realtek.com>, 
	linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Date: Tue, 09 Sep 2025 14:03:54 +0200
In-Reply-To: <CAGb2v66aOHxeHEEKO_XaBfufWPnjJk6RkTBo8e9D1T9ET4S1Fg@mail.gmail.com>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
	 <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
	 <ff6ad414457e4b1cb68e834978a553c3@realtek.com>
	 <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
	 <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com>
	 <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
	 <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
	 <001a01db8ddc$019e8890$04db99b0$@gmail.com>
	 <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
	 <14ab2a58e7603047354a17b2c980c143992a6782.camel@sipsolutions.net>
	 <CAGb2v66aOHxeHEEKO_XaBfufWPnjJk6RkTBo8e9D1T9ET4S1Fg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_050402_111225_D69D9F75 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
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

On Tue, 2025-09-09 at 14:12 +0800, Chen-Yu Tsai wrote:
> I wonder if it is worth bringing up this topic in the networking track
> at Plumbers this year?

I'm not sure who'd be there to discuss it with, I guess? I'm also not
sure who you'd even want to discuss it _with_, since it's mostly an
implementation detail and "just" needs to have something implemented, in
a creatively careful way not to break old stuff.

johannes

