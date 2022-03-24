Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=g5l/rXrWLdJdFycnmxqYX+gdJbGWmeq9TDhqdNENRYI=;
 b=Ww6z4uTc2rQ760
 g2V8jPOLNzQJ0Z2WXkpCbUmWrRZI03dJLexvSOzejRH/lvlUaXpFrIfAqN8LAuS9iVt8kD+ycO+eG
 EKKxYgMyUNAEJkp3Khwjbnmu86Pg/Cywp5fIEWk6DsfZQrM7IZMELWOIEOobk1m2Br3q/LdzFBp8D
 bUHZwtFUlYXraa58u1RJgdY+WAmcfaigb0mIptEGd4mNVxkluWHs9XJ/Sm+aHW8aT6Dn/FCCzmswR
 Ry6ByufC94RuUyTYwi+igrx+fTTZ31m8LBzbVX9AoLLvUiiLwVq7qeF4KBCDZ31fqicDyOKGWx4WQ
 k5/KmwVhpkHK663hrQYQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXN4s-00GfZ4-Vu
 for wireless-regdb@lists.infradead.org; Thu, 24 Mar 2022 13:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648126831;
 bh=k8N61MN7In18DFsX0Xoab8N7+oWps/A14U6QrwA4rc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nDZ6ahQPo8YF8Oits81FxuRLiGXNvwL/XOjwRW4gX7L5kFLeYh3mWW1dQ83KW6gk+
 1sCI3YH56D/cV7DKzU5sn1KTSwklLSy8TRkWfgTlQPQBPRRVrtOOXweXMzwl2DxU40
 54R2Di60wOehxzjDhw6698LnIgP/WzfBp73QKiF0mmh/ZyQInCtxBVrSRg5gLfuwuj
 h6ojT029vbK3y6F8vm39zkr5SoEpknG86ZRk4NUgoa2kbJnrSw0Rv1QVj6G1RBYsr0
 G5FmHTz/bzyEJa8s01n2Fhl085Be0jl7WadysyTzbjci7NB/ncQfMHUTO/wySEXxsy
 bvAwskPxjrQCg==
Date: Thu, 24 Mar 2022 08:00:29 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YjxrbQfwiDik5YA1@ubuntu-x1>
References: <MyDMIaB--3-2@tutanota.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MyDMIaB--3-2@tutanota.com>
Subject: Re: [wireless-regdb] [PATCH][v2] wireless-regdb: Update regulatory
 rules for Israel (IL)
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
To: roman.kunz@tutanota.com
Cc: Wireless Regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Mar 15, 2022 at 05:15:49PM +0100, roman.kunz@tutanota.com wrote:
> From 84ba49ba0ae2da981d06f439691d6c93964f8f45 Mon Sep 17 00:00:00 2001
> From: Roman Kunzman <roman.kunz@tutanota.com>
> Date: Tue, 15 Mar 2022 13:34:03 +0000
> Subject: [PATCH][v2] wireless-regdb: Update regulatory rules for Israel (IL)
> 
> The Israeli Ministry of Communications has published an updated
> revision of the normative radio band allocation table on 2021-03-29.
> Notable change is the expansion of the range of allowed frequencies
> in the 5GHz band.
> v2: Increase bandwidth to 160MHz for 5470-5725 MHz range, as there is
> no specified bandwidth limits in the document.
> 
> Signed-off-by: Roman Kunzman <roman.kunz@tutanota.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

