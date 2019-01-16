Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=9G4RriS0ya9TRBFYLFl76BBRr4u4lXIVpV2dvtzM9GE=;
 b=Q/+0KIcaLi644n
 BLddRKvX3aPDqmyoLHU40SHjdNyEa+KGY3yJhDvCMYAuNwO+QoEkye8zyWuWGtqfeg76EDWla2Mdj
 /RIp1j8DHPQRshw72J9ejTsPsKEQDbb6Iv+pqxvHquGMd2J17hizhlBeKa3mmTBymsC9YKa7lOnrN
 Omas5LqFC/QDF5u8ocNY0c4OjRLe0JB1FCFwxo8eSGR+31vTmkJaX9XV1wU0QSUKQvjJcczcbwjVD
 en3/Tt+8MM43t/rcZwO72jiK0n117irwBbdRLRcPSsbaaGYnHUWyjTCoRsLHtFWCQsxp+1HgP5FRS
 JMszhXQF3bAsuEShpABw==;
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjiOl-0003jy-8R
 for wireless-regdb@lists.infradead.org; Wed, 16 Jan 2019 10:26:17 +0000
Received: by mail-qt1-x841.google.com with SMTP id l11so6602576qtp.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 16 Jan 2019 02:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=o5LC5LvKvVNKCRGvKSy5Cd3p1p9FbNTJQnpDUgieJ24=;
 b=BYXXQVp43mjNwlOzdTRLIAwDHBDcp3yduOw4D7J8MNmgFJinTGapUqbSILPNmDwrVH
 JzjIFpdN4GXEOBQI7KLKlpT2ahzLzLJKCyLj4Nc4Lbo1tyh3shd6r+jhwReuoCe6oPW5
 lBYKc55AIoxsJTylCXHEmxslkoofnEMyATfWiD0D6V7ICbuKIwF56Bm/C+QESkXH85of
 q/zuYB9yIaAC+a7QG30flsLsveKZ+boHVllrreddOtRAjEZykshrftAzgxO/PB1Oohud
 x1Q6w7gejmneSyMnV1n5zCTlvMN5MycAVCXSWMf84HZDMvI2ZT/NZvCzo3+FJ/qD0+Hw 2kow==
MIME-Version: 1.0
References: <423eaa39-fc06-6a5a-a8fd-5e15d503dff5@quantenna.com>
 <03c1e278fdd880bf7409c0b1c03366178b765cda.camel@sipsolutions.net>
 <cdcde7a4-a2b0-5d4b-83e6-cfbffdfe93d9@quantenna.com>
In-Reply-To: <cdcde7a4-a2b0-5d4b-83e6-cfbffdfe93d9@quantenna.com>
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Wed, 16 Jan 2019 12:26:01 +0200
Message-ID: <CAAgmp6ujgvXAvzB5Y7UcLxosfHCeSaSy5taiJ-jhu2YDk+RVFg@mail.gmail.com>
Subject: Re: [wireless-regdb] Tx power for slave devices in ETSI DFS region
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
To: Igor Mitsyanko <igor.mitsyanko.os@quantenna.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hello Igor and Johannes,

From my research around TPC and radar detection in the context of the BG
regulatory domain and respectively ETSI, the relevant regulatory rules are more
specific than both what can currently be expressed in the regdb and what will be
possible to be expressed with your suggested modifications.

For example, in [1] it is stated that for the 5470-5725 MHz band:

  * The maximum allowed transmission power is 1 W e.i.r.p. with a maximum of 50
    mW/MHz spectral density of the average e.i.r.p. for each 1 MHz band.

  * The use of TPC that ensures lowering the average e.i.r.p. of the entire
    system (as I understand it, this means both the AP and STAs) of at least 3
    dbm is required.

  * In case TPC (as I understand it -- that exhibits the parameters above) is
    not used, both the maximum allowed transmission power and maximum spectral
    density of the average e.i.r.p. are lowered by 3 dB.

  * The use of methods for limiting radio interference ensuring at least the
    described in BDS 301 893 (respectively ETSI 301 893) protection
for providing
    coexistance with radio radar systems.

If there is will to extend the regdb format to be able to express accurately and
in their entirety the specifics of the relevant regulations, IMO a wider and
more detailed discussion is in order.

[1] http://www.crc.bg/files/_bg/Spisak_2015.pdf - List of radio equipment that
    uses harmonized within the European Union bands and electronic
    communications terminal equipment (the List)

Best regards,

Petko

On Wed, Jan 16, 2019 at 6:00 AM Igor Mitsyanko
<igor.mitsyanko.os@quantenna.com> wrote:
>
> On 1/15/19 5:45 AM, Johannes Berg wrote:
> >> Question is: does wireless core assumes that each device can do radar
> >> detection in slave modes (eg acting as a STA) and it is enabled by
> >> default? I couldn't find any logic in kernel which would limit 27 dbm
> >> power to 20 for STA devices.
> >
> > No, we shouldn't assume that it can do radar detection by itself ...
> >
> > I guess we should have some code? Or just fix the regdb?
> >
> > johannes
> >
> >
>
> Maybe we have to do both, as there are multiple things to consider:
> - current regdb values are fine for AP mode
> - Tx power values can be 3 dbm higher if TPC is supported. This is
> mentioned in a comment in regdb, but not used anywhere.
> - if STA detects radar, non-occupancy period must start
> - when non-occupancy period elapses, STA must do CAC before returning to
> channel. I guess CAC must be triggered by wpa_supplicant?
>
>
> I'm not sure how to present additional information in regdb while
> preserving backwards compatibility. Maybe we can:
> 1. Have a separate rule marked with NO_RDETECT flag which will advertise
> lower Tx power. Linux wireless core will have to select rule with
> highest Tx power if possible, for better results.
> 2. For TPC 3dbm gain, have a flag TPC_GAIN
> As an example, AW rules will look like:
>
> country AW: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (20), AUTO-BW, TPC_GAIN=3
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW, TPC_GAIN=3
>         (5490 - 5710 @ 160), (27), DFS, TPC_GAIN=3
>         (5490 - 5710 @ 160), (20), DFS, NO_RDETECT, TPC_GAIN=3
>
> Linux wireless core will have to update Tx power values when switching
> from AP and STA modes, and somehow notify drivers.
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

