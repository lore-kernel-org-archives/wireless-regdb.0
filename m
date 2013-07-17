Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHNu-0006FQ-4u
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:31 +0000
Received: by mail-pa0-f49.google.com with SMTP id ld11so1411291pab.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=AGH4bHcgSOqgr+CMk61arEpYBolJ7PS63rMS/XlGRB8=;
 b=Lc/rW/LsEzFM6mq7Ex7lIXCLXRrGUJuh0mnB/M39fE0BY4UCNDq6HgphVwwyKbA/UT
 fPV1io0Hcd49tcDVlsVOViCy0tBt32XLBk0/joJn048kBpgCskpuyHjy9BXraxD19zvI
 p35hDQeS/FWrw8c3KW7+IHEBrsd/RNQ7t1NVa+SNB6U9EYEEf8NCXqSUXWpER78mfDqU
 y2k9NZX9IEU01xN3zCKP9ZF1xCIHF4leVfcUuFYl+forlKt8qO4s4aogyBOM/nXsXHJR
 wxDeb1vF3r1SP+iFl9RYiPtNDruclguQTOqn6y0llnU9GXUAiCnIqJEyCDSzfVtLUpod G9Fg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:28 -0700
Message-Id: <1374027522-18488-40-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 39/53] wireless-regdb: CN,
	China - enable VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enable 80 MHz on the 5 GHz band.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 4f2d4e7..ead6646 100644
--- a/db.txt
+++ b/db.txt
@@ -164,7 +164,7 @@ country CL:
 
 country CN:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5735 - 5835 @ 80), (N/A, 30)
 	# 60 gHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
 	(57240 - 59400 @ 2160), (N/A, 28)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

