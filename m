Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=EN31hcaq/ZQxAFY1JFEh5GSL+8aDON7CTe1+M/xMakI=;
 b=nXCm5Mq+wJHF2n
 ypXknCMq+gzNLDeb2CZWl7ZiUOP2AxUJwI3+pgGkDh5dFWnJ+zzuksKN5SqeAlWTaWWSqaNJd74db
 7zyjxL4+2l2aJooeQ4Lumlme/urLFUxV4xvOdNr9WLDZTleJLhctBawB+cRM6/ANskq/0l4oGii7O
 XLPD1WRVb57yxRXjG7BwnQ1mCynW5ZmONYtfQxiybOdoThd/myL080cG6X3HsyfJJlq9izN0nykoS
 Snz32ujN5Bh5lqi27H7+mob8comHbudbKJb/+xDYlMaqeqYPkgCPshiRGiADRf4zXWyTFGGSDNBvl
 vq4dITF3HbeaE/bvb6qw==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95Cj-00E0tK-2I
	for wireless-regdb@lists.infradead.org;
	Fri, 01 Dec 2023 15:13:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by sin.source.kernel.org (Postfix) with ESMTP id
 6DF68CE259C for <wireless-regdb@lists.infradead.org>; Fri,  1 Dec 2023
 15:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701443597;
	bh=bgVpJ6hVee8gz5zZ1AIt7xJ21gnIzgv39He+QNukP+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ef4hBv/yEd9EJg2ynWjE1FK6TtowEEauVr/rqEvpa6uVjY0a2bsZbvgypjHsX+K4M
	 dzqF4XBBtOEZyTgLI9Z+Rzs/ygVkt2MTt3cJleYhMRyX0HW9/BrA8cLC7uDgUxogyj
	 0CqHdynkjFgNz9xZYPxMXiLbe7/DCV6BLAuaKe1X5gzFEvfsT9qXD6oH9O1pmNN+jq
	 Az5CRzqBhRm+z43STBFTMyLe8q08qBWzmd+3z4+VePC2OhYlHVtCNENyIHxbzIF6zF
	 I6d714sbILlW32EQNvnkVq8a3ZqpXhrerjMFaALUi5GRleQYyVP5DC6aou4WgZWcIL
	 NeZSM5wtxzfPw==
Date: Fri, 1 Dec 2023 09:13:17 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZWn4DVk/eCbcDPKX@ubuntu-x1>
References: <ZWmRR5ul7EDfxCan@wens.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZWmRR5ul7EDfxCan@wens.tw>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update keys and
 maintainer information
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Dec 01, 2023 at 03:54:47PM +0800, Chen-Yu Tsai wrote:
> As announced [1], I am taking over maintainership of the wireless
> regulatory database.
> 
> Make it official by replacing the key and certificate, and updating
> maintainership information in various places.
> 
> [1] https://lore.kernel.org/all/CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com/
> 
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Applied. Thanks for taking over maintainership!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

