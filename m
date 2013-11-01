Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGm-0000jl-Fa
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:13 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so4002633wgh.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rm14ow/zAyeYkU3cBAVNrcDf8X1kKSmIJgg90M63tzY=;
 b=emm9IPKFo+gNFqT3Uo42Sew66HGJQ/nA4PmBci2XmoPl0lmnfEWer+lGFhQkn58b40
 18SfwRRMZ2mwko74mwsVFykQX4YHv+LaWsL5OtlRHoisQAUfglUdsHDt7b4eWIubErmC
 Mj0jsKvZ6PR9cnnuWOh/a0yglyTof+V6GLpBY0Zk8i2U1BtQYyByOgxvWbwWFONFbx1E
 U/n6AZr5tkJI1RtIO8D8bq9EZq+gGxXfdQQIoWC+Zf+1UZDGs5POepANX5QHrst74VcY
 6DjNoJwBG7JtalUOZKdcupzYftHwHSDVvtvZVD4jJ7UA8e8RFft11Vzs/rc4U1UPZAOb tvTA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:42 +0100
Message-Id: <1383314275-20960-53-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 52/65] wireless-regdb: add VHT80 rules for
	ZW
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
index 82219e5..91e8871 100644
--- a/db.txt
+++ b/db.txt
@@ -833,4 +833,7 @@ country ZA: DFS-ETSI
 
 country ZW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

