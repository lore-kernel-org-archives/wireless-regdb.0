Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB960606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IyzuLGb4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=aeKw/J26hi2DKZFvEjSv0cLHoXYPF29pHxkKYbPDdaY=; b=IyzuLGb4j/p97p
	1zk6xiFBysueGKL0L2/jq9rRr98JbrKxobb6gSuIRiePCg2KQ0uzVzhva9Tdkp7IdIPN9WvPKJemT
	GNNrnouC4v6SByLEvqdtlDj2myiKY4LoKiUhqlap8+eIEup87G/9JfOPhX7no6itjmb6aAhPyK8q6
	4X0sg59mOPDr2E3Ak3P5W28ehUjIuwD2ELOF9C0ja+bnnSJuCycfU91BGIqWdq6lLU9j8EmzUiIxB
	FodxopgxQxrh/+gLSSItVbG5hIeuh0PWTPfeBS6f2ntuuChGaYORrEVElNI5SNZYSnVj3vUYNJvNJ
	+3IciiGwwDX/fehQoGUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRHk-00000002wtT-3Zkb;
	Mon, 23 Nov 2026 10:28:32 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRHh-00000002wr4-30wd
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:28:31 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000C37;
    23 Nov 2026 13:28:31 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:28:11 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000C36;
   23 Nov 2026 13:28:10 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000CE7;
  23 Nov 2026 13:28:04 +0300
Received: from spooler by mail-s22.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:28:01 +0300
Received: from ehlo.thunderbird.net (128.204.79.23) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000CE6;
   23 Nov 2026 13:27:59 +0300
Date: Mon, 23 Nov 2026 13:28:02 +0300
From: RFAREAS Support <support@rfareas.com>
To: wens@kernel.org, Chen-Yu Tsai <wens@kernel.org>
CC: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Belarus (BY)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v64WJg8hR8eoqqbV=n-0qPVE5ARBG3mKU3+sR4nDmp_btw@mail.gmail.com>
References: <5DB6FB38-A5F9-4CD4-8AAE-7A3FCFF90520@rfareas.com> <CAGb2v64WJg8hR8eoqqbV=n-0qPVE5ARBG3mKU3+sR4nDmp_btw@mail.gmail.com>
Message-ID: <DDC0D3B5-F31E-47E3-B556-FA1AAB5EB023@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_022830_114212_FF1D34B5 
X-CRM114-Status: UNSURE (   5.71  )
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

> Assuming the DFS requirement comes from ITU-R Resolution 229 /
> ETSI EN 301 893, then the TPC requirement also applies, and since
> Linux does not support TPC, the -3 dBm reduction should be applied
> for 5250-5350 MHz=2E
>
> Could you check?

Checked: the Belarus table of frequency allocations (Council of
Ministers Resolution No=2E 620 of 9 August 2016) has footnote 5=2E446A,
which refers to ITU-R Resolution 229 for 5150-5350 MHz and 5470-5725
MHz=2E v2 sets 5250-5350 MHz to 100 mW=2E 5650-5725 MHz stays at 200 mW,
which is already below the Resolution 229 limit without TPC=2E

  [PATCH v2] wireless-regdb: Update regulatory info for Belarus (BY)

Thanks,
Valery


--=20
RFAREAS Support

