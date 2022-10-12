Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=CD6HLED4y3qyZ3n4Q2IErDsYnQybikxDjye/KvxbH9I=;
 b=P318ACSKJFGggE
 w1n5FL1V/FTyckHpZZsFuSTl3rPoAX+3pOhqubyRQ1INtJib6RPJyCS8yV9Q5YqDqVV/eiPWtC4wP
 qcUhIBxXgosReF8zXOrijqUL4KcCnfo8wdnN844638k4O396T+Dcd+iXH2qtW8dssn9/D86jBqSf2
 h263kU1ybn/DGKskwpUNac42kt3jWtsq0jYKAoyA4CvvKTn4YLOxG3QJ6bU040Io3cKAVdVus800j
 iaRgaA3g+3o6pxP8FJLLpqYxkllMA0vwBNTwV/rXHK8RpvLv+/kyuLFcAIqXRaOqtD73BmAT8aE0X
 NkMFSC0MfsUc+UGWLxfg==;
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiig0-009KNb-5K
	for wireless-regdb@lists.infradead.org; Wed, 12 Oct 2022 20:50:05 +0000
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-134072c15c1so142194fac.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 12 Oct 2022 13:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=R8sTKdFtmfDqzDw0sO8Cb3NzCNCaL8pS0YGM8SgffAY=;
 b=iJUnEfZdlBmdZ2kEUHxrW78KurBMb94FNUUS2xOgbQwpEG+MIwAf2+V1a1YKqGZMhL
 X5cwyW//22+VTBg8Ku/fyjp7KKoUeYU6qQ2EcoZHTY18ulm11j7676NhDHrR7T150LUx
 n6Gv6gIPpFzMqwbWJoyHO/Q8P53VIibk3yhaBzmvhVVwT88KC/YbfHXXs4mFud/e/inw
 0a4ZKiGxNg1sGaD4Pkuj4TyW1ZTAY3UthhlDwoxZZHZDSr3OmMQJlMhZ1+rwSHdDWFIb
 Mu4NDeGYncjLnQVyeNFfClu3sDIQx28/Zg2ZkW3y6yesiEBK5qLa4X1NzEN1M3vEdrOJ v1qA==
Date: Wed, 12 Oct 2022 15:47:45 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <Y0cn8WDW6jRmADaa@ubuntu-x1>
References: <20220927200006.2527013-1-lorenz@brun.one>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927200006.2527013-1-lorenz@brun.one>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update regulatory
 rules for Switzerland (CH)
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
To: Lorenz Brun <lorenz@brun.one>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 27, 2022 at 10:00:06PM +0200, Lorenz Brun wrote:
> Switzerland has since approved the use of the 6 GHz spectrum as well as
> allowed the unlicensed use of the 66-71 GHz spectrum.
> 
> See https://www.ofcomnet.ch/api/rir/1010 for the current regulatory
> overview in Switzerland.
> 
> Signed-off-by: Lorenz Brun <lorenz@brun.one>

Sorry for the delay. Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

