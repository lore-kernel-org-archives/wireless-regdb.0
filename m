Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34CF8D58CD1
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Mar 2026 05:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vt+u9EYCpPu2fR8hgidrbMnNnl6klsZ7sj9T1g3p4UY=; b=L2xeOrMx0o0Eli76NWov9N96sU
	asLlrK6QjF/bROXtrktx/MwQMGzOjDe907sowIsloOHzxRjg8yMIam0fh3k5VP1OcPV2UWPIFS6IA
	fUCbt+njacSkBnC8rzMi+AhMAMEUNBdgtc/WN/kNlU2NcfdN7UaPycB0g4huAKCUcDjTgB4/lT7d4
	pnDDp5fNxnDnfZq5f1PwWIuQ7i/QAP+5ZBAT8q2qCZrT8sbXsgn2AVU3yr84G0g1UGZPgjnYcd5tS
	/4W0SCRLBfKx/QS2gPxbmt2aG/XBcRogczrXnTNAClInXz3dY4cEw0tQBWYLcSzClmvGyRGTC855c
	9fNkSzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Xbt-0000000G37r-3wwK;
	Mon, 23 Mar 2026 05:13:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Xbs-0000000G37l-3yTh
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Mar 2026 05:13:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AD47560051;
	Mon, 23 Mar 2026 05:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40AEFC4CEF7;
	Mon, 23 Mar 2026 05:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774242831;
	bh=n8xTohlnci96Oepuq8kcoqGBK5qDG9Vzur+/7V2FVpY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=b3c2eCbAd7ljBkT4V6MwASehoc/Ro+ELm6D5iPZGmPutSynvrnN43dwGFO6sU2hAp
	 dh/5cFoeow6gjncbrmUMQ05YXZxsEnAJjPoir0AlD/lOTTO9vtyjOGovSnNWLxXeGH
	 CNvwJRULWKub4CvjELznYEMFly7KRMbgOh6TpkT7Ui5pV+eZoFpROcq7s7fqpBJ3fX
	 GHRI1SkykEKmiFyzUo8a0qP2xSO+Ll8EvxwEJWHUvagEDrLGNoaDtvysZhCmR2+q0J
	 7rq6+vqnnEOh/kjMNP9yHCZ3OfEe3cbRFwsyDte78FGZSw26PHI3llbnW2LlMJ21Kt
	 +x9W3gVzU90Bg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 6009F5F82A;
	Mon, 23 Mar 2026 13:13:48 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20260319023538.7707-1-pkshih@gmail.com>
References: <20260319023538.7707-1-pkshih@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Add regulatory info for CEPT
 countries FO, GI, IM, SM and VA listed by WiFi Alliance
Message-Id: <177424282838.1096404.2213827406738511152.b4-ty@kernel.org>
Date: Mon, 23 Mar 2026 13:13:48 +0800
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

On Thu, 19 Mar 2026 10:35:38 +0800, Ping-Ke Shih wrote:
> In commit 5a8ced5ad313 ("wireless-regdb: Update regulatory info for CEPT
> countries for 6GHz listed by WiFi Alliance"), the following are skipped as
> they do not have corresponding entries in the database yet.
> 
>      - Faroe Islands (FO)
>      - Gibraltar (GI)
>      - Isle of Man (IM)
>      - San Marino (SM)
>      - Holy See (Vatican City State) (VA)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Add regulatory info for CEPT countries FO, GI, IM, SM and VA listed by WiFi Alliance
      https://git.kernel.org/wens/wireless-regdb/c/3ceaf3bc0a3d

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


