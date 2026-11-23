Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0606606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ev3LA+tS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=okFYmTbXlQFt4zqASJvUdCO2CjwrJ0EwuE4gB7fuen0=; b=ev3LA+tSMNy8gQ
	ucyjfICXcD1bX+XBhcosITqaS/KzfpHOuwjeehzVG0oRqRLt+RPVc6B8IUt3sMDX6hnv8iU8mK73w
	ps6Q/I5tynOiFbs6GZALczVeDXK3wJ4Bfh56/FqwTMTt5k6O/32XrX1Ug8ePAzRNKarWMKLp9O+Vh
	PFSq/6U5yVHYAqyZSO4cEKP6nWjwXFjKCzWjUWCIC1E6PKvWa8A09sn88gGaJJzSYervXAZ1KgDvt
	0pOEjEXI8lWvriP/p/iuzC6oBpAcwfJtmzAiEKup9LJu7tq+NynV31wlsO6If+08E9qBhTbvYFxKl
	cwW9x+A2RB9nq0SAJT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRGD-00000002wWs-0hNX;
	Mon, 23 Nov 2026 10:26:57 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRG6-00000002wUz-0cN2
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:26:55 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO000C20;
    23 Nov 2026 13:26:51 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:26:41 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000C1D;
   23 Nov 2026 13:26:39 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000CDC;
  23 Nov 2026 13:26:34 +0300
Received: from spooler by mail-s22.in-solve.hidden (Mercury/32 v4.52); 23 Nov 2026 13:26:31 +0300
Received: from ehlo.thunderbird.net (128.204.79.23) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000CD9;
   23 Nov 2026 13:26:30 +0300
Date: Mon, 23 Nov 2026 13:26:32 +0300
From: RFAREAS Support <support@rfareas.com>
To: wens@kernel.org, Chen-Yu Tsai <wens@kernel.org>
CC: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH=5D_wireless-regdb=3A_Update_?=
 =?US-ASCII?Q?regulatory_info_for_Kazakhstan_=28KZ=29?=
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v65sW+JADcdONnBPm0dUA+=LopxMP6Xai54xiJxxqg2Q4A@mail.gmail.com>
References: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com> <CAGb2v65sW+JADcdONnBPm0dUA+=LopxMP6Xai54xiJxxqg2Q4A@mail.gmail.com>
Message-ID: <3E10FCAA-2522-417E-AAE0-4D2B646BE2C6@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_022654_524598_527FB837 
X-CRM114-Status: UNSURE (   3.67  )
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

> TPC is required for this band=2E The allocation table has a footnote sayi=
ng
> that ITU-R Resolution 229 is to be followed=2E This requires both DFS an=
d
> TPC for 5250-5350 MHz=2E
>
> Without TPC, the limit is reduced by 3 dBm, or halved=2E Hence 20 dBm he=
re
> is correct=2E

You're right, footnote 5=2E446A of the KZ allocation table refers to
Resolution 229=2E v2 keeps 20 dBm for 5250-5350 MHz and adds the channel
144 fix you asked for as patch 2/2:

  [PATCH v2 1/2] wireless-regdb: Update regulatory info for Kazakhstan (KZ=
)
  [PATCH v2 2/2] wireless-regdb: Allow channel 144 for Kazakhstan (KZ)

Thanks,
Valery


--=20
RFAREAS Support

