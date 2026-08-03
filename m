Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC54AC55184
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Aug 2026 08:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZNoil27WmvoPhIaqG/dUObx0KmrbxTTfAaGYsTLf/ow=; b=pPvMFcZjl4k3t9dAUIYoTItq3M
	tYIDHa4fPuADAig14uYz9X/pZ1LS+pYvtB2oW8CZIeFZIBftBTwWvMc/Yg5Rc9NcLqH3Cosf0w68h
	2y9wLvTk8Nrw1TjSnzfPzeIhcacDwO3EPx0b8rSxbP1sYJrRP1BzyISRfdtE8Y4Kbpwo0SjqSwmsW
	3DJiLhrlSwCjnApgtj4Kys7bnDuUaXk7WZkG1S/m47FbyP8HybgUSruzAIdInc73/5JMufJzWuDox
	p5yRHsX1XPM2WPzSdIvWMX0RjwaL903AM7G+kS+i8XG3UfdTyr1dDx+q64AqLQ9fNWwjSXCdl6xrj
	tltQm1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqo9J-0000000Gc6d-1WVM;
	Mon, 03 Aug 2026 08:35:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqo9I-0000000Gc6M-1axf
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Aug 2026 08:35:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A06C60A5D;
	Mon,  3 Aug 2026 08:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 260441F00A3D;
	Mon,  3 Aug 2026 08:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785746151;
	bh=ZNoil27WmvoPhIaqG/dUObx0KmrbxTTfAaGYsTLf/ow=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=cG55r2J1pNEc1q4WNRZLScIE48Gp7SH+9TOxqK37KyHShwNok99xzwbNgEsqWfETw
	 zQmzmViWQecu88jHtVbyPBG82gdPB1lnf36K0nOYJ5huHbeMhKsUTLacdtj2L4IEGd
	 XZx9uE7fx9Iku9zKSWAAAaH7ZAb1EGTKcDFqkDAf6TelnfC+EqqrN2H78Vb2XruHAS
	 9Jy0bKR8S3Ux70pnH9usshktk4y/qmov8GvxKqPAgXAifUJLmZyi4LN4EZ+R0EmX7y
	 qqC9yGjvr92fqVCA449fkMtwX7bA9Z0TEVRLeNpI43uREDiLRLjUwIRHRPTQM4PKer
	 NH/Jlbvnv+YVg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 358D25FADF;
	Mon, 03 Aug 2026 16:35:48 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260727085953.356259-1-loukot@gmail.com>
References: <20260727085953.356259-1-loukot@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Remove DFS flag from 60 GHz band for
 Togo (TG)
Message-Id: <178574614819.2136605.5529902815503967574.b4-ty@kernel.org>
Date: Mon, 03 Aug 2026 16:35:48 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
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

On Mon, 27 Jul 2026 10:59:53 +0200, Louis Kotze wrote:
> Commit aad0c26 ("wireless-regdb: Update regulatory info for Togo (TG)
> for 2022") added a DFS flag to every band in the Togo entry, including
> the 57-66 GHz band.
> 
> The source regulation, ARCEP Decision N° 226/ARCEP/DG/22 of 30 December
> 2022, Annexe 2 section 9 ("Dispositifs de transmission de données à
> large bande"), states for the 57-66 GHz row:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Remove DFS flag from 60 GHz band for Togo (TG)
      https://git.kernel.org/wens/wireless-regdb/c/24828389a8bc

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


