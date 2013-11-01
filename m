Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHO-0000qq-Fg
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:50 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1115128wid.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x5q3QmYCf6lW+TmV5LcU4n1zyNjFj99f15KXQPLuWQY=;
 b=WN446bf4evtJlvgr9olEl92mvrZtm8nc6p0jQJzdxGu7mDq2vIWCL3InJTcUi1Z8OS
 daDfC8O9laXkKMcxWNzJuTURWlR59MFZKrp9Hd5EhgKdshtiGvXatAWZ1dwfDK5U2pI2
 3nOXeHZV5wnIz/en8eToojUqrKVxffaoJ6s/j294BRkT9QM2yZavfc5sxXSS9u2bcc7M
 EiySeHkHSKQ2aT0eon2fm/OpJSRuofq0zZqq9RSYUml01WaHltz6+T2alD0wMfpWj00u
 YSxLTdBgLwY9zBnZRoQP060rMEAzrPmmAfejgkT+X7ByxnyEeIvBRDOtRlo/gC/+d1Ns drKQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:52 +0100
Message-Id: <1383314275-20960-63-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 62/65] wireless-regdb: extend 5 GHz range
	for PH
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 4519782..17e679b 100644
--- a/db.txt
+++ b/db.txt
@@ -625,7 +625,7 @@ country PH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country PK: DFS-JP
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

