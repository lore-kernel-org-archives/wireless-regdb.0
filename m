Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNlo2-0002q3-UO
 for wireless-regdb@lists.infradead.org; Fri, 27 Apr 2012 14:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=rmanohar@qca.qualcomm.com;
 q=dns/txt; s=qcdkim; t=1335535554; x=1367071554;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=/fHr7pGgEn7ZA/+RgJMwh+Nw04ld8nvF0jvjvwuj/dI=;
 b=bfzNi9pEiQQMnlt6r7S9fIGTcaCns9YGE/rLaa4gNxLWTvJkB2noQZYh
 kXEQsCDd6XzLMNVRJObdZX2Rou9/jGAz1qT3+ZunEEKBMk5dZfTO+cHOj
 ECagUDYp6u2xHuFAeC7MF7PrcaVT7WWNKq8XLwvGww/GASCnPETiBef/P s=;
From: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Date: Fri, 27 Apr 2012 19:36:45 +0530
Message-ID: <1335535605-10485-1-git-send-email-rmanohar@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: add Rwanda (RW)
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

As per the Rwanda regulatory guidelines, the following bands are
designated for ISM applications.

2400-2500 MHz (centre frequency 2 450 MHz)
5725-5875 MHz (centre frequency 5 800 MHz)

Ref: www.rura.gov.rw/publication/ISMbandguidelines.pdf

Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
---
v2: updated commit log
 db.txt |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 23b85a3..4c54543 100644
--- a/db.txt
+++ b/db.txt
@@ -580,6 +580,10 @@ country RU:
 	(2402 - 2482 @ 40), (N/A, 20)
 	(5735 - 5835 @ 20), (N/A, 30)
 
+country RW:
+	(2402 - 2482 @ 40), (N/A, 20)
+	(5735 - 5835 @ 40), (N/A, 30)
+
 country SA:
 	(2402 - 2482 @ 40), (N/A, 20)
 	(5170 - 5250 @ 20), (3, 23)
-- 
1.7.10


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

