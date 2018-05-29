Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=dat72RIlj1P8HJJrahxlRlvbuAJO6yFerwS6KI0loWI=;
 b=WWOYAm2rUOiJf+
 i5GYebfhWBiOLWeILqgy3wRU8oyxJJ/mKx6gytwTas81f85fe66zWF/suvrTQw8L2QHRHW69hDL//
 MeqEoyh+V4O2d7RFZFkkJErdqvLWoNDtq1LLl4fbU+rbGKIfPhy93lMlHWAmmejmxwgrSxmML5CWa
 nqDNJZybTdvE3gmWdEjokSSdbYCn+F/EJIIPC5gYSP2uZQSuWjeAvCnbCQoU/+Pt1W5fROyC34j0y
 Sb1ibwpEyOO85MH3FkPIUZ1pJVhUmwTwhqxqCrDHCkEJ3M0nYzj+OD4XwOMhmtFnCrW0EbzPPXuX+
 FSIWCeL8LT9KlbbSDBUQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209;
 h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vgMos6E+AB8nhFJp5WL5SnhQC9TU5wwkbAC57FqQ0YI=;
 b=o3zGhIRkV1vpD0sK/Efjv/cyjL
 EHAs1f48FsbyHK1fx5LJzzHUoTmfoIq+HJ6d7sywolDvTgvyqT1oTeNTZDHNjXqLCNvzqk5jKGIGZ
 1sCBBkZyh5z3vvI5W3InomSRGAIY9NXO/dE4+r4zOnSxSd+g3HrQXCNOgFiMF2lpLvqHLbJQ1m+zR
 te8zyUDBy0/jb0VQsvMivIlkepC1NAtfb+o33qVfUd09Ybv4PizOJ6T9UE6EAKxG6yOKQ+uV01S2G
 iViEM3qqvF0Qu7KdlJZjdEt+BReqsaXyTa/Ue/ZoybDaOqQlD9Vswt33HhhXgMzOiaxpDZmqDEL1u
 HRjevoMA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNewv-00060n-5D
 for wireless-regdb@lists.infradead.org; Tue, 29 May 2018 13:46:07 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fNewk-0006jE-Qa
 for wireless-regdb@lists.infradead.org; Tue, 29 May 2018 13:45:54 +0000
Received: by mail-io0-f197.google.com with SMTP id m24-v6so13069155ioh.5
 for <wireless-regdb@lists.infradead.org>; Tue, 29 May 2018 06:45:54 -0700
 (PDT)
Date: Tue, 29 May 2018 08:45:51 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180529134551.GD3401@ubuntu-xps13>
References: <20180515191126.19189-1-seth.forshee@canonical.com>
 <20180529001316.Horde.N--dUzDwgeV9OdangpDcdQ1@webmail.hfg-karlsruhe.de>
 <20180529133628.GC3401@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180529133628.GC3401@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz
 rule for France (FR)
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
To: christian.suenkenberg@hfg-karlsruhe.de
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 29, 2018 at 08:36:28AM -0500, Seth Forshee wrote:
> On Tue, May 29, 2018 at 12:13:16AM +0200, christian.suenkenberg@hfg-karlsruhe.de wrote:
> > Hello Seth,
> > 
> > it looks like you confused mW and dBm in your patch.
> > Sorry for the late comment, I'm following this list only
> > occasionally.
> > 
> > Quoting Seth Forshee <seth.forshee@canonical.com>:
> > > Based on [1] and [2], use of short range devices in this range
> > > is now permitted in France. Add a rule for this range, using the
> > > power limit of 25 dBm as specified in these documents and in
> > > ETSI EN 300 440.
> > > 
> > > [1] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> > > [2] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> > 
> > The second reference was probably meant to point to:
> > http://www.etsi.org/deliver/etsi_en/300400_300499/300440/02.01.01_60/en_300440v020101p.pdf
> 
> Actually it was meant to be
> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN,
> but wrong in either case.
> 
> > > […]
> > > +        # short range devices (ETSI EN 300 440)
> > > +	(5725 - 5875 @ 80), (25)
> > 
> > This should be (14) or (25 mW).
> 
> Good catch, it's not that I confused them so much as I just forgot the
> mW. I'll fix that.

Applied the following patch.

From b2e02c0fece1966af8d2877be814b6a168bfcec0 Mon Sep 17 00:00:00 2001
From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue, 29 May 2018 08:37:35 -0500
Subject: [PATCH] wireless-regdb: Fix power limit in 5725-5785 GHz rule for France

The power limit should be 25 mW and not 25 dBm. Thanks to
Christian Sünkenberg for pointing out the mistake.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index e3bbd374d096..8963c0105f27 100644
--- a/db.txt
+++ b/db.txt
@@ -476,7 +476,7 @@ country FR: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
 	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
         # short range devices (ETSI EN 300 440)
-	(5725 - 5875 @ 80), (25)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
