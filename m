Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKU-00016P-LF
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:03 +0000
Received: by mail-wi0-f181.google.com with SMTP id ex4so1117958wid.14 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i4iO6n6Rb69rSaU7UpSUSW+weCntJpJAMVnutvMKfYs=;
 b=OmRu8wInAc4unJQolHTEqbchaVzbk+mlEXvqt46N+Pz1pJCpgAVW8kPKQC/cfZ/QoG
 rWmZyr/JhmsycVtaKwbRQtEQVeVmwIDORvUJ1k/wqPfBMHmQMveMtZVCMZ5sdd99BaeM
 xB13eOsBDcii3iBQfPn9aRKkzAAOK62eJdOBvzgRLk6gYie5umGO/rVfBtdYIMOP1ixt
 8mUPMVhtMaX+sRhuZ+ACpc3uFeb1JnMv0hZlXSRKeMQjA3fsPl9mpVZ2Dvd0+qHCRIWZ
 9xDtgGAQthnOJSuVwVhr7dnUMIY4zKL/F8+SEW1z2rrfZ34PbclY2PRa50AWKwSsEoY0 /O6Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:02:59 +0100
Message-Id: <1383314598-21240-5-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 04/23] wireless-regdb: update KP's 5 GHz
	rules
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
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This:

  o splits the first 5 GHz frequency ranges into
    two frequency ranges, one with DFS requirement and
    one without
  o enables VHT80 for all 5 GHz frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 80a394a..c788681 100644
--- a/db.txt
+++ b/db.txt
@@ -462,10 +462,10 @@ country KH: DFS-ETSI
 
 country KP: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5330 @ 40), (20)
-	(5160 - 5250 @ 40), (20), DFS
-	(5490 - 5630 @ 40), (30), DFS
-	(5735 - 5815 @ 40), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5630 @ 80), (30), DFS
+	(5735 - 5815 @ 80), (30)
 
 country KR: DFS-JP
 	(2402 - 2482 @ 20), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

