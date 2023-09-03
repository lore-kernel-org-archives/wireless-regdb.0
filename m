Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=zhV6qPSO01A6PHow7bT3+aalwbgPFKm5byi1qK0XFIg=;
 b=oSD/FI0s7UlxVUxDkfF9m0OcDO
 vjRqbGO0FuEOMbjdFSey4czaay+1qHcx7EnqAhPx9D5xCOPI77WItSRu+cJ3/Ekui/JRMOtPrKHLF
 7RRVv4qcizmFofoVyaIko6byMv2laBcAlSp5DMk2mS2xgN6jaxEH6GPoPVhXXBxvOlToXbX7vAvew
 L3wWIyemJvyDjnYL+OigfX/GxXEVaQlMCH+PCMkRrBxsQbxoC6aHIxkIJnu8mFx2mL5mLH2Hnx0+O
 U5ZXiD9TZLZpBTnXZZXFAUCCuUaVoFxcmo9o0kt0saQ2gXq5IYWdauJMuIShxjqma3HPcRipvF1Xk
 0Mktdg+w==;
Received: from [2406:da1c:315:ab8f:92f3:fedd:c9d3:1f18]
 (helo=sphereful.sorra.shikadi.net) by bombadil.infradead.org with esmtps
 (Exim 4.96 #2 (Red Hat Linux)) id 1qcmsT-002bGP-1I for
 wireless-regdb@lists.infradead.org; Sun, 03 Sep 2023 13:10:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=shikadi.net ; s=since20200425;
 h=MIME-Version:References:In-Reply-To:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
 bh=k7M3T8J2Fs2IzL0cACvy1O+zvd6/eRsc564pQ1R7gRg=;
 b=W8bJegpDy4thEFHJ/Fhrty5vIq
 pYPi9jUWQHhMeIEAcWODQxvIxYByVDcbn8JzwcFaScJfXWcNkVTf03bFxHM55Z8/F/dwBm1cfCaHp
 gerT2MvrSWoewz8Xdr+H1y0BVqO0R0udJNhGn8YPswoAuIBqMUwg6E/48VlzvSgv7/twdwmaId64R
 LadDEEsx6LgUGF6QUt6ycUCziYYdGcgcrfl0+HyqofdanZnVn3TbubJZkPVNsdHqinSyyWREoSCSW
 Bvz0/Z4tbdn0By41lYr7wYJ53qLG4g+/OibZQh4OwpjP/LL7hZNa1QUnlVcss37N0r5NbQ4hUCqaM
 cEZ5geKg==;
Date: Sun, 3 Sep 2023 23:10:43 +1000
From: Adam Nielsen <a.nielsen@shikadi.net>
Message-ID: <20230903231043.61ec9cf8@gnosticus.teln.shikadi.net>
In-Reply-To: <ZPJB+xrFeXtIpRPA@ubuntu-x1>
References: <20230716225604.1d5a136a@vorticon.teln.shikadi.net>
	<ZLsBYjmM3xxFxG6l@ubuntu-x1>
	<ZPJB+xrFeXtIpRPA@ubuntu-x1>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Australia (AU) for June 2023
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

> I never received a response, so I went ahead and applied a version of
> this patch with the adjustments I noted above.

My apologies!  I hadn't had a chance to get back to this yet.

Thanks for fixing it up and applying it, much appreciated.

Cheers,
Adam.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

