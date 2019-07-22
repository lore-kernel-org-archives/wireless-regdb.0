Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=iokuC+ndvAIkzW0zaZTzNjoj67qovR9f4qjVqhYBAic=;
 b=thAhj1/yQc/Xeu
 YUCcCNUdoWVZpZXt8sSnt+e4nWWBSdG7QoXp3G3DPeQYPRPY5tIOwjSu1FUK4NBVE3m51zuFPh76o
 MGhsVKFfLgzmWSxYCSuzQnoJE4LdXOLnO83vjbAhgWhRvGZavrCLf98628Y0oMlbjOnS4W9zRaZyC
 XTtih6s9+CjnHAT26k2e9z+cW/NZGtY2LyEcHFAT8i4R3DXGQMIAl3IODzvnqtuhpJ48+z42YsOj9
 orW6NDZMmFw4qN6xaSMwyVhvsJS2f/pZM5BteH0Skl3z0Dg/TheYlX96XIA5ntfB8XxeTuLUR2Az3
 FmuiFEWzKiQmriS/TTwA==;
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgFL-0005qi-4v
 for wireless-regdb@lists.infradead.org; Mon, 22 Jul 2019 21:53:28 +0000
Received: by mail-io1-xd36.google.com with SMTP id m24so77447706ioo.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 22 Jul 2019 14:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=suyRjY4hRWM09kcSpFkEIs5D6dArl6vQjNWpnTsECKs=;
 b=d2kcq1m8rgsTmC9B0ZqxgrTMYFr18hUcYvKS6fzj6u2aMZ3JeieT3WmdDfBqVK2p5e
 7vDQPTrxGI+D12GklrmFM+n1L6hp08d1O0oj3ATNMgtrXhE+1gUAqLlWktRUKNmhNkoj
 XgvC3gamJh3WeQSdOOJrQNDlKVqPnsDYUMs35OdpQmdzEHAaUEZgqQ6lMO379wZczuoG
 w54aJb+czJtYxO/Ml/4WLy+MB/j9Kz9ZyCTW8ILkkzuxtZ/lyHmMlmjdzyqcLz+vDVSu
 Ph+/7JHXqRBQ2ThNHWlYY8LScnxEyMPC8Vrl/mGs/RnIM/KDO1hiOfy7oACCEb6tprBw aQvg==
MIME-Version: 1.0
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 23 Jul 2019 00:53:14 +0300
Message-ID: <CANoib0Hn9uNnk5vpjEJUiGriD5rHuDc7xxLFj3r8ij6ALSxcag@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
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
To: seth.forshee@canonical.com
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The db entry looks like this now

country RU: DFS-ETSI
(2402 - 2482 @ 40), (20)
(5170 - 5250 @ 80), (20), AUTO-BW
(5250 - 5330 @ 80), (20), DFS, AUTO-BW
(5650 - 5730 @ 80), (30), DFS
(5735 - 5835 @ 80), (30)
# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
(57000 - 66000 @ 2160), (40)


This doesn't look correct. The regulation document is here
http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf

According to the regulation document issued Feb 29 2016, there
frequencies should look like this:

country RU:
(2402 - 2482 @ 40), (20)
(5170 - 5330 @ 160), (23), NO-OUTDOOR
(5650 - 5835 @ 160), (23), NO-OUTDOOR
# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
(57000 - 66000 @ 2160), (40), NO-OUTDOOR

Note that there was never a DFS requirement in Russia, but always was
NO-OUTDOOR on 5GHz.
Maximum power is 200mW that is ~23dBm on all 5GHz channels.
Also Russia has never been regulated by ETSI.

If this looks good, I can send a patch if needed.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
