Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=l2wtuw+kzhYM561mLPMGLkmZoWzKrgil8kyKbgoF3AY=;
 b=pImWJEwuIKOAr8
 rmDApz+dVbew0ZjlfqbWDodnTGPdQ3lT66zbrGdITtMdDKMtpROLBnvamlm0qziYM1Ondgh9BE30c
 q02ZJP96mYg2S3eRcv/YvcJDQ1V/HvrVpmXLBP03Pwzcc8hRLwk57RG2R6Iw7LJohhAUuk5SyugYE
 K4tSf/0AjY3rSmxKr8ROyvat9x/r75rY1o9cN/BljLpVWK8Nxr97+Si583mpLwjDAkZ9H0D0nSeIM
 H11OCOpSxBNcxIYnFjVJ8sOXsCz4e+nDx0cAOZ/ViNm308UYJIFmXf0ftg2AHJX/gTjgzX3a5GDlW
 JeSAToxkDG+R1r2dRIJQ==;
Received: from mail-it0-x233.google.com ([2607:f8b0:4001:c0b::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clEuc-0000iU-6p
 for wireless-regdb@lists.infradead.org; Tue, 07 Mar 2017 13:12:24 +0000
Received: by mail-it0-x233.google.com with SMTP id m27so10786759iti.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 07 Mar 2017 05:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pd6wRrpG7u+X9Nwnz6FSz51OnC65qpXxMdbK3rgcZNU=;
 b=GKCPSKE0Z96H7xgHXYhW91mwISI8bBXphhFTWJ9Hjvq/wAv99Tog7vv8+mIuUA5hhE
 cNIk727q4S9eYKbI709rlWehGaK4cYCOtD1ImP2fTKqoKBxE+3+Y9DbcuV6EJ8cq+Y89
 IJJxJAAPh6HN7DeENjzHzMAF9dso3oMV3R8imkeY+h9sqkP4FY2cY0/9bLRyDrPJF6bR
 agoTqU41hPK3INx31MVOfCMXAZUMXkoR/l8otzWJfYVVpIn1TxsPwO0n/qT4o+FtCSPb
 UfpquRv6JX6Hghs8Jhl4IZxhuEB12GgArE0QbT52KALDHfewK1QLcrjsyWd4DPLGKuvy
 xWMQ==
Date: Tue, 7 Mar 2017 07:11:56 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170307131156.GB5500@ubuntu-hedt>
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

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

