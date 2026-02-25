Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D10F357D5
	for <wireless-regdb@archiver.kernel.org>; Wed, 25 Feb 2026 07:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=olK7T4Z1vlNOr0/WCm6uvsN7qlbs888cENenEs/rEXA=; b=zhyfEFFxUK7GCQOfc/AZcso1MN
	T9qeobOqrGKBcNTJCjhOdCKFrZwJv21mcisSO0GExBE6gbebd5nsi2nsBqTi4t4gaoQE4ursb648z
	KaXL85Aj9BirZMwM8SpqtDGAnaE+F9n7TnLBxqusauAusdqwRiAovb10obVJcTPT4xfn93vnwFVps
	/3qPHCqSZRK2BMlcvwkPNWtKdxybNxtNNKfXdK6WsVwXKXkun3YwUCdRS0VvFDN7SaglI8B2dY2Ev
	WM0f7b4LVy/gGzqaatyFYBnhJwPkoH/fOnfjoACbBtt7obTLaIR55mWiF0XDhDR2o0ceHT9ABFwo4
	MbTdnm7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9Vn-00000003RFb-2Tqp;
	Wed, 25 Feb 2026 07:40:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9Vk-00000003RFD-2fcW
	for wireless-regdb@lists.infradead.org;
	Wed, 25 Feb 2026 07:40:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B076441C7;
	Wed, 25 Feb 2026 07:40:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CA8FC116D0;
	Wed, 25 Feb 2026 07:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772005244;
	bh=z/7Cg0ExGv9P0DICWygB37x91UxTi3NikcqOl/mHm3E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Cuk8PU7nOQS1Xi2i7I3SA5pKlpWdDEa9cvYmvO+erHzDQexIRPP1ROtHqla5QZ3A/
	 giypyj+Uzr+9bzjd8lGOz7zSqTMZeQc6V3vg0u3cqZaK1cy1PnAkUe6vHIbAbYpUqb
	 OSrmEWmRECWZoDfWzlDxSBpuj54QpFkd69EmKxlBP9HvYyV8eu18qibT+U1D2NVExK
	 O/znYgU+JLm3HRl5OSx3Rzpwe+IV154TiOyXLBdH+7yS0MsU9q93A/+OS+jJ13zOo9
	 mik9JkXCrXWPTCZQw45pPh+km/gW03r2Xux+LHslIjwaiXwkDk3ez8Cd8TLBLlFS1w
	 2sEwEyUAjeJ0g==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 9D0AA5FD2A;
	Wed, 25 Feb 2026 15:40:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Ben Hutchings <benh@debian.org>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <aZN3thlmaiBxYVQQ@decadent.org.uk>
References: <aZN3thlmaiBxYVQQ@decadent.org.uk>
Subject: Re: [PATCH] wireless-regdb: Fix regulatory.bin signing with new
 M2Crypto
Message-Id: <177200524161.1547788.6280278042260443537.b4-ty@kernel.org>
Date: Wed, 25 Feb 2026 15:40:41 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_234044_722979_CD611A7A 
X-CRM114-Status: UNSURE (   7.48  )
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

On Mon, 16 Feb 2026 21:01:58 +0100, Ben Hutchings wrote:
> In M2Crypto version 0.45.1, the default hash algorithm for
> M2Crypto.RSA.sign() changed from SHA-1 to SHA-256.  Since the
> signature on regulatory.bin uses a SHA-1 hash, db2bin.py generates
> invalid signatures for regulatory.bin if a recent version of M2Crypto
> is installed.
> 
> I reported this incompatible change as
> <https://todo.sr.ht/~mcepl/m2crypto/389>.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Fix regulatory.bin signing with new M2Crypto
      https://git.kernel.org/wens/wireless-regdb/c/dcfad17e607c
[1/1] wireless-regdb: Replace M2Crypto with cryptography package
      https://git.kernel.org/wens/wireless-regdb/c/88951a4a9b07

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


