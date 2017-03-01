Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=pVsPw7L/hmRJvfKeBGL650q4mhopUTa/cWSPFGAXTPc=;
 b=CztBJADXoj1xs5
 sLZqzMW5EnuyzTgC5N0TWgCHKJczkXTTuBjAcsSwWplaZaZYSQcZ0orl0tFGgc9WI4azAoPwpC7GX
 Ruv8/UaUAj8lPvWXmxW5ou7xaJIe9DiegWGHrnkd2mzex+Cbffgr8gPBtWEzK/kCfRcBxQfagnNWI
 y2Mcs20JFBp2+qkQyjjoTlzAsssWhM/A7BrQgdjruz4R0u5pJ3z0BQ20R5xkuSClYszqVfS8QVwqf
 vPXl+j28I4g2xZ6zoAHQ65XnaroC0EYwpw8tyvZxFfol+1Olx8qfghw5MlUh2TqhifIriE6lC3wF2
 uNDsA9iIwN0Kn2wpTEng==;
Received: from mail-io0-x231.google.com ([2607:f8b0:4001:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5jX-0000Za-4A
 for wireless-regdb@lists.infradead.org; Wed, 01 Mar 2017 15:00:06 +0000
Received: by mail-io0-x231.google.com with SMTP id 90so32600625ios.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 01 Mar 2017 06:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z3XPvvpFodkxbmFPO/o3lFskpD3rKM4xUXaRrM5TGXU=;
 b=OxMiMAe3BGXcfWjOdIFx2xy+1e/jcNRJe6jGhFxxXgfFrFQI8lCqnA5xAyInqe7e9q
 O14aX0agrDk6bUh3ZBnMejFfH2M4OccvGDJk39O6W7OXUgvSCczWS3M13bS4JJQuvgZt
 AJLbUKD4OgBEny71ssjpNa26kJwX1PF1VG3rLyWjLpOZnzkkurkr8JMQku4h4dwZPwBA
 DeNBgXf8TfolwhkBTl1t2ygOYeNBIieyf8X97Li+omk26qaytBtnxp7S3hnNSic1qEbS
 +ZZYNy4aYnDhEXSUl+PKstWWRQfktxhFLKczl4yFxkXP+h+2Khj2GCEz3HwoqZXJl6ib
 ge8g==
Date: Wed, 1 Mar 2017 08:59:38 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170301145938.GK122517@ubuntu-hedt>
References: <20170224145519.GD3479@ubuntu-hedt>
 <20170225031027.7871-1-ryan@mounce.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170225031027.7871-1-ryan@mounce.com.au>
Subject: Re: [wireless-regdb] [PATCH v3] wireless-regdb: Update rules for
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
To: Ryan Mounce <ryan@mounce.com.au>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Feb 25, 2017 at 01:40:27PM +1030, Ryan Mounce wrote:
> Sourced from the current legislation at
> https://www.legislation.gov.au/Details/F2016C00432
> 
> The current rules exceed legal limits between 5250-5330MHz, and permit
> illegal operation in 5600-5650MHz (disallowed regardless of DFS).
> 
> Frequency ranges and EIRP limits for all ranges have been updated to
> match items 59-63, 65 in the linked document. As the rules for AU have
> never previously mirrored local regulations, changes include a
> significant increase in the allowable 2.4GHz EIRP and smaller increases
> in most other bands.
> 
> In order to allow 80MHz operation between 5650-5730MHz (bordering two
> bands) the lower, more restrictive band has been rounded up by 5MHz.
> 
> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>

This looks good to me. I'll give it a few more days to see if anyone
else has comments.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

