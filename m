Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43FAC282D1
	for <wireless-regdb@archiver.kernel.org>; Thu,  6 Mar 2025 08:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WudWPbz8e6pksH8ywn8KLJfbwwQHura6TxrAmEwF9a8=; b=kg7soWxH+6xMG6f7cVcYZhJiDW
	0ALUO/BLsnm1O2pVeMd04cswlIl8kWCpVCZFV60NgjmFLjZCGC923e2uaU14NXMU34ZPWa66BNGzi
	GkmlMt6wnI1MA5hp13coDHGN8h/Ptp2qdxrXUbP/YAwqDx1zIYjhfOXDOh0RJauXa/1MAN513NIqG
	P4gEH7WsOZ+q8LXWlTPDmw+NadNA8u8VcQJQYViLN7At8ijkMXvLEB4gNxMsw0XKtqUhpbveky13M
	0XsWVjaPOdM9FoPbuqq4anlZ3t76qXsJXWV52IeUhFz5gD5JH/wgZs8irHgvVldmFDYDM/FOpKRfp
	ys5qvOjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Bi-0000000AH9c-0pqm;
	Thu, 06 Mar 2025 08:02:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Bg-0000000AH9V-44Xl
	for wireless-regdb@bombadil.infradead.org;
	Thu, 06 Mar 2025 08:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=WudWPbz8e6pksH8ywn8KLJfbwwQHura6TxrAmEwF9a8=; b=FeamVnMpe3hjg6fKuR7yozRNsn
	QMoXOW1sJRMNuMaovgwcQdK2QmN1/QnOSpElreLzahTNWw90+JqRGEKWWzXhXPS/rrFxLN6wdk0gi
	3Bx5ny4pmRsSoFubVAIblO1CYhd5jlG+FV3xPeF1mq9bf0/J0XyDSredOzW4xUb3CWwoaQDeMuai7
	0+BPYbgtnLpExsXYd6dW5ETLeQJTD+VFMSo1wW7R/DsYO3EpSs1Tv8zHXcgedbPoNZeJJnhDOAsha
	F2oG+soaTlgw9hOWRFrjsIbtq8JvcT+pQQp6E7SzuIxjBp1DlIoUyRmLFjZAVn3sGFyN4HuOWixVw
	mjADg9Xg==;
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Be-000000072Pn-0duF
	for wireless-regdb@lists.infradead.org;
	Thu, 06 Mar 2025 08:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=WudWPbz8e6pksH8ywn8KLJfbwwQHura6TxrAmEwF9a8=;
	t=1741248152; x=1742457752; b=TOuUcnKkloKtkvlYnAPZ7yJm61UmfzHMH56r7ZbbsfrVAWR
	iRzTy44szCjUnrkOTjeQ3p7OnlaxeDvi6uIAsMAJEY+ppMXOARYL5W4llOSnj9qESRuywgy9XyVHu
	ZoijYsNv7hdZKnrXBLstLenshoP4bYIdrH/9ROfBDtSM5PWz1M9A0/mWzcNY+nsuOXlV1//sx9+ay
	iTGgbSx4TCxv+i/Meo9KpdY7EHB7OlCtdz/00P/VvfpzEJQfMLODKTCYUAfgPLd8BXp8avTDtPsCp
	yf5JUYvPePyHeC4k/umLdwPukiI+oi0JTKl64tW7feiQABZMxyd2V5Hvm7Ur1P9w==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <johannes@sipsolutions.net>)
	id 1tq6BW-00000002i3t-28Zj;
	Thu, 06 Mar 2025 09:02:26 +0100
Message-ID: <14ab2a58e7603047354a17b2c980c143992a6782.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Allow 6ghz in the US
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, rmandrad@gmail.com
Cc: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>, Dennis
 Bland <dennis@dbperformance.com>, Ping-Ke Shih <pkshih@realtek.com>, 
	linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Date: Thu, 06 Mar 2025 09:02:25 +0100
In-Reply-To: <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
	 <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
	 <ff6ad414457e4b1cb68e834978a553c3@realtek.com>
	 <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
	 <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com>
	 <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
	 <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
	 <001a01db8ddc$019e8890$04db99b0$@gmail.com>
	 <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_080234_257204_1D1E0527 
X-CRM114-Status: UNSURE (   7.07  )
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

Uh, this is a complex discussion. I do believe that we simply do not
have a way to capture the complexity of the rules in the database today.

Skimming the documentation, it seems that:

 * Paragraph 56: For AP operation, it is allowed to operate an LPI AP
   (indoors, obviously) - we could capture that with NO_OUTDOOR and
   that's what the rule has now.
 * Paragraph 122: For client operation, passive scanning is required,
   presumably because clients are assumed to be mobile and thus also
   present outdoors, where they will also scan.
   This can only be captured with NO_IR today.
 * There are additional spectral density power limits in paragraph 59,
   which cannot be captured by the database today.

However, the combination of these really cannot be captured - NO_IR will
also prevent AP operation, which I think is the issue discussed in this
thread, but removing NO_IR will make clients break Paragraph 122.

I'll note that in general scanning on the 6/7 GHz band, by 802.11 spec,
is only active on the few Preferred Scanning Channels (PSCs), however,
that'd _still_ break Paragraph 122.


Unfortunately, it's also hard to fix - we cannot remove NO_IR because
that's used by older kernels, so I think the only way to fix it would be
to add a flag a la NL80211_RRF_ALLOW_6GHZ_VLP_AP (which translates to
IEEE80211_CHAN_ALLOW_6GHZ_VLP_AP) which overrides NO_IR for this
specific case.

We also have reg_rule->psd internally already, I guess we just never
added a way to convey it from userspace? Not sure what it even does
though.

johannes

