Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSoOK-000138-G7
 for wireless-regdb@lists.infradead.org; Tue, 03 Mar 2015 15:05:49 +0000
From: "Mishol, Guy" <guym@ti.com>
Date: Tue, 3 Mar 2015 15:05:18 +0000
Message-ID: <97207D90F0289D498537011312FCAD112633EAB3@DFRE01.ent.ti.com>
References: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
 <20150302223824.GB11245@ubuntu-hedt>
In-Reply-To: <20150302223824.GB11245@ubuntu-hedt>
Content-Language: en-US
MIME-Version: 1.0
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Machani, Yaniv" <yanivma@ti.com>
List-ID: <wireless-regdb@lists.infradead.org>

Hi,
If I understand correctly these changes should be applied not only for US but all FCC countries.


-----Original Message-----
From: Seth Forshee [mailto:seth.forshee@canonical.com] 
Sent: Tuesday, March 03, 2015 00:38
To: Mishol, Guy
Cc: wireless-regdb@lists.infradead.org; Machani, Yaniv
Subject: Re: TDWR Channels are not prohibited anymore in FCC

On Thu, Feb 26, 2015 at 03:19:22PM +0000, Mishol, Guy wrote:
> Hello All,
> It seems that starting from June 2nd 2014 the TDWR channels (5600-5650) are not prohibited anymore and should be added to FCC countries.
> 
> OLD FCC rules:
> https://apps.fcc.gov/kdb/GetAttachment.html?id=6ykM4HwIF0kSnjYKSFkk8Q%
> 3D%3D&desc=905462%20D05%20802.11%20Channel%20Plans%20%20Old%20Rules%20
> v01&tracking_number=27155
> 
> NEW FCC rules:
> https://apps.fcc.gov/kdb/GetAttachment.html?id=lp4w3WTVG9PReWNFG0ckTg%
> 3D%3D&desc=905462%20D06%20802.11%20Channel%20Plans%20%20New%20Rules%20
> v01&tracking_number=27155
> 
> Does anyone know if those TDWR indeed not prohibited anymore for all FCC countries and if there's any regulatory DB patch for it?

I can say for sure that there's no patch pending. I also agree that it looks like those channels are now allowed, and it also looks to me like we should be able to raise the upper limit of the 5490-5710 MHz range up to 5730 MHz.

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

