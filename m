Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEDE0F8806B
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 06:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eDnoTUytjd5tM7L4mdryblwQ1Oa0ct/7CGj6Mo6fEiE=; b=hhb/9mS1/fsvFCiruwhJSMUgSs
	ZI6Ww6NK0IAkx2xB1Y98eNvMrM8F9egj0QZkfNlGHZ+6feP2haMCFsFnF/4wUh5Rq9Y60dDpMq+zF
	DVKYMfHFDVl+4EqTtADQ1awbyCQZveIgOqcsxq/MVomLA4wpoZrQsmhKhZtq1yPWWO1RQ/lnPu3B+
	DjNRcuHNziq4BL4DnLKBdR60/X5r7a4f1x4dD1qL64mlOqLwv+Tp7Bv/4rvKdWcMlWLPJRrIFTsjp
	T0EydrZgStbUynoisGL/j+M/N6Y/1TECb/Owz3/CGdWFk70TeqDijjLulc7OsvSTng5GO9jCLblTC
	/wj9CHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGe7-000000025C4-0feO;
	Thu, 16 Apr 2026 06:56:15 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGe5-000000025Bj-0ui1
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 06:56:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so3699944f8f.2
        for <wireless-regdb@lists.infradead.org>; Wed, 15 Apr 2026 23:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776322571; x=1776927371; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDnoTUytjd5tM7L4mdryblwQ1Oa0ct/7CGj6Mo6fEiE=;
        b=oeovDSCVduE+jiOs6uFvEIbkG3wh8ghgQe8ETdsHL8L7x0Urwq16sMk8Vv/J7yFufj
         k2ERzQTSkUWW2PLT/fM29hiV4SsdBVHHnBJeXAzML/xo37glScF+HkyT9gkleCwvEF6M
         7JXY8IDQTTzTCZh10JJbLVH9zyDMHw+LE5peoHrhcn0UTozZU4gIBcQOqHrrDDgrN07n
         6UxT6xGGc6CwPxp/jjknSr3Di2e8RSy6+1oXSf/T4RmsSsNjqoAXbX7L4Aye02ERWcIt
         IIsgGfPfrBpEEAo8BPEijWTxQZX1IfBaXFAn6KTH4R77CzdH5QelPWk5nuBVRovJRstq
         8wPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776322571; x=1776927371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eDnoTUytjd5tM7L4mdryblwQ1Oa0ct/7CGj6Mo6fEiE=;
        b=eqejKdZNgxekUEuDgJWjDZ+UXiEqFBxgkHsFyBWN1WmIsdow4avJ/AsPcOyXJE+WcC
         5JlKNr0dG02wmqxvLtZt/1NgBupEL716EkLnjB67bgnsyCufoWWGDVYrSzN1WzFWRIOJ
         zeyBPDkZ54kEvOwmFrvImbEjhpw1rbuM0VyysgvtNZ4B4iAbNtwF55YDa0Fneqmt0Epd
         yZUZQ8bfHo+zutAON6/QcqEFHR7MyldZJBjvrQfsiwcFLptmNHJCcjs+6ZOzo6fl4/ad
         nxgGP4IA2WBehbNs6jnaX9cviQ8dpsM7WS7KJksCPJdG1yHxNRje1MmS/jRA5dotWdQ8
         2PqQ==
X-Gm-Message-State: AOJu0YxZk7hInUDfB0pbug4fkyfCBkChOGxidOak0JA8Jp54j/bZa+vP
	a44hbyu5yXeXrkE7d6CDYjNhFzMru4BaybQkpJ1jB6PJ5hPuBihaAzB6
X-Gm-Gg: AeBDiesoAAPow2oZ0z14/G/r86ikmC3q4nkbqrbA5eTYNiByveAJbmVMjderfk3+68R
	k4dweU4EE3vL59LFfj1Lwd53w38AAkEK3CaS5ir6SXmh1ioLhNp+WWWE7gPnNrvrpi6MRF30xNR
	x6p1liOFoBNxyvjcuqtkSGo6328uZdGCXdVxx1F0maeEO1pElhD2wT8qRT3GJQgUe2TxM1vEZ1B
	goY5SMiNNrpIRcSmr7mEOzATQH0qyt33QkCuHAcLPvWrsKWU2npLiJgDNbQRVkcXu+IsOLxnnKh
	mfGZGQoACdh7EgjTFJwLS8AhiOZr7Ro3Bt5DaQczhRuNFRD5ZyJ7VZUdfiFxaZGD8rzFiT7M+OZ
	Xx1AVHCvb50+Kka6s5O8wELN4LgmdV0gOwqXB62LlFGH0bb7FFqDNsgmTuT+q2PxtWt2kBz1+Ro
	dfaR+SpjOzaTa6+si5PSOwT8h9iOmtKjQzYz/k6WfUhoNMGkArth9bAE2dHQ==
X-Received: by 2002:a05:6000:25c2:b0:439:c18f:5aaf with SMTP id ffacd0b85a97d-43d642ccd7dmr37516282f8f.34.1776322570609;
        Wed, 15 Apr 2026 23:56:10 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43ead3d5fd6sm11537517f8f.24.2026.04.15.23.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 23:56:10 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Louis Kotze <loukot@gmail.com>
Subject: Re: Question: Should FCC-region 6 GHz entries use the India PSD methodology?
Date: Thu, 16 Apr 2026 08:55:58 +0200
Message-ID: <fcc-reply-20260416@loukot.gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
References: <CAMcSec+mFSUDm+M=0YaNDe26Z2nup2VzzJqz9psxh2-wkT=7Zw@mail.gmail.com> <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_235613_260438_A3565BD3 
X-CRM114-Status: UNSURE (   6.23  )
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

> The PSD limit is actually -1 dBm/MHz. The device class we consider
> is 6XD (indoor low power client). This translates to 12.01 dBm at
> 20 Mhz channel width.
>
> So the current rule in the database is correct.

Thanks for the correction. I was looking at the AP limit
(5 dBm/MHz, 15.407(a)(5)) instead of the client limit
(-1 dBm/MHz, 15.407(a)(8)). The 12 dBm entries are correct.


