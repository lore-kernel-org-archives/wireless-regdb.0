Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=b14Aw/BIdaf3V6W88JSs5ee/sfB7a7KdmPbLcN+8Biw=;
 b=gumSfh6JmgkC2p
 MVPdhyF/K2pKAexZhFLke9j/nc1rkG4UQP6EIqc1+dSJXgAdKniCh/QZwk5FNGE8JtfcEu5zR2DPu
 yQan6wHeubjcMAP2+e3IP+0zVtCF35s24Hq+6/sDkBzaF4dFpB419vSTSaH2/Hb2mUpdU61QDkreo
 b/lFDk48zr/XvtFZMbd+1ZE3wYPwLutsI1b8R35P2vEUBK+VTB97GfiW37Yuc2MJpMyoolIVY1f9L
 IH9ZICJVEs8FYAAK7HrPdlGIoAx6F676P+6JiElSIMZPVwTrX3zbSvzLbOGwARlStt6OB80sDInq4
 NX5WDtbscnCa7Ck4Tl+A==;
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj6I4-0000z8-SI
 for wireless-regdb@lists.infradead.org; Wed, 01 Mar 2017 15:35:46 +0000
Message-ID: <1488382517.2698.3.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 01 Mar 2017 16:35:17 +0100
In-Reply-To: <20170301150757.GL122517@ubuntu-hedt>
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
 <1486453950.2643.1.camel@sipsolutions.net>
 <20170207140434.GA109741@ubuntu-hedt>
 <a79eaf02-b384-4c5b-3116-c1386ef98850@neratec.com>
 <20170301150757.GL122517@ubuntu-hedt>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>, Matthias May <matthias.may@neratec.com>
Cc: cory novak <cory.novak@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>


> > 
> > > static inline int
> > > ieee80211_chandef_max_power(struct cfg80211_chan_def *chandef)
> > > {
> > > 	switch (chandef->width) {
> > > 	case NL80211_CHAN_WIDTH_5:
> > > 		return min(chandef->chan->max_reg_power - 6,
> > > 			   chandef->chan->max_power);
> > > 	case NL80211_CHAN_WIDTH_10:
> > > 		return min(chandef->chan->max_reg_power - 3,
> > > 			   chandef->chan->max_power);
> > > 	default:
> > > 		break;
> > > 	}
> > > 	return chandef->chan->max_power;
> > > }
> > 
> > This looks to me like it already handles the reduction of power
> > according to bandwidth.
> 
> Johannes, just wanted to confirm that based on this you no longer
> have any objection to the changes.

Yep, looks fine.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
