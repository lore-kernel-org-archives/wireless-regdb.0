Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=s3l5al7DMK1+6T6+uVX/Yr4cocxjJSNli8pJIfTiyDI=;
 b=sZa
 0FJZo5su8i4oUrqvdYTqUDx7+hpkmQJJaFDh0HonSwe/3NJsxiQJc5TQJoFQqlNk7w9kO9ZJ2vryV
 zPwinAUrHI+rA9JIu9GHqytaS3/pYYRDXBejgBhZ1wpIMg27t6hyY3HjK06KZ2QAXcPR+tCm9rAmv
 G9v4Q/w7CgQqKj65C2HhcUrK6y0MByUdz6lj0WFH32mgLtDxFEdzV+qsi8mdRoIDrZx+mH0rL3Gn3
 Jm2M6L4UZ4Zel3DpK14Q0MPFh8vHhNHEguV/ARLg+dvqoY4+6fo52hwritwMMvmXlD4Lc7BoTe3Mj
 wCxFsBH7HxwbdDmxV1s8BWEsPcvvFWA==;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loQaU-004GA9-E7
 for wireless-regdb@lists.infradead.org; Wed, 02 Jun 2021 13:07:21 +0000
Received: by mail-qt1-f177.google.com with SMTP id g17so1706181qtk.9 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Jun 2021 06:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anyfinetworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=b7RGKJV4h8FSygDebL07Hb7r4tv1boClv7GyVceR9w0=;
 b=eYWVvEJRRP8TL5yMtObbYs72d5sN6Feeu+g8EWMrAItGAxBz8ATuTbWFFdXP6RA/YX
 vNAgPfe81qOB/rx12yNuGCTxgEQ+hSuvZGjcZVoxjs9M5uUAFMqt24sC0alWzxLcYBbV
 HqZnggGJWlBsNllEvOnR7LuPhIFdTDTp48tfmyeffyLyzrRgHYV16ntKo5wV1rdG0qPV
 vkGY4G1SaXBj4U+iOUiaqgJ2U2wAIWWbQYdJjxDEyIWIIWBVdDKFrnDc4MSyG8EAyQGR
 Viwxvu1svXmej1qbpa1VFzZtBBXslwK8sfW8fI+dR8i77CphGpooIFqzareIgPYGjdNz
 dTog==
MIME-Version: 1.0
From: Johan Almbladh <johan.almbladh@anyfinetworks.com>
Date: Wed, 2 Jun 2021 15:05:56 +0200
Message-ID: <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
Subject: [wireless-regdb] Different indoor and and outdoor constraints for
 the same band
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

I noticed that the rule for ID (Indonesia) looks like it only allows
for indoor operation.

country ID: DFS-JP
        # ref: https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019
        (2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
        (5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
        (5725 - 5825 @ 80), (200 mW), NO-OUTDOOR

However, the referenced document seems to allow frequencies in the 2.4
and 5.8 GHz bands for outdoor use as well, but with a different power
and channel width constraints. Therefore I propose the following
additional rules for the ID regulatory domain.

        (2400 - 2483.5 @ 20), (4 W), NO-INDOOR
        (5725 - 5825 @ 20), (4 W), NO-INDOOR

The parser dbparse.py and nl80211.h understand the NO-INDOOR keyword,
but I cannot find any occurrences of it in db.txt. Furthermore, as the
reg domain rules are processed by cfg80211, the supported frequencies
are annotated accordingly and NO-OUTDOOR is mapped to the flag
NL80211_FREQUENCY_ATTR_INDOOR_ONLY. There is however no equivalent for
the NO-INDOOR annotation.

Should same frequency band, or parts of it, be specified multiple
times with the NO-INDOOR and NO-OUTDOOR annotations as proposed? If
not, how should cases like this otherwise be handled, where the indoor
constraints are not a superset of the outdoor constraints?

Thanks,
Johan

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

