Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f174.google.com ([209.85.192.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPRUU-0000Ht-QP
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 05:53:11 +0000
Received: by mail-pd0-f174.google.com with SMTP id p12so3618245pdj.5 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2013 22:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
 :in-reply-to:references; bh=bls0/9qfEmkTvkcDGC1paVZ4s6cABb5VvibP3QAzUCs=;
 b=SkxjdfEsXkPnFKDtmSctCcOoM2a2+bbffd1MQp60swMfbe+f0x6o6cdtieTIc50ZD/
 Ob6siGV+zf3jBzKvZc7F/y9yQa9nDyw8FzkgcnG+R2riKz/m1fTDdiINF6IpgcP3TKmJ
 c84UfXdnug2QAVBd2X51QSmMGhxQKL9GRaVKhGtK5dvfBh4c9oqdP/HctF19fpHcivX1
 bKPxhLgw4tBJsxyahph2xeAcBo776+45kbxE755Mc/Wsk2zZBTEOO5uhGZ41aMd32tC/
 FCwAMBkmvJMi8nihxxwQ3Nu0J62CxG2mrwZMowFGWTO5jnzxZBEpFaZNdchMtLSVKvnM aIUQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon,  8 Apr 2013 22:52:56 -0700
Message-Id: <1365486778-2336-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 1/3] wireless-regdb: enable HT40 in RU -
	Russian Federation
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
Cc: wireless-regdb@lists.infradead.org, kandala@qca.qualcomm.com, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, linux-wireless@vger.kernel.org, qca_vkondrat@qca.qualcomm.com, green@qca.qualcomm.com, yunsenw@qca.qualcomm.com
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

As per QCA the Russian Federation (RU) enables
HT40 on the 5 GHz band as follows. This has been
verified by actual product submission and product
certification.

Band [MHz]              Max BW [MHz]    Max gain        Max EIRP [dBm (mW)]
5170-5330               40              N/A             20.00 (100.00)
5650-5710               40              N/A             30.00 (1000.00)
5735.000 - 5835.000     40              N/A             30.00 (1000.00)

Prior to this we didn't have HT40 allowed on RU at all.
This patch changes this and splits the 5 GHz band into
two segments which allow two different max EIRP values.

Exact details on the 5 GHz QCA work for Russia you can
refer to this PDF:

http://lists.infradead.org/pipermail/wireless-regdb/attachments/20130125/29d3fa1f/attachment-0001.pdf

Originally submitted to the list by Michael Green.

Cc: Yunsen Wang <yunsenw@qca.qualcomm.com>
Cc: Michael Green <green@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c5861b8..2d09a3c 100644
--- a/db.txt
+++ b/db.txt
@@ -654,7 +654,9 @@ country RS:
 
 country RU:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 20), (N/A, 30)
+	(5170 - 5330 @ 40), (N/A, 20)
+	(5650 - 5710 @ 40), (N/A, 30)
+	(5735 - 5835 @ 40), (N/A, 30)
 
 country RW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

