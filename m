Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=16/YEwG1LT6mmmkJrpG6CGblkhno9k2a4U575zLbkaU=;
 b=pNXcG+g3I40br1
 7THQBgBs5X24A8yvGcqOTBMzC6+IPEkQljViKwqzwQgtIJC9RvbDCr8BF9Ji0PvQKEr7/1+rTVZfw
 U+j1F4Y4Paye064tDnpm1T5eEthAOODE05X5uuCBmWcq5+AomnmwE+LiDLdtg16YoZxBj0XBa7FpI
 m5uL2YW1m0EL3L2zNdc2BiISg4oACHUQrvLLMfzQdWUHxicJ+yJc0mH4yZZhYHG8hEGr61QojNCEI
 F9lEbAZ4clnsc6QdTXqXocEMaq0cEB0UfYDHz57LTjbpQNXCzq/0w52rM4ZpTh4JV0k1tqMJtk0rD
 6XsTpGmca5ip56QkO99w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivvta-0005Y3-K8
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:21:09 +0000
Received: from mail-yw1-f70.google.com ([209.85.161.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1ivvtW-0001Ec-D1
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:21:02 +0000
Received: by mail-yw1-f70.google.com with SMTP id c68so7051091ywa.2 for
 <wireless-regdb@lists.infradead.org>; Sun, 26 Jan 2020 20:21:02 -0800 (PST)
Date: Sun, 26 Jan 2020 22:20:59 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200127042059.GD3730@ubuntu-xps13>
References: <F2D43387-B3E7-4A9A-A8A9-857978571C03@gmail.com>
 <C9888727-3107-42A4-B802-39556F4A6D7D@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C9888727-3107-42A4-B802-39556F4A6D7D@gmail.com>
Subject: Re: [wireless-regdb] Update on Indonesia Regulations
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
To: Pandu Gunawan <pandu.gunawan@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Aug 26, 2019 at 12:03:49PM +0700, Pandu Gunawan wrote:
> sorry this is the correct link for the regulation: https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019 
> 
> > On 26 Aug 2019, at 11:49, Pandu Gunawan <pandu.gunawan@gmail.com> wrote:
> > 
> > Hi, I subscribe to this mailing list as apparently Eero is using your database to update the frequency in their device. I notice from the db.txt that for Indonesia, it refers to the old regulation of 2010. I understand that earlier this year Indonesia Government just issued a new regulations on WLAN.
> > 
> > WLAN devices can now operate under one of two roles:
> > 
> > 	• Outdoor Systems in the bands:
> > 		• 2400-2483.5 MHz (Max EIRP 4 watt and max bandwidth 20Mhz), and
> > 		• 5725-5825 MHz (Max EIRP 4 watt and max bandwidth 20Mhz)
> > 	• Indoor systems in the bands:
> > 		• 2400-2483.5 MHz (Max EIRP 500mW and max bandwidth 40Mhz),
> > 		• 5150-5250 MHz (Max EIRP 200mW and max bandwidth 80Mhz),
> > 		• 5250-5350 MHz (Max EIRP 200mW and max bandwidth 80Mhz), and
> > 		• 5725-5825 MHz (Max EIRP 200mW and max bandwidth 80Mhz).
> > 
> > link of the news: https://nuzeal.com/index.php/2019/05/29/indonesia-changes-for-short-range-devices/ 
> > link of the regulation: https://jdih.kominfo.go.id/produk-hukum/view/676  
> > 
> > Appreciate if you help in updating this in the database. thank you.

I guess I lost track of this message, sorry for the delayed response.

The database doesn't have the facility to specify different power limits
for indoor versus outdoor operation. I think it makes sense to use the
indoor rules and mark them as indoor only. I'll reply with a patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
