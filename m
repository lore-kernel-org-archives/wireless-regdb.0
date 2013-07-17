Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOI-0006In-9L
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:55 +0000
Received: by mail-pd0-f182.google.com with SMTP id r10so1307828pdi.13 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=i1RaeMxjJhgTG/YWoMd5aGwBvfEVyzv/OqEYUQxBmx4=;
 b=sus1acsnadWQrVCDayvJOsJ3hDWkYHi9qJ9dab7UwsLqqsrMevHnBay1ujvWMFa/Kf
 sB1+fC34CD70n3XOUHsUGQWzxQrAz+apUnbaq/LjYQJ8HkETL+FjcNC/I4+EnwhBdlNX
 nDgBa0swL/CwDYpSTWWNu21rcHtOrQ4npdcpb6wZAGhVE8lduzdO9DfxFG0YYU9/vOM/
 RsSgyagoh1QI9piufteFTlm+RvsM6FVnlHG+w2Wi5zBYoAaXgDjURHlavPytFY1JX5Po
 CW5wCDtB4JUeI/j8DygvpdKvj2dx8RJEgDrBLunKOoy2nko9o/TsR/EeTyxkU0c9VP3z eZrA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:34 -0700
Message-Id: <1374027522-18488-46-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 45/53] wireless-regdb: MY,
	Malaysia - enable VHT80
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

This enables 80 MHz bandwidth usage on 5 GHz, updates the
max EIRP and adds a new 5 GHz range:

  * 5170 - 5250 MHz

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index acb9358..c626a48 100644
--- a/db.txt
+++ b/db.txt
@@ -548,8 +548,9 @@ country MT: DFS-ETSI
 
 country MY:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 30), DFS
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5170 - 5250 @ 80), (N/A, 17)
+	(5250 - 5330 @ 80), (N/A, 23), DFS
+	(5735 - 5835 @ 80), (N/A, 30)
 
 country MX:
 	(2402 - 2472 @ 40), (3, 27)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

