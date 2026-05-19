Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E36CD4F52
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 08:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9NpsapQApNvNsQ0TsCGdqDy/wJ+DMGXhOIm6+Uw7Kfg=; b=EZdi0OYbgTRZRXMWp5OY1WBlS2
	tx5k9JtaT1zuY8AMKEprkoqgopFaaJvPZ8XHhpygxUlZcK8NrSI9y7AX13gYsClnBkhHvhC3KikC2
	kVLXqJySSTtwPJQ2Y0p4h0psYZtgO4V8LBCN7HVaAytlxjP8H/lLvw/2OphP4MIFwgbKmSlYeiatF
	B7wHP81oMsCm3OpT5/YziKkR0ZzeIxPAS+LxZnI4dN+lf+2Tqu+e5kSVvEEGMcBmb/VkLVZoQEx8c
	tMP0ulDYEXheFccTXMSsXL5VRIndmeUL4RoN/stKU1I1Kv4itXMhT7uny3Tx0Lbgmpj34aATvoIYk
	S7LeAvVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGEP-00000000leR-2kZZ;
	Tue, 19 May 2026 08:55:17 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGEN-00000000lcN-18xD
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 08:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=9NpsapQApNvNsQ0TsCGdqDy/wJ+DMGXhOIm6+Uw7Kfg=;
	t=1779180915; x=1780390515; b=Q6QgP72yrO2eGchmci34XZuHaKiOpQZ7zEO2UFl+5rC1ERd
	hoYV8j8AgP+qa82bMiXaEux6zWexJ6e/W0GMAWBhuHMQn9eTjoVRDw/NW9jQHybhKF3nNdSyXH4fM
	II2PMzXGmNKVPPe7cJ1PY+q1qm5xIUspzPNqcS5Xq0byP9HiWd3gdg4nRpYegpSIG9WfuYAtyIk0n
	+M5gzN7Bti3w2fLqPKqwVAeWVCXEYQ7PrlbZEbUDY7y4Nyt5JdyQO/kJ9nqbnIJV7ja2BAVC3XwMG
	xiRa3r3Cl3RA8EixwThrFzmJ280zcQsBHRTXCoivf8gYjjKT02LpHRcUQ0F5/wUA==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1wPGEG-000000062FR-2gXG;
	Tue, 19 May 2026 10:55:08 +0200
Message-ID: <21a4cc48403b338311ea0ff76d757893b1f765cd.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: add regulatory rules for Iraq (IQ)
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Mohammed.Al-Obaidi@badraproject.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	mnewiraq2000@gmail.com, mnew_iraq@yahoo.com
Date: Tue, 19 May 2026 10:55:07 +0200
In-Reply-To: <CAGb2v66mCBP8KiMF3nRTix_zYDhsb_o4KNj-7-enB0+ULvh0_A@mail.gmail.com>
References: <1886262646.6291779.1777997531793.ref@mail.yahoo.com>
	 <1886262646.6291779.1777997531793@mail.yahoo.com>
	 <dc91809a60874f87a5e9d67f0c4696e5@badraproject.com>
	 <CAGb2v66mCBP8KiMF3nRTix_zYDhsb_o4KNj-7-enB0+ULvh0_A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_015515_314791_0F05B8B4 
X-CRM114-Status: GOOD (  12.76  )
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

> As for 10 MHz, I don't think it is supported, so we don't really consider
> that case. I could be wrong though.
>=20
> Johannes, could you shed some light on 10 MHz channel width support?

It's ... complicated?

We support a _very_ limited set of 5/10 MHz operation, but I think most
of it is fairly much unreachable from userspace. I asked about removing
it entirely a few years ago, and some people were opposed, but said
people also haven't actually helped take care of it or anything ... I
was just tempted again a little while back to remove it due to the rates
issues.

Ever since my commit 5add321c329b ("wifi: cfg80211: remove scan_width
support") I believe it has been unreachable on the *client* side, but
given that we still have some support in _nl80211_parse_chandef() and
chandef functions, I expect that it would be possible to still configure
an AP or monitor interface with 5/10 MHz, though only with drivers that
have WIPHY_FLAG_SUPPORTS_5_10_MHZ, i.e. ath5k, ath9k and hwsim. I
wouldn't mind removing it all though.


Is this a concern from a regulatory POV right now, due to say power
density by channel width? This feels somewhat familiar even with higher
channel widths - maybe it's time to add such an attribute to the regdb?

johannes

