Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=DjwXBhm9o8o6K4iONI7mSr6ey6c1Gq4X71rwP9nU2v4=;
 b=Fd6dayJeI7dK1J
 /1n/U9ut+6saTjCV//SJzF3zzSKINJdN03Gnr1+gSSbgHtldCruX0Bv7XAzGJX/vGiBEJVUU23sF6
 JcI/dTVCtaWAVdV0MQl8Uvn9uHv38wFV1gcpWd2pMy8BVlVigZGQkHg27coJGNwpTrneXNSQugaSe
 oDm9I3m/iOxfVZzD/rmwv2AgCg8LQHtUKA8lnGywdXvDHkS3hG9kPHdrVyj9sdIBMZGrw3C6X0Gr2
 xBO3UxTuH2+n2kgL+kwrOKAIAJ75RtvSKch6qqoxkkIEEYqgQZWn/2v5SIQWHACt3lUXnbXefaPUy
 Wbh5Le2fHmS+cy19e+mQ==;
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgtph-0006mq-3V
 for wireless-regdb@lists.infradead.org; Thu, 23 Feb 2017 13:53:23 +0000
Received: by mail-pf0-x244.google.com with SMTP id o64so1632955pfb.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 23 Feb 2017 05:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zv52z7XhpZYS1/cY/YCbxq92yoMnUOIhlBt0qHlbK6w=;
 b=La/QHXepi2YCaAO+Quv485eaINaBWad34mC6qRGoRLbS1AW3xFUaKEx0O7Si4zNyY9
 hjg9WUDbBhXmfJ0fogOAZpsSJpDsCRAkhcFbycfJghJ7mXnf1eFdJzkyIT6pcZTLb2PA
 ljNVfhrkUCKxCGy+EfEhJiHnDm1MsjhDd53TVNWExSX64DIACjFYevrdUvtO602Yb9+Z
 lpM+LXLfMQ/irg45wldU1u/KIy90pgpfZNAQt15KFJFIRn9Nhi/ldhStvz3ad4rsmmb+
 XCYj4MmZrOn8AYTE1OL2x5MPtcMKLx2STj8WXhKmHHx+yJ7JVzIvqZVYsYzd39WhXsPw
 Q2Lw==
From: Ryan Mounce <ryan@mounce.com.au>
Date: Fri, 24 Feb 2017 00:22:53 +1030
Message-Id: <20170223135253.1681-1-ryan@mounce.com.au>
In-Reply-To: <20170223130142.GA90803@ubuntu-hedt>
References: <20170223130142.GA90803@ubuntu-hedt>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Sourced from the current legislation at
https://www.legislation.gov.au/Details/F2016C00432

The current rules exceed legal limits between 5250-5330MHz, and permit
illegal operation in 5600-5650MHz (disallowed regardless of DFS).

Frequency ranges and EIRP limits for all ranges have been updated to
match items 59-63, 65 in the linked document. As the rules for AU have
never previously mirrored local regulations, changes include a
significant increase in the allowable 2.4GHz EIRP and smaller increases
in most other bands.

In order to allow 80MHz operation between 5650-5730MHz (bordering two
bands) the lower, more restrictive band has been rounded up by 5MHz.

Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
---
 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 05108e0..00e81b6 100644
--- a/db.txt
+++ b/db.txt
@@ -85,12 +85,17 @@ country AT: DFS-ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
+# Source:
+# https://www.legislation.gov.au/Details/F2016C00432
+# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
 country AU: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (36)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
+	(5470 - 5600 @ 80), (30), DFS
+	(5650 - 5730 @ 80), (30), DFS
+	(5730 - 5850 @ 80), (36)
+	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
 
 country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

