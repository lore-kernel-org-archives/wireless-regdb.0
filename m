Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BB7C47258
	for <wireless-regdb@archiver.kernel.org>; Tue, 23 Jan 2024 08:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2l85fUMnPTJyk3J89QnqW8HJwjETcVbGXT41yoRlCEU=; b=qvSbz7LbJUUy00pC4IDmbISeQL
	0bDdhnhcWx+SH1r4mZ45s8I4Tq8+8NMci8Thhz86OuHvM1QlGqtzxy88Rb8K/gmrUYu5iDRMHR9xx
	B2eAzjQ+0fKka6Qr2NXqsbuXbmqWhS0EKSVGjlLF/ys8X3nIsnv/VXCs5FTeOiFARqSAAYO54D+VE
	cin6nOkBikmKfAAooK43k7pcuWX549EtZCWRmX5i65ViAvNE18ZDEhN8YFl73eTc20H/OkA9ACXaS
	jaWCYSmb3C8XUENTDdyZ4zzPekGpk8O5CD6JGWwCFPRRCzNaKsKG6VluCMGa8Sh0yao40qIO0XH4k
	HpTobHtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBhV-00FShX-0i;
	Tue, 23 Jan 2024 08:00:05 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBhR-00FSgM-0M
	for wireless-regdb@lists.infradead.org;
	Tue, 23 Jan 2024 08:00:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=2l85fUMnPTJyk3J89QnqW8HJwjETcVbGXT41yoRlCEU=;
	t=1705996798; x=1707206398; b=VxQU3+kR9woVTYw3i+jFB8SJa0o9wQpGatAApQG6ItjeX5g
	XK/tcsN+UJVpM/mqXc9VF8fOEcaBrt/DI8iKtWplvK7ZXfl0p1Xs2Sx+fdB2qR2fwJXdu5XKJ+ckh
	nYOpKZ6JcJBG7rsd11uUXErCsWhOQsNs1ig9f6tWQfw7yZ3l6BZRgDuv/DX5OC2T7PZQP0Ma111f7
	NTEFKFREpYM0yJUTPWDRxzEKDYE0P2HmC4bWFt9zzm7XZmUw0UH9EDENE87cIkyN3zKttdrMmXWbC
	Co7GJXtdiEWZ0G6YKf2ef9gxJDJz9oqqhEpr/XrKf9d+ysE3/gyolS+bNIgjrLFw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rSBhL-0000000Eud0-19J5;
	Tue, 23 Jan 2024 08:59:55 +0100
Message-ID: <e5aefc295fbb78bc464be939e50a1b47ca6b2cb4.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: Correct format of AU definitions for
 genregdb.awk
From: Johannes Berg <johannes@sipsolutions.net>
To: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>, 
	"wireless-regdb@lists.infradead.org"
	 <wireless-regdb@lists.infradead.org>
Date: Tue, 23 Jan 2024 08:59:54 +0100
In-Reply-To: <BY5PR15MB478732869CAB0F4914C1E34FB7742@BY5PR15MB4787.namprd15.prod.outlook.com>
References: <20240112040217.24356-1-me@ndoo.sg>
	 <BY5PR15MB478732869CAB0F4914C1E34FB7742@BY5PR15MB4787.namprd15.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_000001_376043_8FEE881A 
X-CRM114-Status: UNSURE (   4.02  )
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

Hi,

> in the genregdb.awk code generator.

Bit confused, where is that generator? And why not just fix the issue
there?

johannes

