Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOX-0006K2-Mr
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:10 +0000
Received: by mail-pa0-f53.google.com with SMTP id tj12so1429485pac.12 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=n0y75EwENDfBLTsQMHUvVxsBJdf97wvWWlM1xPV9afk=;
 b=fJ9rf1p/etKWn4HVZVzZsXWHMT+NLPAY/CpWRUJTZwjOSQ65yEcZlCsh11hPmSqbDn
 LZS7eYmAbpXGK3YEcFR9Cbbs5jxco1iBwzUxPDiQAGeZ0s3pPCvOw0oEjtePBneCIbyg
 wobFNc5wQJQulEgB1C1V0/XiZRrKPPMrJOC1CUpWhUrf05dKTUPgFxc5/7HcA04aVIW4
 M2jw88k1kEvM1keAtSEECACb37TEhsotdm3UAwGTCstHRs4sWep8/BXoIIDfZKYHtOFh
 QBNYl0bgS5WhzCxhp2QCppnDdXlyedxqdUkNCtCUjwLBdjVZgy/lA9+eNW1J0uAPLWpk /fXw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:36 -0700
Message-Id: <1374027522-18488-48-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 47/53] wireless-regdb: enable HT40 in RU -
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
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

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c76131b..0815e6e 100644
--- a/db.txt
+++ b/db.txt
@@ -672,7 +672,9 @@ country RS:
 
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

