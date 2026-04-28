Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900A6FF885A
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 08:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kTsGyFAu7NxYzeVwt1GgRjw+PgYKW++MjWdqNjwBocU=; b=JvUYpzCVlt5z4ow8QOYxtiPTEC
	wFl3BaIkGNZFN+kLhHG1Uc9zf7KmsViu63plx+xVmAfEBZ7/PUKUDqUFs2nQUpoB9FTizA695+KCJ
	PuFxznyKSaSD/uiYgKbQREJj+Gd3EnUejd+oHbO7pajS17SFgjv4sXoDu7rFgtTT/d9/1MsFVI3FN
	+HM1xObC20XvIWAYmTLsQbWnzFK/8mBrSIKXP79q+K7nxaZfEf/b2YJ9jgH8QYo0m04egOWgyXCHW
	nLIkuUXsWN65arrF6Po3sLQHvjdiQW4YvhtWSZB+1q3nAejp4BQ1DaHwF2HDjNHX5pKezC0DQUKS+
	Onbi0xPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdcx-00000000rlH-0lb8;
	Tue, 28 Apr 2026 08:17:07 +0000
Received: from forward500a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d500])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdct-00000000rkX-2Y3o
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 08:17:05 +0000
Received: from mail-nwsmtp-smtp-production-main-69.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-69.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:a419:0:640:4647:0])
	by forward500a.mail.yandex.net (Yandex) with ESMTPS id 773FFC0FEE;
	Tue, 28 Apr 2026 11:16:53 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-69.iva.yp-c.yandex.net (smtp) with ESMTPSA id nGUM56HYmGk0-d0UMnUVZ;
	Tue, 28 Apr 2026 11:16:52 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1777364212; bh=kTsGyFAu7NxYzeVwt1GgRjw+PgYKW++MjWdqNjwBocU=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=gmLWafRo0n9lAoU6kMlbe85mh5AGQRc1D3RI80mE3TGV/KpKKaCSXzIx5VaG2pO5m
	 T1Y4GSRhzrwo7Jf0ji1Revr9jAhP9n2TUsZOPY4WCiYsVyAyuLMP9S5ABWvkCMwuzp
	 ppO/+NZ3O4121NN6cHecoYRS9mUmrpSk3U3zEg3g=
Authentication-Results: mail-nwsmtp-smtp-production-main-69.iva.yp-c.yandex.net; dkim=pass header.i=@0upti.me
Message-ID: <b9d9d6e1-91c4-487f-82af-e53d4148c11b@0upti.me>
Date: Tue, 28 Apr 2026 11:16:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wireless-regdb: allow 320MHz channel width for Russia
To: Louis Kotze <loukot@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, Valeriy Kosikhin <vkosikhin@gmail.com>,
 wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
References: <20250708-russia-320-v1-1-53641e8dd417@0upti.me>
 <20260428074500.ru-320-review-resend@gmail.com>
Content-Language: en-US
From: Ilya K <me@0upti.me>
In-Reply-To: <20260428074500.ru-320-review-resend@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_011703_830661_B936E8F9 
X-CRM114-Status: UNSURE (   6.77  )
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

On 2026-04-28 10:44, Louis Kotze wrote:
> 
> Note that the patch base predates the recent RU power update (commit
> 6873bfe in wens/wireless-regdb), which changed 5925-6425 from 100 mW
> to 200 mW, so this needs a rebase on current HEAD before it can be
> applied.
> 
I can resend a rebased version if necessary.

