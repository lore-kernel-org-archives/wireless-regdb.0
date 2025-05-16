Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5603C3ABC9
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D/vcx0T8Wm6d6LkYLzXU1+uYEAFhQNRD8Jt2HTPvkWI=; b=nSu7X4Ogi1jNRUbvNnz26OlV/K
	iDrDyFrxpqVEOIIqBNN+oEWPMXRmB2kJNsBpndJcZEoQQ9Ch6mq+I+WCmFeZHnR9/xv7qaNm+rhSz
	8/5RE+qSPiNnCFA/siJ3vIJ6KaDhAQWGRYTS+VhyNOS7uMEhU3cOwiuBd8pOw5x+RL8t+0fbN8prm
	A6KJYSXn/kWXasdhk0fD34tiNg0RGsjfXLuxNWGfeIUcEbAXvhQ17FYEsL8olTDX6dO7xVO5KM0lY
	6OuBBiMiov0Hiu7wlkYg5o+8YWuFpMwF2H7b95ttTqEboznt8izJBxkuaw0DZX2MjPoYbrpsdGNp0
	XcMiGz2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqbt-00000002tAH-2q3j;
	Fri, 16 May 2025 08:40:05 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqbr-00000002t9u-0lK5
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=D/vcx0T8Wm6d6LkYLzXU1+uYEAFhQNRD8Jt2HTPvkWI=;
	t=1747384803; x=1748594403; b=LRZo4PgpXxahJWz5hHtx4W2gGidjUmpG8oXEBqy/azRARcC
	PtAr63SiQw/+lOu7G8CCYIyijHSSnsgI2G6Q6KdEp8isM/vhMo5H4a+8b5Ncp2rc27HYNNkNVB8vO
	bDhyUfW2QpRqBySW4EvBzhLpLK2q+nRir0F8bU/PA3mb3yBDbsTPfeEQQoNEaFGio0XS+C5wZFHzv
	f8Bc61oV+d62iGGrDMtlbQ8HmLqvEJ3HxtrUq2Il89Ka6jH5BSdvGYqhP4YMhmVcWfd3Lx98xEcFb
	8m1lVrx8UghyovpOeX0T5b0GLL75TrHkakOI7CNniUeM4TOGzPeS87WwsjCzqs9A==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.1)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uFqbo-0000000E7Yb-0qC6;
	Fri, 16 May 2025 10:40:00 +0200
Message-ID: <cfb672d2ed996756c6e5a7e493f161767f376b31.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Wrong ETSI tranmit power without TPC
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Alexander Wilhelm <alexander.wilhelm@westermo.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Date: Fri, 16 May 2025 10:39:59 +0200
In-Reply-To: <424fc6a24f3af233fc70296b9995a97c2d7f9e17.camel@sipsolutions.net>
References: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
		 <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
	 <424fc6a24f3af233fc70296b9995a97c2d7f9e17.camel@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_014003_221559_9911D4EA 
X-CRM114-Status: UNSURE (   4.59  )
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

On Fri, 2025-05-16 at 10:38 +0200, Johannes Berg wrote:
>=20
> So to be _really_ precise you'd end up with 1W reduced by 3dB which of
> course _is_ precisely 27dBm since 1W is 10^30 or precisely 30 dBm.
>=20

Obviously 1W isn't 10^30, the latter is just a large number. I meant to
write

1 W is 10^(30/10) mW

johannes

