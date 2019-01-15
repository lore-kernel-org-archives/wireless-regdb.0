Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=pH9LuDfbOLk0gdgopkESZaNHFmX18nP/xrkKNdxAZoA=;
 b=MNM66wQxNW31Uz
 gWPo1bLUTMlZ4jqSMC0UzYHQ4jrK3AFAOCoB7/7srYqPCyLMhXGFBdr+ljfADX3kQ8z19KH/zQ3vB
 /dGypaO041AWCRsB4+qqN9Gwy5YTXKHtJI4NElRlq0Yy85qYOmp5BjKbSR00GlWNIEkWRyooF4lnj
 tV5+Uvze+p+hzlbn8l1irPG25To2LihiV1to5yGoBMcViEHMsHAyoiIksndXvwUjn92zFyWSaUEJl
 LZquTO6JM4ZdfrwHYIRMdrMjuFFq80heLC4u3w9TFJF8LkkyMVtZcQuM32iMiafAlBqmhGdVByJMs
 joffUfUk4fV2vzqB0kiQ==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjP2L-0007GM-TY
 for wireless-regdb@lists.infradead.org; Tue, 15 Jan 2019 13:45:51 +0000
Message-ID: <03c1e278fdd880bf7409c0b1c03366178b765cda.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 15 Jan 2019 14:45:46 +0100
In-Reply-To: <423eaa39-fc06-6a5a-a8fd-5e15d503dff5@quantenna.com>
References: <423eaa39-fc06-6a5a-a8fd-5e15d503dff5@quantenna.com>
Mime-Version: 1.0
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
To: Igor Mitsyanko <igor.mitsyanko.os@quantenna.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hi Igor,

On Tue, 2018-12-11 at 02:30 +0000, Igor Mitsyanko wrote:
> Hello,
> 
> according to ETSI 
> https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
> section 4.2.3.2.2, table 2
> Note 3 states:
>  >Slave devices without a Radar Interference Detection function shall 
>  >comply with the limits for the frequency range 5 250 MHz to 5 350 MHz.
> 
> And Tx power limits are defined as following:
> 5150 to 5350: 20 dbm
> 5470 to 5725: 27 dbm

> Which means that if STA device can not do radar detection, it must use 
> 20dbm Tx powers on all channels (can not use 27 dbm limit).
> 
> 
> Looking at regdb 
> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt, 
> power limit for frequency range 5470 to 5725 is defined at 27 dbm.

I guess somebody misinterpreted the spec, or some countries are less
strict?

> Question is: does wireless core assumes that each device can do radar 
> detection in slave modes (eg acting as a STA) and it is enabled by 
> default? I couldn't find any logic in kernel which would limit 27 dbm 
> power to 20 for STA devices.

No, we shouldn't assume that it can do radar detection by itself ...

I guess we should have some code? Or just fix the regdb?

johannes



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

