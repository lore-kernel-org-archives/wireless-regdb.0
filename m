Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC14CCF9E0
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 05:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x0slzuvphwOEQ0iYw9LZ2oFU31hxQu7Mdgr2bWczcco=; b=ubDxMG5d27Asttbh3gx9YgAkQI
	FT7Aohj/OVW08SGcDTzak9d2/ApDYJ00qhKKabdgKhLR8LHK+1zFq/A/DF1wolvXPNzmB64HrUU1V
	Rh5hLgnLyqpJhhWqwlhmRV36wblc2mqZpLQVQvijIifKM3g5dwP96ZKmxDK5ccNDoL1s9jyE+jepf
	K8do20T6Dx2jDReWGFrigaqHfuXZTr7IJ49KgDvXeKSCzFv0de2X1CTUg0rMCYG+5t1i+nuf4KjWQ
	Gn3bFM+yyGg09sMmvfgie3GjpxwDlfbK05B+AXZMIg4tiygvBd8N7iWE5VcMT5zedO23MLfYbPQ/S
	eCE4mPTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDc7U-0000000FFEx-2I3Z;
	Tue, 28 Oct 2025 05:19:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDc7S-0000000FFEf-3uuN
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 05:19:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1453760055;
	Tue, 28 Oct 2025 05:19:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0A05C4CEE7;
	Tue, 28 Oct 2025 05:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761628781;
	bh=vfJseT8v17GJU1NRM8ZRqBeY5S58QDmc7dUkRsxawhI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UY1pT/FadkkuOwgfiisGN/aCqnmCCvhlcrw65qlB0gURzolCFHMSWNFwGWNg9bguG
	 wAEu4lIMt9mUI8bvuPrB47JK6mHCK9Ll6y9WAhPB3m+sOD8TSYvP4rOv90wYn5X8kh
	 Rxy2JkntI8uJ3KhTzhfqxZLfoXmEJ5/z3p+d26vyNhahp35j/ziPV9en4IDRvOTSKh
	 G3QgKU+OKDyTM7B7AqFZS1Cyf6HkgVrt0ntNZoyfclKiTu4cQ4hmyJQxkBEMeZl2vQ
	 YHj74GC3PKK/QOAiXMdo3og4Bx46sSodr5DKadGcb0k9Bi9mg0pek5140LSKfzjmGz
	 euTeQ1/hMEmKQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 059C85FAC6;
	Tue, 28 Oct 2025 13:19:39 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Andrew Yong <me@ndoo.sg>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20251028021729.45098-1-me@ndoo.sg>
References: <20251028021729.45098-1-me@ndoo.sg>
Subject: Re: [PATCH] wireless-regdb: Update broken link in
 regulatory.bin(5) manpage
Message-Id: <176162877899.1002975.16761848894540098216.b4-ty@kernel.org>
Date: Tue, 28 Oct 2025 13:19:38 +0800
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

On Tue, 28 Oct 2025 10:17:29 +0800, Andrew Yong wrote:
> 


Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update broken link in regulatory.bin(5) manpage
      https://git.kernel.org/wens/wireless-regdb/c/a6e519535853

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


