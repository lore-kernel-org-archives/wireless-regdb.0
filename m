Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F73F606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fzhF6ar2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/dQV/fbTrB6M7VQXosGvuiS9KcVJ3sBqBH9R6c1fAPU=; b=fzhF6ar2zyascV
	Py8m6jhrewQRMsS+riItvm4Q9wKPd1X/6kdMomVocU7TE7dDeoEwiNR4YOCad9nOxZ1R7cY3ne60j
	oXhkYAqFaKANMwfxAflE2SuRfos/rMiNygoZ3WB8dvInHnYzIX+lhkjGwZQBuUfCLo8AZC2/YhsXi
	pRdcowQXV3ffcFxdPbnmYV/uz0Yu+LZQgnGs622Qn6Tyx0EfOh3/v7XjatABFONiTOAkrOjS4w8/R
	mafuINGFTcMrhHo1Ip42qICGeK+kqN0gDHq9IVJ7nCkaG6nCWTQW+ryUgXg8KBbdSed3c/JM8UWHm
	W0Tx0m23GZU93Y+GmJ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkrt-00000005j0V-0Aog;
	Tue, 24 Nov 2026 07:23:09 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkrp-00000005j08-18YB
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:23:06 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO00068C;
    24 Nov 2026 10:23:04 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:22:54 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG00068B;
   24 Nov 2026 10:22:54 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO00050B;
  24 Nov 2026 10:22:35 +0300
Received: from spooler by mail-s22-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:22:33 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG00050A;
   24 Nov 2026 10:22:32 +0300
Date: Tue, 24 Nov 2026 10:22:51 +0300
From: RFAREAS Support <support@rfareas.com>
To: wens@kernel.org, Chen-Yu Tsai <wens@kernel.org>
CC: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Georgia (GE)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v67-2yV6oUA--fnG=ndHrOy4Li7pdZrNf954AwSm_Xk+dw@mail.gmail.com>
References: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com> <CAGb2v67-2yV6oUA--fnG=ndHrOy4Li7pdZrNf954AwSm_Xk+dw@mail.gmail.com>
Message-ID: <D643437D-913A-4F1E-8783-8AB4872BC171@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_232305_514856_6EE700BA 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> There is also a non-specific SRD entry for this range limited at 25mW=2E
> Would that be usable? If so, please send a follow-up patch=2E

Yes=2E Table 1 of the same Annex (non-specific short range devices) has
5725-5875 MHz at 25 mW e=2Ei=2Er=2Ep=2E under EN 300 440, with no duty cyc=
le or
other condition=2E Follow-up sent:

  [PATCH] wireless-regdb: Allow 5725-5875 MHz short range devices for Geor=
gia (GE)

Thanks,
Valery


--=20
RFAREAS Support

