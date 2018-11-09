Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=WxQ+32SRQq9hrDAs7EAi84l5X1TVToG8idudci+D1rs=;
 b=BmJOhwNUsYy40d
 k+yghcJOR6/ieZ7Cq65oh/5j39a6oYZcKbT4iC54fAUvARUxtLvmrSI+qdsdCDNlkbPVYxDDeT2JS
 /BI7tU8GyTT6HgSzz480+/NMVTUDCf/Nw7o+Lrg3uT5bMcvY4x+a6uiVcj8gQRWN5UD/UQOkPPiJ6
 PG96Uvvk1fGsnM9MgsVkDFJDI1x7OCZn0DhYQEOyw8DPGJHn/dW8Bl4XM4aId+RPVROdvjVomVOFa
 B7fjh+Nf0N+qCgbf4DY3BkSOb3ueLPZNqehyS+azsC608ktwqwSMdDJXmD/uEJPTa2cQidcd6WvJD
 bIKEpCYcxuTlRh1+/P7w==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gLAIT-0003b4-7f
 for wireless-regdb@lists.infradead.org; Fri, 09 Nov 2018 17:10:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id v18-v6so2659330wrt.8 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 Nov 2018 09:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bFBjKgQGl0cRNFwN3OT7IPyacTUidwjy0UJ+CuB04T0=;
 b=cR4GtMpfByhcVDn6hVQB8o2xMkAR5KFzWXu0tRIiNh+4cJjKo4rD1loBMlMvalDRq3
 ovsKCerWtkA5L8YvijMAzmBwkUE9spZj+y9VXNhoQsNrAFm0ZLHNK0v+5F7PZ4HcBoyF
 Elfsk2DurLDxYhj9WpyvaXzeW7gIsrI4RkgHwgwWVanQSLIwGlD7rJlHFQxjrLVoubbb
 lBI+b5unkpgnzeXeaeGZIp39rdup1FoG5ahfG1ZOXyoEg05VG1T2LQUj0LWZ8Kbz++Ky
 aVfYdRo6s5piivKk5b/Z0zNVkLezAJgj22pXfRgTwT2oNxW07A+To15uY7xEZvl7pJA8 jVAA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Fri,  9 Nov 2018 18:10:03 +0100
Message-Id: <20181109171003.27069-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add URLs in README
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 README | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 4028223..4a059de 100644
--- a/README
+++ b/README
@@ -1,3 +1,7 @@
+ wireless-regdb
+================
+<https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb>
+
 This repository contains the plain text version of the regulatory
 database file I maintain for use with Central Regulatory Database
 Agent daemon.  Also included is the compiled binary version of this
@@ -9,6 +13,7 @@ either expressed or implied.
 Also included are the tools used to compile and sign the regulatory.bin
 file as well as a MoinMoin macro used for viewing the database.
 
+
  TECHNICAL INFORMATION
 =======================
 
@@ -21,9 +26,13 @@ to allow viewing the database for verification.
 The dbparse module is also used by db2bin.py and db2fw.py, the `compilers'
 that compile the database to its binary formats.
 
-For more information, please see the CRDA git repository:
+For more information, please see the CRDA page:
+
+	https://wireless.wiki.kernel.org/en/developers/regulatory/crda
+
+and the full description of the Linux regulatory stack:
 
-	git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/crda.git
+	https://wireless.wiki.kernel.org/en/developers/regulatory
 
 John W. Linville
 17 November 2008
-- 
2.19.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

