Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGk-0000hg-Q1
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:11 +0000
Received: by mail-wg0-f43.google.com with SMTP id b13so4096875wgh.22 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iuBlYcLJyJ5mKLwGHCbZon+TrZmzhbBMRkjHCKW1oGQ=;
 b=TRz3o10pldE9twVj/OaQLcI3w9aduQuNcPf9hl/ejQFoyO82qJXNHGRAcTja7seOpl
 XmWcTs1qa2dgHYQOXsOkGlB09L8wxNxPsnlcBzCZyfojpgJGrlRiTLGWFDoPVMJqldnf
 TViM6HPa/CfPvwQqbAVUUH0S6twM4ph0D+SdUjKzJfSIMUSfhmak6t1AE4fePoR6S7ET
 iUnIh7vgd5nI35OXEolerlaOSQ0xXDq63I77kidWwovYH4dJBbf1WalYRWNbpQ1HtOgs
 KcfZlqTE5hw0tsgFaTbN8EUe8yAR2G1pZbGphU8fQS5k1X2ZlZ5c8q5ZMTEwWrP2OTVd Xzug==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:39 +0100
Message-Id: <1383314275-20960-50-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 49/65] wireless-regdb: add VHT80 rules for
	CN
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
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 551fe14..4ce2017 100644
--- a/db.txt
+++ b/db.txt
@@ -170,6 +170,8 @@ country CL: DFS-JP
 
 country CN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (23)
+	(5250 - 5330 @ 80), (23), DFS
 	(5735 - 5835 @ 80), (30)
 	# 60 gHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

