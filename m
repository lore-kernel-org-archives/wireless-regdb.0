Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE73D68BD2
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 08:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SZ+rp0CTt6YYQftu7p/yV48To+7GzMlUfwrbZ3IjSrk=; b=P/MuewOgeCRA10GG6O4C6FOb8h
	aFCbt6CjbfAJy5BFU0pJ/pPA40bORRKo2cC/ce3U0rvybpAtgvoS4920z5wIURhHJ3ikPgcOsXT6n
	G/bDk8bobV2RMEpkxfZPolVE0T9YJ0xvKohVC1fO4FdVRtfSR+dOigRjMhIzZNZRmJ0YkOqHzlQLq
	2MAYSbSH8u/mXtAI5SxNx8oEfD+H3BrE2RiTPDFfu3tptP2xl5DeKITFyVZ2gt0srW4gMJPJ+7Qiq
	zdm3iKqT43OyRlOSv1/w/ejL9sEX/WiUshNvtKYZBmzxxGTjKxTF0URdZJ8ZpgH52X3E5Y96VFcAf
	O8Nnrwrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEFF-00000005EuQ-0uFy;
	Sat, 16 Nov 2024 08:33:29 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEFC-00000005EtU-3d4A
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 08:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=SZ+rp0CTt6YYQftu7p/yV48To+7GzMlUfwrbZ3IjSrk=;
	t=1731746006; x=1732955606; b=D3Jx7mTHuBDervoALj9ohs6+y984WIPcQ6GH0WLSxQcPK6a
	Chf299rIkgX8GVUwz0eqzswhFr47Jp87ggQNj7woXPIK4QpRC32/Zmv2mODG9lWqwS9w88ubp6ZRC
	37DxIrHL/4DonwSOpQD5ONdBWFpCPugnNHXQIkHtZiPTFCQB4vWx3WfgnHfsnq0nbC6UdWdYKK1kE
	tz+alVmrRSgFmt9nudUHwRgjrjTwEN0Yy+TZlL4nVGHgEOli9RSxo6mNFM65Q1zgulquzNIiMRAvD
	he4Zum449prPqdZV8uYt/tHR6feBjudUc/pA8nZgK4nx9AP/ubZgefzJxfvmaHfA==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <johannes@sipsolutions.net>)
	id 1tCEF9-00000006Jnb-42R3;
	Sat, 16 Nov 2024 09:33:24 +0100
Message-ID: <ca8e16a2dbc9c38e5bf2f3e426a2132393b381be.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: assert and correct maximum bandwidth
 within frequency difference
From: Johannes Berg <johannes@sipsolutions.net>
To: Ping-Ke Shih <pkshih@gmail.com>, wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	combuster@gmail.com
Date: Sat, 16 Nov 2024 09:33:23 +0100
In-Reply-To: <20241116082417.8720-1-pkshih@gmail.com>
References: <20241116082417.8720-1-pkshih@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_003326_928315_E3B14225 
X-CRM114-Status: UNSURE (   4.95  )
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

On Sat, 2024-11-16 at 16:24 +0800, Ping-Ke Shih wrote:
> From: Ping-Ke Shih <pkshih@realtek.com>
>=20
> Since kernel will reject max bandwidth being larger than freq_diff in
> is_valid_reg_rule(), as well reject it ahead.

Not sure that's generally true, if you have AUTO-BW I think it should be
OK?

johannes


