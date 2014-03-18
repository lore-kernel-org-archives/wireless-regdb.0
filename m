Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x235.google.com ([2607:f8b0:400e:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQ2Cl-0000Ap-TQ
 for wireless-regdb@lists.infradead.org; Tue, 18 Mar 2014 22:09:53 +0000
Received: by mail-pb0-f53.google.com with SMTP id rp16so7925039pbb.12 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Mar 2014 15:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=ChxE/gQ82T8D6+IBNE5CNx2hB1g+UIZFhZN7l1qP0YM=;
 b=W2lw3EY4VxvSq2BF7o7iPZ6xxdmtqg+aL6rNhi8kZ4UavqSUwuWE2y+hyFQsOVAq2g
 jcGR9dqPEODn6twUmfivba/XgcxV/n2BzhlXGW00kkGEOXPymby0NUWh6u21kMyhNu3n
 LaPh3o/2k4z43NVapPg8hJU6/1ImqrDK+zwe84uDuGcNIdhj9JnKOol7AMJT/sKT7PCS
 YPcFqo44ssQQlLr/hB6xwSncKmd0daR/xI9+zw+KEio9UGFxEBPUHJphiHg2OEQFNDf/
 pyuzOufgMkOd23+0dyjGHFYslrxtKhxSjY2xPFV5CJG9trxYpkw00Rec+pmr1N4dD3hy FvaQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 18 Mar 2014 15:07:14 -0700
Message-Id: <1395180434-28349-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH] rel-html: add wireless-regdb project page
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
To: linux-wireless@vger.kernel.org
Cc: Jouni Malinen <j@w1.fi>, Michael Green <green@qca.qualcomm.com>, "Luis R. Rodriguez" <mcgrof@suse.com>, wireless-regdb@lists.infradead.org, Andy Davidson <adavidso@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@suse.com>

Since I relicensed CRDA to the copyleft-next license lets make
it crystal clear wireless-regdb is a separate project project
under the ISC license with its dedicated separate documentation
and own release page.

http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb

Cc: Jouni Malinen <j@w1.fi>
Cc: Michael Green <green@qca.qualcomm.com>
Cc: Andy Davidson <adavidso@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 projects/wireless-regdb.cfg | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 projects/wireless-regdb.cfg

diff --git a/projects/wireless-regdb.cfg b/projects/wireless-regdb.cfg
new file mode 100644
index 0000000..7b14d78
--- /dev/null
+++ b/projects/wireless-regdb.cfg
@@ -0,0 +1,27 @@
+[project]
+rel_html_proj           = wireless-regdb
+supported =
+	2013.11.27
+rel_html_url_releases	= http://kernel.org/pub/software/network/wireless-regdb/
+rel_license 		= ISC
+ignore_changelogs	= True
+
+[html]
+title = wireless-regdb: Linux Wireless Regulatory Database
+
+nav_01_url = http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
+nav_01_txt = Documentation
+
+# XXX: Note: two % added here to help with what seems to be a python ConfigParser.py bug.
+#      We should address this eventually.
+nav_02_url = http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
+nav_02_txt = Bugs
+
+nav_03_url = http://lists.infradead.org/mailman/listinfo/wireless-regdb
+nav_03_txt = Mailing List
+
+release_title = Latest wireless-regdb release
+
+about_title = About wireless-regdb
+about = wireless-regdb provides the database and tools to build the database
+	read by CRDA to provide regulatory domains to the Linux kernnel.
-- 
1.8.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

