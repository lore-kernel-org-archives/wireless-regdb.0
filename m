Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=W2wdrYCYwycdz1fz/m3oTMEQ8617WzSonemlLsCkrlo=;
 b=jK3hcLN9abS10j+ePlH2naOb8
 mjC9W79pV9YA68e88WciQgaoCyNmyCTmS5DZLCbrVPM6oijThox25mBW6xk3puyBDndxupvtAJZWX
 v/gYv+j33GnFi9KWlqhyZDsCb+t4tRjRViD8dpRspR7l/HBkt+4lxELbUJ5sK+QlLljR+T6jGnR/b
 oZ4R5B01m9hAgIH/BVI9b6WlG7Q0hP1bQtvYOTLgM+Njt9n+ivMSNwY4auzsbpmjQjgwSWMMl1f6Y
 Lo6Axcx8/6eZnwZLVwJ6yihtVN2OOtWsxhSQn6J7jWSyP3pr/4lCSFa0NZiiuT0lnTVDUSAXPo+pD
 ouXI9Gb6A==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klCkM-0003O6-DR
 for wireless-regdb@lists.infradead.org; Fri, 04 Dec 2020 15:11:47 +0000
Received: from mail-oi1-f200.google.com ([209.85.167.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1klCkJ-0001Bt-Qp
 for wireless-regdb@lists.infradead.org; Fri, 04 Dec 2020 15:11:43 +0000
Received: by mail-oi1-f200.google.com with SMTP id w15so2129615oic.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 04 Dec 2020 07:11:43 -0800 (PST)
Date: Fri, 4 Dec 2020 09:11:41 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <X8pRrWfZPhLdguu8@ubuntu-x1>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: bkil <b.K.il.h.u+tigbuh@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Dec 03, 2020 at 11:40:30PM +0100, bkil wrote:
> The new band is called U-NII-4.

The report states in paragraph 203 that the order is effective 60 days
from publication in the Federal Register, and it looks like they haven't
even been published in the Federal Register yet. We will need to wait
for the rules to go into effect before applying any updates.

> The report recommends combining it with 5725-5895 to allow 160 MHz
> bandwidth, but that's technically not that easy with regdb due to the
> differing restrictions of the two parts. Marking the line for U-NII-3
> NO-OUTDOOR and PTMP-ONLY along with extending its range would be a
> possible workaround, but this needs to be discussed.

I think it should be sufficient to set the bandwidth of both 5730-5850
and 5850-5895 to 160 MHz with AUTO-BW. The kernel will see the AUTO-BW
flags and calculate a combined rule where 160 MHz is allowed, and for
the original rules any bandwidth exceeding the available bandwidth of
the rule will be disallowed.

> I don't see a requirement for TPC, hence reducing EIRP by 3dB is not
> needed. I've marked it 33dBm (minus 6dB for clients) to cope with 20MHz,
> but the band can support higher power, though the logic is complicated.

I believe we have an additional requirement from § 15.407 (a)(3)(v):

  In the 5.850-5.895 GHz band, client devices must operate under the
  control of an indoor access point. In all cases, an exception exists
  for transmitting brief messages to an access point when attempting to
  join its network after detecting a signal that confirms that an access
  point is operating on a particular channel.

This sounds like a requirement for passive scanning, if so the range
should also have the NO-IR flag.

Thanks,
Seth

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
>  	# 60g band
>  	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
>  	# channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
