Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B4BCFB442
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Oct 2024 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNJtuOa7nprHBQkmPIpoAm74IcDvLuhw5kOMfrzwdN8=; b=wIKUd5J7A+UfYzeOcP3Th9i9Zu
	3Cr/wmYp/00kv7vbElXeyT8mG6RseJIkxOBd+bTKP20QDd37rHEbJkuVEqgkWYGcY4IZ2hsuH9g0h
	JsLf4DEOe04EArQqWnc9G13AaM/+QZocCFEOgdx07QjJTE9uJf7li8TboOvp3WB+b7bhvWoXKisD1
	lu8Ku4OZQm7BnypW2rd0rAp6KjQs9jb+3HPy4WUE5KQgU3d5T/WJi7VRLJQNiOrkPn8eEJ2SE4DEe
	0QqyVOP+esiInTdZZpC7xY6jWNa3WzwGV+pXWZXjsMG/pVB1OKB0aOEWwOFmaMP+X5Gcg+h1hMiGr
	OUQO5lAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePe-000000019G3-1DKl;
	Mon, 07 Oct 2024 03:27:58 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePZ-000000019Eh-3jcB
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Oct 2024 03:27:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32CFDA41520;
	Mon,  7 Oct 2024 03:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38FE1C4CED0;
	Mon,  7 Oct 2024 03:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728271672;
	bh=1t/lSy4IfuXem+6A9uGXznJm0uW6jqUdtS2x6XVrMjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XY+sVTr6A8PM4TLQpFe7HIOpHmRmMd839QHQIYpIfzsbnKIFlASN2xyMX4Zmpz38e
	 +qdbCl050Xd+VXQ9WWRqFRtasjSNg8WQhiWsDAX/DIYJFLLNp9fqxBaAYC6XJ2nt/E
	 tkfnn2A7M413ZS8xto6StLucl7OxKvQ2zXBKzYvXcF/0OSj9KJ/uquS5K7vjA7RnbS
	 fifAwPQbrl8oFB/gBSxTVocCoSnxJ0R6XRoChoxRdyWWV9Dy0Uhtm3/F+JRziSTAna
	 eh77CxSIIdnAqGR2U7JszVofA3cK+4hsPbtR/K9YMZsnYWPSeKXa6xiNnfhNdbpSWu
	 F1jeDWiXODHVg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 694C45FF0D;
	Mon,  7 Oct 2024 11:27:49 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240930090347.11085-1-pkshih@gmail.com>
References: <20240930090347.11085-1-pkshih@gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for Tanzania
 (TZ) for 2024
Message-Id: <172827166942.1242641.12760370003078122996.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 11:27:49 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_202754_030433_E63F967D 
X-CRM114-Status: UNSURE (   8.27  )
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

On Mon, 30 Sep 2024 17:03:47 +0800, Ping-Ke Shih wrote:
> United Republic of Tanzania, Tanzania Communications Regulatory Authority
> released Minimum Technical Specifications for Short Range Devices (SRDs)
> on 2024 [1].
> 
>  * 2400-2483.5 MHz
>    - 100 mW e.i.r.p.
>  * 5150-5350 MHz
>    - 200 mW mean e.i.r.p.
>      * The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
>        in any 1 MHz band.
>    - EN 301 893
>      * without TPC: 20 dBm when operating in 5250-5350 MHz
>        (20 dBm is adopted for 5250-5350 MHz)
>      * DFS: 5250-5350 MHz
>    - Restricted to indoor use.
>  * 5470-5725 MHz
>    - 250 mW e.i.r.p
>      * The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
>        in any 1 MHz band
>    - EN 301 893
>      * DFS: 5470-5725 MHz
>    - Indoor as well as outdoor use allowed.
>  * 5725-5850 MHz
>    - 1W
>    - EN 302 502
>      * DFS: 5850 - 5875 MHz
>      * FWA device shall have the capability to reduce the operating
>        mean EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz
>        (24 dBm is adopted)
>  * 5945-6425 MHz
>    - 23 dBm for LPI usage
>      (should be indoor naturally)
>    - 14 dBm for VLP usage
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Tanzania (TZ) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/5097b4a2ddac

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


