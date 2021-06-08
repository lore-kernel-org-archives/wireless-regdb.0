Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=7bQOr3LGQoHzzHVoyixg62ui7gSai3Td2GO4O/TOdJg=;
 b=RUN0iz1bDs8VYj
 Afr984w0ViQfFctsBBXWzzec33YD7l5vN2Mwyp3xvEQw61u1PZuDngLHcHevp04g8bsJ1291bgtq8
 6+bZCJF4vFZc3LBIRAJcbfDcJdBcCoIeW8/L9EOtWRk/So3rNnj+k77RQHdEySgYPNBfecWmNWQVP
 WYDY+Qti4dE4i7//UKkQf3ZpH5i7HGPuagjjPxX0vMyzShjHY5Zw3lf5ukEO7pWlL/aw9fUbf57vd
 PufOIknTHvuZ8IRmjX5ctN1NJRvc3hBSWV7ZGgoSbtd2VgDMLMt3uikKqgRu/7GjXStPN90dlPG4B
 T04a2WZ7U4ptB9FHIUSg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqbId-008WBg-7s
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 12:57:45 +0000
Received: from mail-ot1-f72.google.com ([209.85.210.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1lqbIZ-0000Dd-Fd
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 12:57:39 +0000
Received: by mail-ot1-f72.google.com with SMTP id
 o26-20020a9d6d1a0000b02903e61e3de711so6325796otp.12 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 Jun 2021 05:57:39 -0700 (PDT)
Date: Tue, 8 Jun 2021 07:57:36 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YL9pQL+JV8CVDdaH@ubuntu-x1>
References: 
	 <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
Subject: Re: [wireless-regdb] Different indoor and and outdoor constraints
 for the same band
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
To: Johan Almbladh <johan.almbladh@anyfinetworks.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 02, 2021 at 03:05:56PM +0200, Johan Almbladh wrote:
> I noticed that the rule for ID (Indonesia) looks like it only allows
> for indoor operation.
> 
> country ID: DFS-JP
>         # ref: https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019
>         (2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
>         (5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
>         (5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
> 
> However, the referenced document seems to allow frequencies in the 2.4
> and 5.8 GHz bands for outdoor use as well, but with a different power
> and channel width constraints. Therefore I propose the following
> additional rules for the ID regulatory domain.
> 
>         (2400 - 2483.5 @ 20), (4 W), NO-INDOOR
>         (5725 - 5825 @ 20), (4 W), NO-INDOOR
> 
> The parser dbparse.py and nl80211.h understand the NO-INDOOR keyword,
> but I cannot find any occurrences of it in db.txt. Furthermore, as the
> reg domain rules are processed by cfg80211, the supported frequencies
> are annotated accordingly and NO-OUTDOOR is mapped to the flag
> NL80211_FREQUENCY_ATTR_INDOOR_ONLY. There is however no equivalent for
> the NO-INDOOR annotation.

Correct, it is defined but completely unused. I suspect this is because
restrictions have been more common on outdoor use rather than indoor.

> Should same frequency band, or parts of it, be specified multiple
> times with the NO-INDOOR and NO-OUTDOOR annotations as proposed? If
> not, how should cases like this otherwise be handled, where the indoor
> constraints are not a superset of the outdoor constraints?

In principle we could have separate rules for indoor vs outdoor use, but
the regulatory support in the kernel can't currently deal with that. So
we would first need to add support in the kernel, but this would require
care to ensure older kernels can continue to use the regulatory
database.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

