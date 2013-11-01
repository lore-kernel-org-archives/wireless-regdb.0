Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGe-0000fu-9c
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:04 +0000
Received: by mail-wi0-f181.google.com with SMTP id ex4so1112123wid.14 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c+fJygPR5CMetSaZ0hVxnqyuTpFCIctZXYha8o5gDMc=;
 b=n0fc+kqBMM/L0QBaKvlJJvuDBTH6THapO6VgpAElZLFV1H7+/PLLs80RkKFcW3Vlzg
 mv4HrEUzq388msV1sBTsAWRQoe+Rt2IJMbpgE5CJw28wGPKyaimPYBHUpFcsLtwdMZrZ
 vLAW63KjLSWYu2NUF7qw/S9XbFjJx8qqPPrmmuBrXt5QnXZcYqfTuY2vJ8F5JI80j/wt
 X9wIqqutXBFI3xYR7iTZXnBZ8e2kp/zLTXRPDtO79ckH/0ULFhW+bLSJ4qGtlO3fqJ0x
 xHP1Rnnf24osnF8V+E30PlaE2xZfODvIFThMV1sl5EfSD42Yo7UsuMGMVijck3q+/ZZU 3Qbg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:36 +0100
Message-Id: <1383314275-20960-47-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 46/65] wireless-regdb: add VHT80 rules for
	AL
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
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 50307eb..68e896c 100644
--- a/db.txt
+++ b/db.txt
@@ -27,6 +27,9 @@ country AE: DFS-FCC
 
 country AL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20.00)
+	(5250 - 5330 @ 80), (20.00), DFS
+	(5490 - 5710 @ 80), (27.00), DFS
 
 country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

