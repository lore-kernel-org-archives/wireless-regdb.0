Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33623C25B75
	for <wireless-regdb@archiver.kernel.org>; Thu,  6 Jun 2024 13:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HL+VA5pC54SIq4UIX+CDF+Q028epsxdOE0vBPFeYum0=; b=BJ4uoy1AFE/aE8jC+c1jaSWyQf
	llZ2IeebqcglZMKufKd5l0SbTiPR+b8KxhkUQlu6gLr429mIB86nrOtZ7NSvhc6UBrOtGncrJ8Jra
	igob8NdJmcTGWKoBopj109cdPn9m6evQCBZyC/J19kBA/qZ5IGQUBRL35Qo9jtMLMfRWm5qv6YbnP
	d4wgmqkMdPVRaFutBPBd5vMERZ/rxJ/1FXfVn8YLHiauGpiwPr7tiTZnyxLfqan1CNDOQo0EjZLG4
	t59dMp3FTndPhMCPYTf8iY1tc9cSsPV5YwAoXO/xSz9pXvMOhmOuS1WUyuTqHS7smiDPBfCI22YHY
	UFlvadGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDLq-00000009wei-2iG7;
	Thu, 06 Jun 2024 13:40:22 +0000
Received: from mailcow.semisol.dev ([91.107.204.153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDLm-00000009wco-3YIc
	for wireless-regdb@lists.infradead.org;
	Thu, 06 Jun 2024 13:40:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 41D0A7E952
	for <wireless-regdb@lists.infradead.org>; Thu,  6 Jun 2024 13:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=semisol.dev; s=cow;
	t=1717681215; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:content-language;
	bh=HL+VA5pC54SIq4UIX+CDF+Q028epsxdOE0vBPFeYum0=;
	b=pvp3jC2LqC3aCTRLTfJi8xwV8zC/r9XPi+mxDc5wOHlDT4MzEAwN4Y+qeJNBi835qE1cK2
	2eJAPb3kuRcLuIickkG+KWdkIM+NyTb9tB1x4tbE8jvr2JF8YZSt3ZKxEf6KbPBq8yakJU
	L6dSsc1AZOPmeTyJLrSlQWSA/F0DTnCJrRxRa9c8DRTLDhhDdS8hCDCINR5bGEOxRAGdoq
	ED3MNRecEgRcXxtvlerA5j2BiW9rFZCIbXv9epCfqEDZMGKrWbcMezDtQwoAu1CMGwaoMI
	nvoZ3VP+2Uiw8CBgFnUUZrgiESWyTW5G92ucmWzPpvzoc9bF7AADA+7ncMxfEA==
Authentication-Results: mailcow.semisol.dev;
	auth=pass smtp.mailfrom=hi@semisol.dev
Message-ID: <dc4483d0-c97f-4287-a23f-48140d1c1bff@semisol.dev>
Date: Thu, 6 Jun 2024 16:40:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: wireless-regdb@lists.infradead.org
From: Semisol <hi@semisol.dev>
Subject: Error in 5GHz band information for Turkey
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 41D0A7E952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_064019_374531_D5D14E84 
X-CRM114-Status: UNSURE (   2.06  )
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

Hi.

There seems to be an error in this rule for Turkey in the database:

> (5495 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI

The start of the range is 5945 MHz, not 5495 MHz, according to the 
regulations at
https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf (Table 
3, 7b).


semisol


