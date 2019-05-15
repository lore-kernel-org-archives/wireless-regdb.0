Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=KSr9DWudoAu6vCcGQywKnG4FefMYvFLfKWhSYDzV7vI=;
 b=HxKi1Kx5BCePLURTKRUBhQ4eU
 fUBbjRH9nkPAN9rAr3v3tF1pZeb9s+gSWhIIPk9xbVJbmsCQOTr0YM5BwswlxO9TWBDvToXRCn3xa
 mAbr9wt8Dmi26xGlRkfPgqwn3wfY7w0Zi/OhxINy/25v4oaeTgFPgA8/tHp9Zig/Lg14VSfjM/5im
 D3EnIOLICJ2GfDk9b0tbzBZPR2tTpesdmvEkywmquS0wfFlOhdkJufElMNw1jxot/giUV799kc1PA
 Q5mRJsaA2/AR5AoVKKnbyBjH3yWHTBwkR0/OkdjBc7DpPEj57eJhBSQhznWqW2X3yGrIVHgVuWeC7
 v/rxtsEog==;
Received: from mout.gmx.com ([74.208.4.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvY1-0007xp-FQ
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 15:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1557933018;
 bh=HHeAetxRfMmndeyVs3gwP9jtTziXkNRMznXHV4eSQ3o=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=V+nroq/a5T6ZMvzUbngWMGFfAYXS7ADlNp7EkG868Ik29gXS6neVgr0LR1WPPTQFH
 5DbwNIZmRSCE8zzu5fB7m2Pr2a+Z7GHdKfXWUAS5S50UYWNL0KUg4Y15Xu2YnnNmwn
 1hJudJ1wNMkMO7QEGTMrUdnYwmlGrobC37YlFbO8=
Received: from [192.168.1.66] ([119.192.35.241]) by mail.gmx.com
 (mrgmxus002 [74.208.5.15]) with ESMTPSA (Nemesis) id
 0LuxWx-1gjNJj053J-0106fV for <wireless-regdb@lists.infradead.org>; Wed, 15
 May 2019 17:10:18 +0200
References: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190515130339.GY4357@ubuntu-xps13>
From: suchan <abnoeh@mail.com>
Message-ID: <a2fa616d-7829-137c-7f48-6c59974cfa46@mail.com>
Date: Thu, 16 May 2019 00:10:16 +0900
MIME-Version: 1.0
In-Reply-To: <20190515130339.GY4357@ubuntu-xps13>
Content-Language: ko
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for South Korea
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>


2019-05-15 10:03PM at Seth Forshee wrote:
>
> Is there any mention of transmit power control in the document? The fact
> that some of the old limits are exactly half of they values you've given
> makes me wonder if they weren't set lower for TPC, especially for
> 5250-5350 MHz where TPC is common.
>
> Since you're changing these rules, I'd also like to see the frequency
> ranges changed to match the documented ranges, i.e.:
>
>   2400 - 2483.5
>   5150 - 5250
>   5250 - 5350
>   5470 - 5710
>   5735 - 5850
>
> I left the gap in the 5470-5850 MHz range since I can't tell exactly
> where the DFS requirement ends. Usually it seems to be 5725 MHz, but
> that is not universal. If you can determine where the break is those
> ranges could also be expanded.
>
> Thanks,
> Seth
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

from same document, just under the table for wifi range itself 5250∼5350
MHz and 5470∼5725 MHz need TPC and DFS

TPC rule is if power exceeds 25mW/MHz (this includes antenna gain), it
has do be able to reduce it under 12.5mW/Mhz.

DFS rule itself (DFS-JP) looks right.


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
