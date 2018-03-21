Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=wXM+arqvkxPqECRwVVA5wr3TgpOzcKzdb39RgF4Dtfw=;
 b=CSaTgIGH3Q1aJjNshwI0JDvnyr
 Z9zNBHexftaCvqauuAlaXi2uNTL6dkQwl08hTuvM5Xbj6Bw9zNJlHuTWVprsXxMZ45sHciv+PTyeK
 mq9np63DIsm1ph/kUyG+QlXkKuLoRNnlAef5CxIvYEwfkuNWNsWdCtrHhNsB/oST5KzW7S2jIIqGa
 TBALNal1HcE1hK9Us7BUo/t07tqTJGST2qnVu2cSMFgHP9q3H6LoCD6rPxEL6p+Ai9K40voecOLkm
 LQS2V92Yr5mEeE+HZ41LSjuWeXLZOFqxNWHgQX/8nvrsmIUshgI+kWcN+Qjpo1r1otJex/EqekOp9
 2amYcS9g==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:72ef::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyZ4c-0002u4-0Z
 for wireless-regdb@lists.infradead.org; Wed, 21 Mar 2018 08:26:19 +0000
Message-ID: <1521620761.2645.16.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 21 Mar 2018 09:26:01 +0100
In-Reply-To: <052a981b-c150-61f3-318a-0546b33192a9@mail.ru>
References: <052a981b-c150-61f3-318a-0546b33192a9@mail.ru>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] EU Regulation on CAC time
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
To: "Nicco Kunzmann (mail.ru)" <niccokunzmann@mail.ru>, Wireless RegDB <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2018-03-20 at 23:48 +0100, Nicco Kunzmann (mail.ru) wrote:
> Dear list subscribers,
> 
> I was reading through the  db.txt file.
> I did not see the CAC time for the country I live in, Germany.
> According to [1], DFS frequencies are described.
> However, I also read EN301893 [2] which is referenced by [1].
> EN301893, page 104, Table D.1 describes the CAC times and handles the
> range 5600MHz to 5650MHz specially with extended CAC times.
> Now, I read the db.txt file [3], section DE.
> There, I can not find the 5600MHz to 5650MHz range specified. Nor am I
> able to locate information about the DFS-ETSI region.
> I guess, the information can be inherited from somewhere.
> 
> Could you help me understand where the information for EN301893/ the
> dfs_region "DFS-ETSI" is described?
> 
> I checked "wireless-regdb"[4] and "crda"[5] and could not find it.

The CAC times are currently hard-coded in the kernel. The new
regulatory db framework (loading it as a firmware file) has the ability
to provision it through there, but the wireless-regdb db.txt, parser &
generator doesn't support it yet.

CRDA is more or less dead - still used, but will not get any future
work.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

