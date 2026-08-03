Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5AB3C55190
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Aug 2026 08:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mk6yz9oaSdC7PuAAL/1N82Qc+YZSlp7+mbayFXq2qd4=; b=Ge8zGWpWM8i/muUsW80AwfKdru
	3Hq7fqTm+yhm0AQLrE+q0EWIsFsiYGDxAEcZQP0UAwRuOm6qZJUhxffIohlgreAT1If+tnLFPFtDk
	D5jZKE/2XbbdoG2lCxNyPzZNE+pO2TZE297dE8YEhip+eKpdNvn74fZZ2/9lUf3ltkqR22RvG8+a8
	cZ+8XqpSaSD98rHi8Evj9d2K2dPpAtWIJRMXBDy3ARDrcW16T49vPGsQFhT4wkzVhC6WAT4Tz3thv
	AnAsCJ5seMwSEWxgE5C75xtn8h54q3cD2J55y8EKawVtTGY0MV1OUmxXXFNl9aMZzM2dX5PTmZ0tR
	RNkJCkiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqo9J-0000000Gc6Z-1DVj;
	Mon, 03 Aug 2026 08:35:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqo9I-0000000Gc6L-1HZG
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Aug 2026 08:35:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 87DF9600FF;
	Mon,  3 Aug 2026 08:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 240CD1F000E9;
	Mon,  3 Aug 2026 08:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785746151;
	bh=mk6yz9oaSdC7PuAAL/1N82Qc+YZSlp7+mbayFXq2qd4=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=cHOxG05ENUd15gjYP2Yrgv6o9DP6bJF2g6dUwGgslTcJOMMnPmxeo6HZ+Ce35THn2
	 E6onVvzZKQIR7BriKbygRJW0ZauxM5FyIiJD5obtG/a/HzRjpqqvxOpBLZnSU9DwyG
	 +2DpKcOJKz7nj9MlAzKdCZAwvhtQ0NsssLvPzL+tZPhe3pfkfGdCBHTOYyQcUrbNrh
	 PKeBfV3HBaRapv+udSajrmPKingDM7NZqRfWNYlw430BP2v9I7y2GuDYqZK1Pi9UEP
	 DJ13RS7W1qSQ6PS+cGEWnFPJZ0FJGYQWbWQMQQU6EDYYHfc0fmhFmd3g0aIoYvnISR
	 n2BGB81DU6h6Q==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 38CC25FCE6;
	Mon, 03 Aug 2026 16:35:48 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260728094534.3749420-1-loukot@gmail.com>
References: <20260728094534.3749420-1-loukot@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 2.4 and 5 GHz rules for
 South Africa (ZA)
Message-Id: <178574614822.2136605.12078568405751473033.b4-ty@kernel.org>
Date: Mon, 03 Aug 2026 16:35:48 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
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

On Tue, 28 Jul 2026 11:45:34 +0200, Louis Kotze wrote:
> ICASA has substituted Annexure B of the Radio Frequency Spectrum
> Regulations in full twice since South Africa's 5 GHz rules were last
> touched. The operative table is Notice 1822, Government Gazette 48643
> of 18 May 2023. Notice 1822 section 1 recites the chain itself:
> 
>   Notice 279, Gazette 38641, 30 March 2015 (original Annexure B)
>   Notice 386, Gazette 38754, 30 April 2015
>   Notice 781, Gazette 40436, 22 November 2016
>   Notice 737, Gazette 45690, 21 December 2021 (substitutes in full)
>   Notice 1822, Gazette 48643, 18 May 2023 (substitutes in full)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 2.4 and 5 GHz rules for South Africa (ZA)
      https://git.kernel.org/wens/wireless-regdb/c/74cb99ff3853

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


