Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B8DFC35FF1
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Mar 2025 06:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hjHyA6MTmunSAQyrpGvT7/tkcchv3qvjuaypABDzBZM=; b=AwOFIGR3MDfuk3yq92ROSeBEYC
	OSYL0sHv+BSHsCoRZcB3J+Vq/D1zvIq0KAV+Ac1KWdOIf8/IHLUTLJtHNEgnE0KiAZvPt3aIk4QfJ
	i5VqwTIwdFjpHROFHbfe6Psr/bHTtqmUfMtfCq/2cciGzLobSuVlUkYykwSqgVb38qWTZiM55Qfq2
	yWULq4rwiInSTgHR3DwEbWyn2V3OriGSPQsDBFMKjj4wHi6v7ib6empxQGsQIEVZr23oN+Fxu0U8S
	zRlPxUFqaPB2vAsfU0KEKhpzXdW5t28esV4J3MBqZ/k7sjrrASoJArdVXHzYatClZ4qQu9R1SP4g+
	Gpyax+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tunDR-000000089cG-158x;
	Wed, 19 Mar 2025 06:47:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tunDQ-000000089c3-0pku
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Mar 2025 06:47:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 12E9C61145;
	Wed, 19 Mar 2025 06:47:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD620C4CEEA;
	Wed, 19 Mar 2025 06:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742366867;
	bh=dkk8rVsY9g7fXu1+Fkdnu/Wf4wEQhWFdgFk0a0RO/9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FTcXOra4KeutWaXtBXjL42kD4mU6htGHwCTIDMQ36rZ7ZMvEB1o6y5XB+o8goj63V
	 n7vnacOVUn1vdiMKSUE8vOIl27blmXIKwykzbMnY2+eLwrauUXEnNcLQA7YsGSpXAP
	 L5P26fV5sgYOt9Ds8Q5HrsOjSOYaEy+XtVfgWZ9h6NBexU2l/wV6YEV54x112/nx4Q
	 YMhxgxyakTy5RQokCtZY6RXoJBj/feXvwr38He3CIqo5Irq2KgeebtOGMNh7Nrz6JI
	 IpWBpTtdjMlHw/iVzh2fB/qVKAbDSEKUJoYD6Wdkfb7u3smQC+q71rRuoaY4IPZ2z8
	 roZJUb3Uf5rXw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 4BCAE5F9B4;
	Wed, 19 Mar 2025 14:47:44 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250317073040.8726-1-pkshih@gmail.com>
References: <20250317073040.8726-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Indonesia
 (ID) for 2025
Message-Id: <174236686427.821834.15108936552440451997.b4-ty@kernel.org>
Date: Wed, 19 Mar 2025 14:47:44 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
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

On Mon, 17 Mar 2025 15:30:40 +0800, Ping-Ke Shih wrote:
> Indonesia. Ministry of Communication and Information released Regulation
> of the Minister of Communication and Digital Number 2 of 2025 concerning
> Amendments to the Regulation of the Minister of Communication and
> Informatics Number 2 of 2023 concerning the Use of Radio Frequency
> Spectrum Based on Class Permits.
> 
> According to type 1 access (using RLAN for end user needs) of Radio Local
> Area Network (RLAN) section:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Indonesia (ID) for 2025
      https://git.kernel.org/wens/wireless-regdb/c/6953f19b96f4

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


