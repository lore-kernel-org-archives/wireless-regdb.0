Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sxXLCzeVNlj9Yq04mXegwHfKJ2U+ipOYYFl01eOTpKk=;
 b=Wwm0smb4/kG5Xq
 F8tgPf4aYLfPHL9I8IAGAzCqfbCVhtpERqTsq9zUqQi3h/Yy2fr2KmMq7CbcsGnZmCa9GDPFMhUD5
 EsgR64UG75sgCgXymTkxDArisxii/10b9AKLgN94inaoxWLCEkydkceFxkEIiHc9Dl5C9gVz6wpnU
 22PHv/DzxCSo82gTJdkTOmcZ4yxQjUaSfS+aKHF+XnFR7oQFxCpn+gsoQBdFiniYWb33sSohW/0K7
 KdI1a3V+WIdceJXk3HobeY13s1Tp5ySuChSnEceJJmZuzdFgEk4/7NrNMdcuuKq9jBe8t3mnS3IpB
 56kAC6abgsd7THffKUyA==;
Received: from mail-it0-x230.google.com ([2607:f8b0:4001:c0b::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgt26-00013a-Mp
 for wireless-regdb@lists.infradead.org; Thu, 23 Feb 2017 13:02:09 +0000
Received: by mail-it0-x230.google.com with SMTP id h10so165197290ith.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 23 Feb 2017 05:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U4bJmKUEcUj8Rx1ncjsoGGRL9fSd0sFwUg48QTDHn2o=;
 b=RpZNrjlRYRWWRDqVTXUrToGTm1AGLxCbg/SRAM7fsgcZcO4snFnUATmuOh0jxmkDOu
 a424oE1uH7ObWl0g+EojErsqTJi3uhv8rlffYYRJAtmPuLzt8JH16u1ndcFbhc9Czq7H
 zyaZb2aGdMzFRGgBvh6WQ0tRFesRhMZNLdukbQVfImdWwRM/o6+bjw73KA3vSV45lYj4
 zCw4f7TvJYYAmb0jV9j6wHmJhxutY9ks8qtuT1eiLWWla1X/ze7RdZgM/1SMW1G/mFNk
 AfyfPaJjshz3PRi8W7epaIBNURCQUm5yTwMVtM1upzIZ1rDpSNTUhMGhPDXWXE43oeCL
 Euqg==
Date: Thu, 23 Feb 2017 07:01:42 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170223130142.GA90803@ubuntu-hedt>
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <20170222213057.GA33925@ubuntu-hedt>
 <CAN+fvRb8R_3QyrnFFp0gd8PCcFXwbitNyh8K=ONqbmsGTrBsHQ@mail.gmail.com>
 <1487829525.1956.2.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487829525.1956.2.camel@sipsolutions.net>
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Ryan Mounce <ryan@mounce.com.au>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 23, 2017 at 06:58:45AM +0100, Johannes Berg wrote:
> 
> > The frequency ranges have been "rounded down" to conform with the
> > apparent convention of only including ranges used by standard 802.11
> > channels, rather than using the actual frequency ranges as has been
> > done for some countries (and most 60GHz rules). My preference is the
> > latter so that there is a clear correlation between the regdb and
> > relevant documentation, and so that the regdb may become useful
> > beyond 802.11. With your blessing as maintainer I will also make this
> > change to the patch.
> 
> I think that's just an artifact of the original database source and
> would also prefer the documented ranges to be used.

Yes, I prefer the documented ranges as well.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

