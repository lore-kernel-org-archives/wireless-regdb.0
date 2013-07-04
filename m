Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2F-0002zQ-4Y
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:35 +0000
Received: by mail-pa0-f53.google.com with SMTP id tj12so764224pac.40 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ULKtfc2Nbw3BghO2DVu1QrLkpskRgU5ZgPyW4xyjU18=;
 b=cQqUxMGJT8svihEG38OFPh2r/nkAoxOxTBKuvT89Wez3sE3RLj2seCB+9o6OfRwNrB
 CSGUBEumkf2Gt8sDEqX4FFgwHQFZXmBZFsI3v3fwpNDykM5mYA17mTSmLlNV6j7ZORdM
 eitoqrnQo5SdXzWMwG+XsWEuC42mC3ZWHFByErzFEU098Bhltvd1Ux3v5Q8OjB+PZZsQ
 BlGANOQCMudqvonj1gsTUmaJ2RJDqwvCjv02Wkmcf0GN+b1hVaxQTXwi4315ozrgJCZA
 rPmFOWXsLRZSLInlU+HcYkTJz2QHpPqq1H1ZmYod3uUa9HqVkCR0AtOfbgC0BK3rIfoi m7PQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:41 -0700
Message-Id: <1372899889-19183-46-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 45/53] wireless-regdb: MY,
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
index 16d9f8c..fa8502c 100644
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

