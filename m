Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=zGdy3agW1entItBkNye6YSmzK2s/o/lmNQbM8YllbUo=;
 b=Q2LRQWQ55e8NhyEWJoT3214Jd3
 JsjugWBLbT1/4y6tNbXhAAsTktvv2BXtiFBONBkISSPfSH0QLqaG6yxi6H6WsdMq3pX2aTiILEw9O
 O6oFTYP5QIanzUejuSqgy/ME5Qzh8QwRRdc4999Y9EAzIxVHGUw79pmRwpdk1MbbGDN0Vqm5ZP2xQ
 Wa4C/i+CsKYUbBqOIBdQvS+4F8ADS/vMd1I77u0g2wmTin97OtbzjNVXwLOXAHYf4bCLZ+TTpCQGH
 lXC/D56c/53PuJhsilhHvUL3+8lmbF7KpL8hDVApQrQuD9S06tSecBloecWu0l4T+3bhBb64f2/jx
 ht+u/jKA==;
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAROL-006jmk-3D
	for wireless-regdb@lists.infradead.org;
	Tue, 05 Dec 2023 09:06:59 +0000
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue,  5 Dec 2023 16:59:13 +0800
Message-Id: <170176669164.1176895.2576180821287643746.b4-ty@kernel.org>
In-Reply-To: <20231116221828.301564-1-briannorris@chromium.org>
References: <20231116221828.301564-1-briannorris@chromium.org>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Makefile:
 Reproducible signatures
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
To: linux-wireless@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>


On Thu, 16 Nov 2023 14:18:16 -0800, Brian Norris wrote:
> Per openssl-mime(1):
> 
>        -noattr
> 	   Normally when a message is signed a set of attributes are
> 	   included which include the signing time and supported
> 	   symmetric algorithms. With this option they are not included.
> 
> [...]

Applied, thanks!

[1/1] wireless-regdb: Makefile: Reproducible signatures
      commit: 9e0aee64cd2347b45d6d29a65105c2926c0b8dbc

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

