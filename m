Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LREbm325G48arJZlbUWgVypokus3+gKFkU9lZmQmDIc=;
 b=RRr7Tai685Aii2
 UsGp8yfy2eZ5TMa5Lr9DFGqFuoqME7TOpdrpzPxgui3HcQbwToq/lOgGSB3qCTXhtT9g8qaJ5xJUx
 OF3Cvq4XbD+NxtbaNtfy7D16BpjyA4Wy7POIXqIIwZIKnShKhdJWpJA1ag03Um/+/HNEdBxY64yBf
 IC53EmtejhvIQeo7Hj0ZARwT/XmFOcHYZNTzecX6cf/Kz+wh/+fty8Vsj2RHwxCP4TWEr9Rk8CXb+
 YGWTPlLXMksTZEC1XNXRhjU+h4Ei4v1vzZYV4iQc8Pe5adHfXDBbOZEkmuMBB7zuwWBbTOumx8TVj
 MetDHLg0jOTxVJiHr6MA==;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPdWr-0000Ke-PZ
 for wireless-regdb@lists.infradead.org; Thu, 22 Nov 2018 01:11:39 +0000
Received: by mail-pl1-f179.google.com with SMTP id 101so1610514pld.6 for
 <wireless-regdb@lists.infradead.org>; Wed, 21 Nov 2018 17:11:26 -0800 (PST)
Date: Wed, 21 Nov 2018 17:11:20 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20181122011120.GF4922@garbanzo.do-not-panic.com>
References: <20181109162323.25024-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181109162323.25024-1-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: add URLs to README
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>, WIRELESS ML <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Nov 09, 2018 at 05:23:23PM +0100, Xose Vazquez Perez wrote:
> Cc: Luis R. Rodriguez <mcgrof@kernel.org>
> Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
> Cc: REGDB ML <wireless-regdb@lists.infradead.org>
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied and pushed, thanks. Please note that as of v4.15 CRDA is no
longer needed. I've updated the README to reflect this.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

