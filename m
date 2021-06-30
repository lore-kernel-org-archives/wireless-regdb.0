Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=fu19quE863p0hTN8dAFIkLrcS2ntoem0N8oHqZcYmuQ=;
 b=aJIVGGkos25F5J
 wTI5ugxpwN4S1UCsbGg9xNmeoaTPS8zTi2eQflnNr9cBDkj036DCRW6GdLKyBte74ydg4u3q2zVCr
 EYBMrUflfgvTS/gz+fWZaXf/HeEjq9h0L/n8nqP7UXQyUIyQNWYWoi1XzPl8DKmDwKcMJU+0wMnld
 JVe2mgQaOor32FzT3gNahT2dIqLwfrCtSNoFtlbHqptvBJJfOLeTkFAtrTixsQiqhfaM9V7hAlax3
 Yo4IDFye8VGtap5KzLdnRG1PA/n7HBR5V1lQfscCmMa1CuA0IlVONwbCRrugYeB7e30l6OPIMVwea
 fm+5ZtcgLEP3rtolWsNw==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lybyJ-00EbsQ-Cz
 for wireless-regdb@lists.infradead.org; Wed, 30 Jun 2021 15:17:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 o33-20020a05600c5121b02901e360c98c08so4684573wms.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Jun 2021 08:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9Si4/3mbVmM5VJxy6bW+MVjJGaS3XheqtQW8xlZqafc=;
 b=lVdn7Lp4EpNU4LT33sKXscSBPErMV2XKU55z4P8urc0t8YbcEm9qsxXySDVbd6Jhpi
 /M0XOy/ykjXbK5sqj+hEPevj8mggSJdX9Src2vwXYC0si+/hlcUZ5JvsZgarDw+fqhMw
 dLI487lcNJnd0tqiDx4Wb1VxUR5NQ3qU0OiiVxxikSwkGNSrKfeKe988Mrombfgwra2I
 AeKP8syWoRt7lBYBZN7fnMckNW1F4gaoq2ZicmdTzSCZoQjwKQBakRaTf3Q535ycAbri
 yhdI6EWrwdprIjGMiKZy9dMMpl4toYpecYuMyeuFf7S7A1P3EHt0IOIflloO2rSSDQin FBiA==
MIME-Version: 1.0
References: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
 <YL+RDtGatz/ybG+M@ubuntu-x1>
In-Reply-To: <YL+RDtGatz/ybG+M@ubuntu-x1>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Wed, 30 Jun 2021 17:17:37 +0200
Message-ID: <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

> On Tue, Jun 8, 2021 at 5:47 PM Seth Forshee <seth.forshee@canonical.com> wrote:
> I think we concluded previously that both 5730-5850 and 5850-5895 should
> have a max bandwidth of 160 MHz to permit use of 160 MHz across these
> channels.
>

Yes.

> We also discussed using NO-IR for 5850-5895. The regulations forbid
> active scans, and PMTP-ONLY does not prevent them. NO-IR appears to be
> the only option which conforms to this restriction, though that will
> also block running an AP in this range.
>

So we would not be able to operate an OpenWrt or other Linux-based AP,
while other vendors would be allowed to do this? How is this
acceptable? How does this help in liberating the band?

> I also read the max EIRP for clients as 30 dBm without any TPC
> requirement. Did I overlook something which limits the EIRP to 27 dBm?
>

The 27 dBm EIRP is needed for 20 MHz operation due to spectral density
requirements. Is my information correct that regdb has no notion of
specifying a separate limit for spectral density? (If it did, we might
be able to double the EIRP for 2.4GHz of 10MHz channels)

I have summarized the reasoning in a comment of the original patch,
but let me cite it here then (copied from the more recent link you
have now given):

> "(iii) For client devices operating under the control of an indoor access point in the 5.850-5.895 GHz band, the maximum power spectral density must not exceed 14 dBm e.i.r.p. in any 1-megahertz band, and the maximum e.i.r.p. over the frequency band of operation must not exceed 30 dBm."
> "the Commission limited indoor access point EIRP spectral density to 20 dBm/MHz with a maximum EIRP of 36 dBm over the bandwidth of operation (e.g., 33 dBm/20 MHz and 36 dBm/40 MHz)"
> "To keep the potential for causing harmful interference low, the Commission required client devices to operate under the control of an access point, and limited client device's power spectral density and maximum transmit power to 6 dB below the power permitted for the access point."

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

