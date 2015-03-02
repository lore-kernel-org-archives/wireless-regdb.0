Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f49.google.com ([209.85.218.49])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSYzA-0006GF-UG
 for wireless-regdb@lists.infradead.org; Mon, 02 Mar 2015 22:38:50 +0000
Received: by mail-oi0-f49.google.com with SMTP id v63so29808749oia.8 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 Mar 2015 14:38:26 -0800 (PST)
Date: Mon, 2 Mar 2015 16:38:24 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150302223824.GB11245@ubuntu-hedt>
References: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
Subject: Re: [wireless-regdb] TDWR Channels are not prohibited anymore in
 FCC
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
To: "Mishol, Guy" <guym@ti.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Machani, Yaniv" <yanivma@ti.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 26, 2015 at 03:19:22PM +0000, Mishol, Guy wrote:
> Hello All, 
> It seems that starting from June 2nd 2014 the TDWR channels (5600-5650) are not prohibited anymore and should be added to FCC countries.
> 
> OLD FCC rules:
> https://apps.fcc.gov/kdb/GetAttachment.html?id=6ykM4HwIF0kSnjYKSFkk8Q%3D%3D&desc=905462%20D05%20802.11%20Channel%20Plans%20%20Old%20Rules%20v01&tracking_number=27155
> 
> NEW FCC rules:
> https://apps.fcc.gov/kdb/GetAttachment.html?id=lp4w3WTVG9PReWNFG0ckTg%3D%3D&desc=905462%20D06%20802.11%20Channel%20Plans%20%20New%20Rules%20v01&tracking_number=27155
> 
> Does anyone know if those TDWR indeed not prohibited anymore for all FCC countries and if there's any regulatory DB patch for it?

I can say for sure that there's no patch pending. I also agree that it
looks like those channels are now allowed, and it also looks to me like
we should be able to raise the upper limit of the 5490-5710 MHz range up
to 5730 MHz.

Anyone have objections to applying the following change?

diff --git a/db.txt b/db.txt
index 7c6ca5d..dff2fba 100644
--- a/db.txt
+++ b/db.txt
@@ -1134,8 +1134,7 @@ country US: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5490 - 5600 @ 80), (23), DFS
-	(5650 - 5710 @ 40), (23), DFS
+	(5490 - 5730 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)
 	# 60g band
 	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

