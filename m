Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=HdOMPo/J8ZbJ2qkrSeIkDbE1D+d2C0RYUL8v4to+Xk8=;
 b=nH5e6I8fQwVlVI
 QauEElAZ6mglrqCpdM0fzSghcSXv0WlsMKkFZEdpizlY04PXR2nu6AwxwNhWqEo5r39MKErIv35jN
 7fQv8lvij5HlKxIIygY1rxUMG84udjgtYV2nmK3HBatYPawxkVxxz9XVKc/6Q2hDJsoMYNDydzl4x
 mD0FfeVaTHV9+di9ykBdhj7EMIaYYaEY9WvfGigRkouzePg6chBCIP6wRFhSyhsDHlz+AHyZuTEde
 j9Dah4AOvahJzATZoMRd0D1m5kbdDo7zW6JiyU6mqk3ylyx71erSD4GxpL5etSSKSwOe2RtzxpkeW
 bu7399L4JuwXaJEQsq5g==;
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsA1O-0000PF-A9
 for wireless-regdb@lists.infradead.org; Mon, 29 Jul 2019 18:05:19 +0000
Received: by mail-io1-xd30.google.com with SMTP id e20so91652149iob.9 for
 <wireless-regdb@lists.infradead.org>; Mon, 29 Jul 2019 11:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RPPVB2DH745rVxScp1X25ORUy6JT/zQANY7+TCeop8c=;
 b=Q+dNRllC/n7wkb1XBomV72wMlPE1ODAyRm6SL0mEcufRk3AOQsIwQzqF17fX32s+sx
 Kd/hiMqPC2amh3yI+BFt0ypvDTHvWfqfQLoPZ2mtclL6n2k/NY4fRC7OI2UFlHb+58TM
 sOWllKLBTPq0IgFZT5kpAKBDxHSfx+x6jx7jV81Y3XX01ZVKsK3KWUXbnS398MjNu754
 jafjc3NQwjN+tD4n0GaqWrEwdsWp+u+fE6pSDianKJK1QeunW2eucDDkxRXGjFBuPcWf
 Bl103HYm/LSbQV5dm744uTGEWl+691be2fIlpxWAx6lm8mOj1PHmv8iDNC96c+d6UkbP 3ELg==
MIME-Version: 1.0
References: 
	 <CANoib0Hn9uNnk5vpjEJUiGriD5rHuDc7xxLFj3r8ij6ALSxcag@mail.gmail.com>
In-Reply-To: <CANoib0Hn9uNnk5vpjEJUiGriD5rHuDc7xxLFj3r8ij6ALSxcag@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 29 Jul 2019 21:05:06 +0300
Message-ID: <CANoib0Et3gLu2gGYeWracV4v7tgWj8qhtO7w_c8TSJ+CE-gjMg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Russia (RU) on 5GHz
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

I made an error while editing. The correct section is

country RU:
(2402 - 2482 @ 40), (20)
(5170 - 5350 @ 160), (23), NO-OUTDOOR
(5650 - 5850 @ 160), (23), NO-OUTDOOR
# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
(57000 - 66000 @ 2160), (40), NO-OUTDOOR

вт, 23 июл. 2019 г. в 00:53, Dmitry Tunin <hanipouspilot@gmail.com>:
>
> The db entry looks like this now
>
> country RU: DFS-ETSI
> (2402 - 2482 @ 40), (20)
> (5170 - 5250 @ 80), (20), AUTO-BW
> (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> (5650 - 5730 @ 80), (30), DFS
> (5735 - 5835 @ 80), (30)
> # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> (57000 - 66000 @ 2160), (40)
>
>
> This doesn't look correct. The regulation document is here
> http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
>
> According to the regulation document issued Feb 29 2016, there
> frequencies should look like this:
>
> country RU:
> (2402 - 2482 @ 40), (20)
> (5170 - 5330 @ 160), (23), NO-OUTDOOR
> (5650 - 5835 @ 160), (23), NO-OUTDOOR
> # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
> Note that there was never a DFS requirement in Russia, but always was
> NO-OUTDOOR on 5GHz.
> Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> Also Russia has never been regulated by ETSI.
>
> If this looks good, I can send a patch if needed.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
