Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=V1YpbBpyM2ZlJKQXK1ASxsTnmOIWW4lE9jmgaBuXMSA=;
 b=CMOtQ7UudLuFTr
 IRIWDT/vRGPU1QZc2MYQpv8ByEO+4F9xdeDFvu3qi4sXtUvn9Kg39GOnl3PXQWNmvThrZyKWA8h/T
 ngrd+LdomKcHnKzz4A6slBUj8RYRT3VOE5GW/U1XmcKZJyEzqVLVLRGj+WkiEnzVy2GJkuwDiXtvj
 tEnOi1Hl47BoEPXviR7fmYb/yV1BF5o8taOWOzk7xDk/QjYSdsE0N9BVoQ1pqKOzlX+6yaPeXXs2g
 uVRWvEms+O8AqPRSvlwKyxt1p4EswKY9NejnWLcAYofNXo+qmxmNGYsguZCPPuBKidD/vC73N6ElT
 MGq6UbPNHeuxDEiQnl6g==;
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJmPy-0001x6-Vb
 for wireless-regdb@lists.infradead.org; Thu, 25 Apr 2019 22:00:37 +0000
Received: by mail-ot1-x331.google.com with SMTP id g8so909463otk.8 for
 <wireless-regdb@lists.infradead.org>; Thu, 25 Apr 2019 15:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ujtvJ/9PDIqeiq5UxgJWwwhWv7xUD47/azUxfErybE0=;
 b=mfm3gjpXaBopyN7vUvYPfZ/5KLqhbGEiVHv/NtAEdKYXj91KnaNFknYpIzSwUZneab
 bP3TRPxoWN0X5oSqacDqseAtP2KvUx2jwc813vGYF+2mUpEsgjCg4f/BA6HW0jER97jq
 CiuO4HdAgXpn+0NYqBJXgt4yxixbWj32Fyoh6lrh7fnyF9/6TqiTlv41l3klkR3c+IG8
 Cp0U2Twv0cTkMoQE97E8Vu3vZ9qH8H9Ay+YJEUZ/NHuXJ/GJM0sb7vuClNdnIWQrWydp
 eZ4m7h6A8zKi5lsnqKGP3Lp5uoGddLotN765eWIFPiG7t/ERdoZZ6VdLPUkEozUqy+2C 3GHg==
MIME-Version: 1.0
References: <2019040118074276659215@jaguarwave.com>
 <20190408124829.GD15126@ubuntu-xps13>
In-Reply-To: <20190408124829.GD15126@ubuntu-xps13>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Fri, 26 Apr 2019 00:00:22 +0200
Message-ID: <CAPuHQ=EvWzXtxk0fLOT6PyeYkcNOOXmw0ck-yT-JsqhhDmu2gA@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "seth.forshee" <seth.forshee@canonical.com>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "junping.xu@jaguarwave.com" <junping.xu@jaguarwave.com>
List-ID: <wireless-regdb@lists.infradead.org>

This seems to be the page for the previous standard:
https://www.arib.or.jp/english/std_tr/telecommunications/std-t74.html

And the following should be the new standard, but I don't know where
to obtain it:
https://www.arib.or.jp/english/std_tr/telecommunications/std-t117.html

The description fields here do note the range of 57-66GHz, though:
https://www.arib.or.jp/kikaku/kikaku_tushin/desc/std-t117.html
https://webstore.arib.or.jp/en/products/detail.php?product_id=288

Similar mentions in the news (search for T117):
https://www.arib.or.jp/image/osirase/news/1044.pdf
https://www.arib.or.jp/image/iinkai/kikaku-kaigi/rireki/101.pdf

Testing procedure is described here, not sure if it's considered useful:
file:///home/bkil/chrome.root/Downloads/60ghz2_1_19_4_2_1.pdf

On Mon, Apr 8, 2019 at 2:48 PM seth.forshee <seth.forshee@canonical.com> wrote:
>
> On Mon, Apr 01, 2019 at 06:07:44PM +0800, junping.xu@jaguarwave.com wrote:
> > Hi Forsheee,
> >       The 60GHz band defined for Japan was between 59-66GHz, but is has been Updated to support 57-66Ghz about 2 years ago。
> > However, the latest wireless-regdb still containning the original regulatory information  as below. Please help to check the infomation
> > and update the regulatory.bin.
> >
> > db.txt:
> > ......
> > country JP: DFS-JP
> > (2402 - 2482 @ 40), (20)
> > (2474 - 2494 @ 20), (20), NO-OFDM
> > (4910 - 4990 @ 40), (23)
> > (5030 - 5090 @ 40), (23)
> > (5170 - 5250 @ 80), (20), AUTO-BW
> > (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > (5490 - 5710 @ 160), (23), DFS
> > # 60 GHz band channels 2-4 at 10mW,
> > # ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
>
> The only change which is required to change:
>
> > (59000 - 66000 @ 2160), (10 mW)
>
> to:
>
>  (57000 - 66000 @ 2160), (10 mW)
>
> Is that right? Can you provide a link to the documentation which
> supports this change? The current link above this rule appears to be
> broken.
>
> Thanks,
> Seth
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
