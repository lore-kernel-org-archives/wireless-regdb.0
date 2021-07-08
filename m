Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=AOL8imEFdU6QafyO9TiHzjLb6iLUB11LjxhLnMFPjHI=;
 b=wyEw39J7VAk5bk
 6e2unQ5jjqPXdO8GJsBjoBnnzg/U4HYDmpWCTE0LMi/jjrB0T/0LPgHDM8XRLpTwSdwpxFbtrwIxp
 Tk2BKFjTtfCp7166pmW5p65KxZwEDmc9wcMHCUsKpzO+OCidMrKcKVeD0PZhPx4VPcTo1oPorcS+F
 L+vVwZmGYRX04Povn5uw4tSHT/efhef+yHN6xvCW2K1XyJBrsXyNNCYppNP5PZgoXLHvK9JrQYL39
 BbBNHsCkpqza9LE1y7uAXZMyy6/Iyluec6OMkzNTXKoR6yzpsfydprHGoFBUaCPBKbj/5SAZdhZOz
 DJSJ9FsknBtGNURtUkNg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1Zuf-000CA8-Kt
 for wireless-regdb@lists.infradead.org; Thu, 08 Jul 2021 19:42:23 +0000
Received: from mail-oo1-f70.google.com ([209.85.161.70])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1m1ZuZ-0000Rq-DJ
 for wireless-regdb@lists.infradead.org; Thu, 08 Jul 2021 19:42:15 +0000
Received: by mail-oo1-f70.google.com with SMTP id
 z81-20020a4a49540000b0290258d99e6bc6so4102723ooa.22 for
 <wireless-regdb@lists.infradead.org>; Thu, 08 Jul 2021 12:42:15 -0700 (PDT)
Date: Thu, 8 Jul 2021 14:42:12 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YOdVFE51Wbxr80Qf@ubuntu-x1>
References: <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
 <10ffaa74a0779b7c7047de70cb1db7dfb0000022.1625068999.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10ffaa74a0779b7c7047de70cb1db7dfb0000022.1625068999.git.b.K.il.h.u+tigbuh@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: recent FCC report
 and order allows 5850-5895 immediately
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
To: bkil <b.K.il.h.u+tigbuh@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 30, 2021 at 06:03:20PM +0200, bkil wrote:
> The new band is called U-NII-4.
> 
> The report recommends combining it with 5725-5895 to allow 160 MHz
> bandwidth, but that's technically not that easy with regdb due to the
> differing restrictions of the two parts. Marking the line for U-NII-3
> NO-OUTDOOR and PTMP-ONLY along with extending its range would be a
> possible workaround, but this needs to be discussed.
> 
> I don't see a requirement for TPC, hence reducing EIRP by 3dB is not
> needed. I've marked it 33dBm (minus 6dB for clients) to cope with 20MHz,
> but the band can support higher power, though the logic is complicated.
> 
> The upper subband (5895-5925 MHz) of the new band is reserved for ITS.
> 
> "We limit unlicensed use to indoor operations in recognition of the
> potential that ITS licensees may currently be operating"
> 
> "We also proposed that U-NII-4 devices be permitted to operate at the same
> power levels as U-NII-3 devices."
> 
> "For the U-NII-4 band, indoor access point EIRP will be limited to
> 33 dBm/20 MHz and 36 dBm/40 MHz. When combined with U-NII-3 band spectrum,
> indoor access point EIRP can scale to 36 dBm for 80 and 160 megahertz
> channels."
> 
> "Client devices would be limited to power levels 6 dB below the power
> limits for access points."
> 
> "the First Report and Order prohibit U-NII-4 client-to-client
> communications to protect co-channel incumbent ITS"
> 
> Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
> ---
>  db.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index c71a03a..ae6ea31 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1587,7 +1587,10 @@ country US: DFS-FCC
>  	# requirements, we can extend the range by 5 MHz to make the kernel
>  	# happy and be able to use channel 144.
>  	(5470 - 5730 @ 160), (23), DFS
> -	(5730 - 5850 @ 80), (30)
> +	(5730 - 5850 @ 160), (30), AUTO-BW
> +	# https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band
> +	# max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
> +	(5850 - 5895 @ 160), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW, NO-IR

I discovered a couple of problems here.

The first is that it seems I forgot to test build this patch before I
pushed it. The PTMP-ONLY flag isn't allowed by db2fw.py. This was done
by Johannes for reasons which aren't explained, so maybe he can shed
some light on it. The flag doesn't appear to be used by the kernel or
hostapd, so maybe it was deprecated long ago. Anyway, I've pushed a
change to remove this flag.

The second problem is more serious. I thought that we could allow 160
MHz bandwidth across two AUTO-BW ranges too small for this bandwidth,
but it turns out that the kernel rejects any rules with a bandwidth
greater than the frequency range of the rule. I'm not sure what we can
do about this. Even if the kernel were changed to support allowing
greater bandwidths across combined ranges, we're going to have a
backwards compatibility problem with older kernels.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

