Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=i+iV5Uz6QIBUHiEdY06g6ImrGRbYlFNQ/eMT/Qe2F2U=;
 b=XkB
 8P5k2fm5cgeGau4kuhPsVIfqsOWEnEI5KgS9Urhuar+GVIE/SmRbQ1eNDJB+4XCR7aLhy/4h8mbog
 /UdsY7tEJtlAiQWNAyX2bYHMZ5N0Kf25+6k4FL8Ou40nmcx6kVXjeHSEeobijZeWHVyi4MjcUvLAj
 CVTZ1btvd65U2o3WftxFuO9GDjbg0gFMnw9VtVMQtsp0F+mfX7vYh3+mfGZzlt8JinakmFbdJXYLu
 8Weax+dXUXy1DtBsH8Npiuahpumlv7gBQJVks8hPD0JKP/DTfOs8e0xAwgWi4/NbYegwtMXgUCrS6
 6Co1lh6bSFGDPn6Vhzyz8us4x1zprGg==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgTMR-006SwN-2A
	for wireless-regdb@lists.infradead.org;
	Wed, 13 Sep 2023 17:09:08 +0000
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-502b1bbe5c3so11904e87.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Sep 2023 10:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20221208; t=1694624944; x=1695229744; darn=lists.infradead.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to; bh=vZ9kAZehe6uRUddqEUoKwMQrCUGUj3DIHCxJ6+5D8sA=;
 b=Dx5iiA+o+MBUNR8QNGOSk6YyBNkQoUEOxypXJTT2eiZIB2bxhNuk8jmF4W+YG5kBZA
 k3maljEbFEpobZh+4Jli62iqHRVfPc5tMC/aSTQhI2EhfRHbi/KrIYjonsCpqJ0ILWfY
 l6h0saeLhsWx281iEjZtsd01BHp+t9iMTfWJy//x6A4GRbSzxuModeEHYkxPUMGgyLmc
 t0kBrvC8LcPCiZFB56nqsGTm5mCenILKyeK+Svxzywjh1l9aKL3Noomly37XvlVacQ5J
 aq205Ah9h3QsuR4UajxvR3DsO7PIkpE2OLX3X3oUnXNw0amxTIm3LmNfATKtEeA4Toi4 82LA==
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 13 Sep 2023 11:08:48 -0600
Message-ID: <CAE+BM3=Neb_g3QPMiGjpmkkpUK6wupM1FX06DyZOtDnQgBz_YA@mail.gmail.com>
Subject: [wireless-regdb] Add extra check in regdb scripts
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
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

From 434588b8f06f78a3188909c298a6f6671dab7b3f Mon Sep 17 00:00:00 2001
From: Rusty Howell <rhowell@control4.com>
Date: Thu, 7 Sep 2023 12:56:47 -0600
Subject: [PATCH] Add same check that kernel uses to check reg domain

The kernel will reject a regulatory domain if the max bandwidth is greater than
the span from start to end. We should catch this error when compiling the
regulatory database.
---
 dbparse.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/dbparse.py b/dbparse.py
index 5f7e082..1e87813 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -218,6 +218,9 @@ class DBParser(object):
                 self._syntax_error("Inverted freq range (%d - %d)" %
(start, end))
             if start == end:
                 self._syntax_error("Start and end freqs are equal
(%d)" % start)
+            if bw > (end - start):
+                self._syntax_error("Max bandwidth must not exceed the
range from start to end")
+
         except ValueError:
             self._syntax_error("band must have frequency range")

-- 
2.25.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

