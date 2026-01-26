Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3FBED13C2A
	for <wireless-regdb@archiver.kernel.org>; Mon, 26 Jan 2026 14:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:From:To:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gNWrv6g1q8JcYuightOxARe9DuqzTKNXj4XW8Of2H2I=; b=V6tPD9hN1/zX7bvfOlvA1s77R4
	ElrsV4XcLQBE8p9uwk7JfJ19QlLqenMjlXSCDjSVtR+Yx1i1MFZCyxL3DKnUUaAH7kNMjGkC+WKbT
	ZHqe0QcUQmcyItRw/PqsY4FXrcB6ikTJD/fzlQIim0iO10eL2AqVjFiD/6m/8BY19oKbdcqQ/qQP0
	9OmQcJrTLNIM/2jc/XUsg6okFQr/Fcr5jeJ+pLTztaJsf/WOQYWLs2LdtasW+RzA/QXJldGJixI9y
	WwE+HWN0+renNrS4lkzLO/v4oFgUGUJeHxLYbqS2S0KlWBMhoCB2ZzlgycRye0XHeNxvOwUzAc6sg
	INUVJfUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkNyy-0000000Cj5v-1eyc;
	Mon, 26 Jan 2026 14:54:24 +0000
Received: from mail-4319.protonmail.ch ([185.70.43.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkNyv-0000000Cj5X-2k2K
	for wireless-regdb@lists.infradead.org;
	Mon, 26 Jan 2026 14:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1769439258; x=1769698458;
	bh=gNWrv6g1q8JcYuightOxARe9DuqzTKNXj4XW8Of2H2I=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ajPz+s6+H4/v6DOW1HyKJLnAEqFjfYvmk9KrXOYtTPsA6arI2FyslpAziUp9nW12j
	 ahIh/jph/GkDCUImwUWXDks5OkMW/uuGEbvDOMPZEI7UNMDK1goc3tQAb+xUaxnyMb
	 ni9LnTh4C/eITTwjhfS2I5ty03FrVTHl5HNO2oIks6z7X3z9QnOVZo8G+lbQyQrvtA
	 KTknyiOGhKOGaRmB+SJJMhfH4ipBpHTY/fUXlB+BbFMTiZneRpF1yu6iKLjSHKcvVq
	 EEH5O/P7BiaC3aQ1D0RA/9RlCQYWGCHyA6f4OPfwkVbbtmf1ZuUKCoK36YhHRKQiX+
	 uVhpZxhFkZ93Q==
Date: Mon, 26 Jan 2026 14:54:14 +0000
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
From: srl100 <srl100@proton.me>
Subject: NO-OUTDOOR operation
Message-ID: <gJk9K2NbSv84IW0dpE3w6ug7lbvQvz-uWkaxUH2igF7fcvblPCi-xchnclVDvO_cGtP34C08PKj2VQTxonbQ3Gm6M7Vy5PlyhrylOoJcMPo=@proton.me>
Feedback-ID: 178115481:user:proton
X-Pm-Message-ID: 9af3967c76a4b01f29a2af119051cdb9b14eb771
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_065422_282707_CB62CB0E 
X-CRM114-Status: UNSURE (   2.70  )
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

Am I right in thinking that the following entry in the regulatory database =
means that it is not legal to use WiFi on the 2.4 or 5 GHz bands in Indones=
ia?

country ID:
=09(2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
=09(5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
=09(5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
=09(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
=09(57000 - 64000 @ 2160), (10000 mW), NO-OUTDOOR


