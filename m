Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D95FFF885D
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 09:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QanN1hvymPQkfK3pxfbCHGaN5t55yhRf2F2DTrO0/LA=; b=i8rD3vhkL1fGDIKmBQUJSTcQeA
	B/ezODnRCOCKWVQN8A1yaLbtYiBq9BEdzUrjs5jonwkh0cRH2hrWNtmwZzLp31qvWYFIfdnX9Ymx/
	geS3o+0M3Bd0vHUjIhIklW2mrBA/Q2x8JEvx+h8jBO2gcqm8M4jl3HIjTM1e/8Xt5o714WBKP59V1
	+Zvec85zYMyy0udNtx2szbUPjoIa0UKzLkexC83TGpfRrl3GPkl2KGTv0eC9S6/cybyhTGSNXpflb
	QExx2fUrFZKk+ptvTUJ31d4tvXBZxksqGsXDo/Yi8BE7woV374lqhwqOPkzQqsSQfPw2qIXojtw0A
	KOAaLySg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHenD-000000015vO-0Upp;
	Tue, 28 Apr 2026 09:31:47 +0000
Received: from forward102b.mail.yandex.net ([178.154.239.149])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHen9-000000015v0-2yAP
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 09:31:46 +0000
Received: from mail-nwsmtp-smtp-production-main-89.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-89.sas.yp-c.yandex.net [IPv6:2a02:6b8:c11:2281:0:640:870e:0])
	by forward102b.mail.yandex.net (Yandex) with ESMTPS id BD1DBC00CD;
	Tue, 28 Apr 2026 12:31:37 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-89.sas.yp-c.yandex.net (smtp) with ESMTPSA id QVVcnN0Q9uQ0-UGZNg7xp;
	Tue, 28 Apr 2026 12:31:36 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1777368696; bh=QanN1hvymPQkfK3pxfbCHGaN5t55yhRf2F2DTrO0/LA=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=gzjK+8xVMeZy8EWm1TVOI4sgG1FUDod6bB4Nn6zqLu1Hx4XspfuPMQq9yZp7Bp77O
	 AU0iuVe1+KQXdc82+12mLUr1TEXe60/Vi6Xp9haTqOE4iZT3MD80HOEF2VzuCsxrvf
	 IWg1Bcq6Jyz3bHt0Hz2mhh0hHJr/2b6DRLD7nvsM=
Authentication-Results: mail-nwsmtp-smtp-production-main-89.sas.yp-c.yandex.net; dkim=pass header.i=@0upti.me
From: K900 <me@0upti.me>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	K900 <me@0upti.me>,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH v2] wireless-regdb: allow 320MHz channel width for Russia
Date: Tue, 28 Apr 2026 12:30:53 +0300
Message-ID: <20260428093058.3672383-1-me@0upti.me>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_023143_946479_A4006AE0 
X-CRM114-Status: UNSURE (   7.98  )
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

The entry was added before 11be (and thus 320MHz) was a thing,
and there is no actual legal restriction on channel width, so
update it to allow 320MHz channels.

Signed-off-by: K900 <me@0upti.me>
Reviewed-by: Louis Kotze <loukot@gmail.com>

---

Rebased from v1: https://lore.kernel.org/wireless-regdb/20250708-russia-320-v1-1-53641e8dd417@0upti.me/T/#u
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c310b7f..de53874 100644
--- a/db.txt
+++ b/db.txt
@@ -1772,7 +1772,7 @@ country RU:
 	(2400 - 2483.5 @ 40), (100mW)
 	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
 	(5650 - 5850 @ 160), (200 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
-- 
2.53.0


