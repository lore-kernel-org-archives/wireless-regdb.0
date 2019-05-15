Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1kBAMyko23jWEVRrSl/0bldaPZnKD15dBiIGVNLkbUk=;
 b=uERNaq8ZIaAJ7T
 hoXuqF0NTFnQZbQbLazINY7/QV5QITQRotU9Fsg5hXUbsWgiHPrDHpjybI1itQjfXsli9Zr88Kb+2
 LNiwf8z5A83w85cC+F2lv2goviqsz2z0p9steoHxtGJfcKib/4dyk/pStihkQzcY7y0KbRQv8pV2v
 VdHbEZhjL6lX3Pf8LwHbPZlIPRkZ2DxMXqqmd4QXVaBtTR0zmFDzQUPvmGkQAkEBkR3JrsFKf1IbM
 DtY/MTl1VyG6CRzD+2wBuzngUunha2FGMiGHBa6coUWvC8KjOWZwUlpzSrWLNvfXW7g1OE/WcXgGD
 ds4pVHUWe52QBZxFwBlw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtkv-0002DO-U4
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:15:39 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQtku-0007GH-99
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:15:36 +0000
Received: by mail-io1-f70.google.com with SMTP id i16so1822618ioj.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 06:15:36 -0700 (PDT)
Date: Wed, 15 May 2019 08:15:33 -0500
From: "seth.forshee" <seth.forshee@canonical.com>
Message-ID: <20190515131533.GZ4357@ubuntu-xps13>
References: <2019040118074276659215@jaguarwave.com>
 <20190408124829.GD15126@ubuntu-xps13>
 <CAPuHQ=EvWzXtxk0fLOT6PyeYkcNOOXmw0ck-yT-JsqhhDmu2gA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPuHQ=EvWzXtxk0fLOT6PyeYkcNOOXmw0ck-yT-JsqhhDmu2gA@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Please update regulatory
 rules for Japan (JP) on 60GHz
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
To: b.K.il.h.u+tigbuh@gmail.com
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "junping.xu@jaguarwave.com" <junping.xu@jaguarwave.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 26, 2019 at 12:00:22AM +0200, b.K.il.h.u+tigbuh@gmail.com wrote:
> This seems to be the page for the previous standard:
> https://www.arib.or.jp/english/std_tr/telecommunications/std-t74.html
> 
> And the following should be the new standard, but I don't know where
> to obtain it:
> https://www.arib.or.jp/english/std_tr/telecommunications/std-t117.html
> 
> The description fields here do note the range of 57-66GHz, though:
> https://www.arib.or.jp/kikaku/kikaku_tushin/desc/std-t117.html
> https://webstore.arib.or.jp/en/products/detail.php?product_id=288
> 
> Similar mentions in the news (search for T117):
> https://www.arib.or.jp/image/osirase/news/1044.pdf
> https://www.arib.or.jp/image/iinkai/kikaku-kaigi/rireki/101.pdf
> 
> Testing procedure is described here, not sure if it's considered useful:
> file:///home/bkil/chrome.root/Downloads/60ghz2_1_19_4_2_1.pdf

Thanks. Judging by these and numerous other third-party resources I've
found, I think it's safe to say that the range was expanded back to 57
GHz quite some time ago. I'll send a patch to update this range.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

