Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=k1U7N/KjCr4f7nSEad2SbYS20PRX5VL2wynv2VSm8b4=;
 b=JxR2zzVJYQy5zU
 nrrBEil29fU9EBlZrTzndiqjW88INK78CF0iXg5l5CwNTXJ9BpF+2HDfQHnALILGLkqYHm0+JLF63
 UaIbgxTYY3fZAr2rm1orbw/RNQgLC/lwlIdlzpDEwSxGE+oounjPObND2UFB9PRnJVeglpjqawV5g
 Nh/wPZJTjML5+vaHCc7NNQYZTdM9vKzg6dsGRJiDgnBzNnU5wC2Ol6fKQYjbTjKiGLofQpR7eL9p6
 uWe5kuaWNvPkD0RsVBcdIRC/b4y3RZQTqTvnCSwpgLk7FzHI7oNI8o3aqwB4lr4h1DwzUfeSSIspt
 OZHelIPlfJHr8lOg/DaQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqdwy-009KUb-0F
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 15:47:33 +0000
Received: from mail-ot1-f72.google.com ([209.85.210.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1lqdwv-0007So-Lz
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 15:47:29 +0000
Received: by mail-ot1-f72.google.com with SMTP id
 59-20020a9d0dc10000b02902a57e382ca1so14223542ots.7 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 Jun 2021 08:47:29 -0700 (PDT)
Date: Tue, 8 Jun 2021 10:47:26 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YL+RDtGatz/ybG+M@ubuntu-x1>
References: 
	 <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: recent FCC report and
 order allows 5850-5895 immediately
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Dec 03, 2020 at 11:40:30PM +0100, bkil wrote:
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

I'm not sure why this was delayed, but it looks like it has finally gone
into effect as of June 2:

https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band

We discussed some of the details before. I'm reading over it again to
refresh my memory, so let's revisit the changes I think are required,
below.

> ---
>  db.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index c71a03a..e6dd063 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1587,7 +1587,10 @@ country US: DFS-FCC
>  	# requirements, we can extend the range by 5 MHz to make the kernel
>  	# happy and be able to use channel 144.
>  	(5470 - 5730 @ 160), (23), DFS
> -	(5730 - 5850 @ 80), (30)
> +	(5730 - 5850 @ 80), (30), AUTO-BW
> +	# https://www.fcc.gov/document/fcc-modernizes-59-ghz-band-improve-wi-fi-and-automotive-safety-0
> +	# max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
> +	(5850 - 5895 @ 40), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW

I think we concluded previously that both 5730-5850 and 5850-5895 should
have a max bandwidth of 160 MHz to permit use of 160 MHz across these
channels.

We also discussed using NO-IR for 5850-5895. The regulations forbid
active scans, and PMTP-ONLY does not prevent them. NO-IR appears to be
the only option which conforms to this restriction, though that will
also block running an AP in this range.

I also read the max EIRP for clients as 30 dBm without any TPC
requirement. Did I overlook something which limits the EIRP to 27 dBm?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

