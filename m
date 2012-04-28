Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SO16h-0002YO-Sy
 for wireless-regdb@lists.infradead.org; Sat, 28 Apr 2012 06:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=rmanohar@qca.qualcomm.com;
 q=dns/txt; s=qcdkim; t=1335594371; x=1367130371;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=Yd7MNYpVDMQ1qZVFoR35/4OTnxpRcX3gI73dfKBDOec=;
 b=ov5oao3LNb2z3ctiXsrx6Hq4rw/nVg/pES2q9Z/lloYlyjhF1CRhB6w9
 x9K3FuBU3jfRS2i8O7ghWtrreYQsUafMYjTq12K8C1vz3IzdDhQ5AeuZl
 PRn5UkRXi21AB4III30G/6RXMerVozCCC8B+ZAJpAL9gTWYROmYEjSLFf g=;
From: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Date: Sat, 28 Apr 2012 11:57:00 +0530
Message-ID: <1335594420-1878-1-git-send-email-rmanohar@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add Rwanda (RW)
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

As per the Rwanda regulatory guidelines, the following bands are
designated for ISM applications.

2400-2500 MHz (centre frequency 2 450 MHz)
5725-5875 MHz (centre frequency 5 800 MHz)

Ref: www.rura.gov.rw/publication/ISMbandguidelines.pdf

Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
---
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

