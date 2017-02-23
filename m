Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=dCr8e3hB5LhSYyIB5/4rgPBa0P8BO8z1VNIsABMIF60=;
 b=u3T/A5iCxYncHK
 Gk1hym1YJltj002/46gxBKJWo89wglIZv2JJqRAUtfp1p0I/DxK/THfB9M1phyUBYAccdMMSPrnKx
 +Ui0Lde9L9iVMazh2AeONqe8AZwzkp+6JdnOiTe2pVkm4Set1bl/z/Gt1rdItVfKeoe0n0aPqOBH7
 Ehzxl7JkinDzF3PAuzGyNDc0R76zzDDqLI3aXhheUEtDH0fjHUYC64Lqn4zxMADIaNf6jPukL2m3Q
 Ipa7oC6KRB5SzziwuJfwH4aP87ivYZ7GYsY8GhBTuWfy9Rop7c0CaKrnEw0Jmo4tsnwlouqyJPnQW
 j7PrhrvqgykzWKHDpqgQ==;
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgmQw-0002Lc-G3
 for wireless-regdb@lists.infradead.org; Thu, 23 Feb 2017 05:59:20 +0000
Message-ID: <1487829525.1956.2.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 23 Feb 2017 06:58:45 +0100
In-Reply-To: <CAN+fvRb8R_3QyrnFFp0gd8PCcFXwbitNyh8K=ONqbmsGTrBsHQ@mail.gmail.com>
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <20170222213057.GA33925@ubuntu-hedt>
 <CAN+fvRb8R_3QyrnFFp0gd8PCcFXwbitNyh8K=ONqbmsGTrBsHQ@mail.gmail.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
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
To: Ryan Mounce <ryan@mounce.com.au>, Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>


> The frequency ranges have been "rounded down" to conform with the
> apparent convention of only including ranges used by standard 802.11
> channels, rather than using the actual frequency ranges as has been
> done for some countries (and most 60GHz rules). My preference is the
> latter so that there is a clear correlation between the regdb and
> relevant documentation, and so that the regdb may become useful
> beyond 802.11. With your blessing as maintainer I will also make this
> change to the patch.

I think that's just an artifact of the original database source and
would also prefer the documented ranges to be used.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

