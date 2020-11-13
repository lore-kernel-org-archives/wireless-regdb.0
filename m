Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209; h=Sender:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=x9Zj8PZuW8eWPi5LS9JUH/E+24I9esP3RHdV8e9AR9U=;
 b=NHsX9MiQM3HX1T9tBaGTpu0bo
 8ppGLA1z6A0fe2BheUyZpD+UwFHSDp2LLE6LP3PLnNe7SIifJ5520MhDR28QSKn75BODFWsEbtRJB
 2S6BihErbl4/NjpZgh/py7wzE7ISzGHouT+OI4RLlpmNXuC63bps8jMTrruqqpCYFdpj5NXq0/z4k
 l3SfSLZPK5GpCFwt/pTZUvDo9A6diSbQtIOxMkIfCfCXoEFVnj1qSHwgfFY+VYjm8PXhpoC+GnFuG
 OmgRUDLXpbjgKzu43kDjLWDf9/abeJX70rZyPoUJXvXBuvVhD9HpqXJm4IK2sLMvdx8iBl8tn3gRU
 Y14WTbKvQ==;
Received: from mail1.nippynetworks.com ([91.220.24.129])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kde8x-0007B8-EB
 for wireless-regdb@lists.infradead.org; Fri, 13 Nov 2020 18:49:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
 s=dkim; t=1605293387;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FDOxE/QYSIDmquLpxTzlBELSiRSur5tED2eSsbOZwV8=;
 b=F/CG2iqk0YMEvsevQWsKpPjjO0Us8Qvwjba6lJ4/11APmGjpI/4jThkqeResnb7/Cf5QSL
 SzNu7xwQnar7utElCtAWYauaCHkukTcuRHnqlKGerIyEKwoqap+/vYuQB+VXGIfgf9b75t
 YvSGWAkcHZjfRzkFP6I7+v2KQsVQunA=
References: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
 <20201106214446.GG6125@ubuntu-x1>
From: Ed W <lists@wildgooses.com>
Message-ID: <2a710032-f2ec-d55b-5da4-d881089fe0cd@wildgooses.com>
Date: Fri, 13 Nov 2020 18:49:40 +0000
MIME-Version: 1.0
In-Reply-To: <20201106214446.GG6125@ubuntu-x1>
Content-Type: multipart/mixed; boundary="------------702AFDA4ECAA478A81F0AAB2"
Content-Language: en-GB
Subject: Re: [wireless-regdb] Correction of wireless-regdb for GB
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This is a multi-part message in MIME format.
--------------702AFDA4ECAA478A81F0AAB2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hi Seth

Thanks for patching this. Can I also bring a later patch that I posted to your attention, the actual
patch is now out of date, but I'm posting verbatim since I think there is a 25Mhz discrepancy (?)
and also my patch is almost certainly wrong, so I'm after your guidance!! :-)

Essentially there has been a recent result of a consultation in the UK (GB) to expand wifi into 6Ghz
*AND* to NOT require DFS on high 5Ghz channels.

So in summary, the change you just made (sorry) can now be set to *NOT* need DFS in the high
channels around 5.7Ghz. More details in the links below.

In particular one of the additional frequency ranges (6Ghz) has an intended use of indoor where it
has large power outputs (and encouraged to use larger powers by request of Intel), but it is *ALSO*
allowed to be used outdoor with very low power requirements (possibly it will later fall under the
UK's allowance to use higher output power if you buy a £50 licence?). I've marked it as INDOOR-ONLY
since that seems safest - I'm unclear how to mark something for dual use?

These changes significantly expand the available 5Ghz space in the UK, so would be nice to get
upstream for general use


Notes:

https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf

https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf

Thanks if you might make this second change!

Ed W


On 06/11/2020 21:44, Seth Forshee wrote:
> Sorry for not responding sooner. I had started to look into this when
> you sent the message, but I had to set it aside and then forgot to pick
> it back up.


--------------702AFDA4ECAA478A81F0AAB2
Content-Type: text/plain; charset=UTF-8;
 name="0001-Update-regulatory-rules-for-UK-GB.patch"
Content-Disposition: attachment;
 filename="0001-Update-regulatory-rules-for-UK-GB.patch"
Content-Transfer-Encoding: 8bit

From ee0aad4566b206f313e92ab4ae98f786767892cd Mon Sep 17 00:00:00 2001
From: root <root@twocubed.nippynetworks.lan>
Date: Thu, 17 Sep 2020 13:31:18 +0000
Subject: [PATCH] Update regulatory rules for UK (GB)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The IR-2030 document on p47 clarifies a difference for the UK on
5725-5850Mhz from the rest of the UK. Power levels are higher and it's
possible to raise these further by purchasing a 50 GBP radio licence.

Since Jan 2020 Ofcom has solicited comments on further deregulating this
band to bring it into global alignment. DFS requirements have been
removed and a new band in the 6Ghz space has been made available with
250mW power levels (indoor, 25mW outdoor), also with no DFS requirement.

Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
---
 db.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ac32483..cc5ffd0 100644
--- a/db.txt
+++ b/db.txt
@@ -588,13 +588,16 @@ country FR: DFS-ETSI
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0013/126121/Statement_Implementing-Ofcoms-decision-on-the-57-71GHz-band.pdf
+# GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf
 country GB: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
-	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
-	(5725 - 5875 @ 80), (25 mW)
+	# See UK specific notes in ir-2030.pdf, p47
+	(5725 - 5850 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
+	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-6
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.26.2


--------------702AFDA4ECAA478A81F0AAB2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--------------702AFDA4ECAA478A81F0AAB2--


