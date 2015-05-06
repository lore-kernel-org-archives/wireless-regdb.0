Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypntg-0006QU-Ku
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 01:13:13 +0000
Received: by pdbqd1 with SMTP id qd1so214469788pdb.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 18:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C2PJMmEUt4mnc0h6tGl2XaQ7tedOEReXaVQ84TfATAw=;
 b=rxl9uZlSIElXrVCyWETCXEH3epYk0/uuB9cl5xaSgi/eGnukk5/KWmvDT1QjW4Ek2o
 Tt4UsKhvoybW6C1MKgJr/ntnx2ZffRxYdlMjmW+Ws3WSlUPKK2e+25qiWVNY048eS1WT
 Qxo7mhRtctoNMzZPd2yb5N5NIeZZj9Rf4cXbnrviS/s9EYmzb/FX0Oo1G5mdvwO0g1++
 xceD3aj1kGGHuW57dNuSwLcYJmEw7D/DJL+9l1burMWEvPZyB2QfuAw2M29Pojv9CcZO
 2y4kSAGhYVUzH3OWsdo3q3WvoLHOhdVzkOAjindWAx4YfKLfG2J0S3qCpUU1CsXBy6ab VXtw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  5 May 2015 17:44:30 -0700
Message-Id: <1430873070-7290-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC v1 12/12] cfg80211: request for regulatory
	system data file
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
To: rusty@rustcorp.com.au, dhowells@redhat.com, ming.lei@canonical.com, seth.forshee@canonical.com, kyle@kernel.org
Cc: mjg59@srcf.ucam.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, tiwai@suse.de, gregkh@linuxfoundation.org, "Luis R. Rodriguez" <mcgrof@suse.com>, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, jlee@suse.com, casey@schaufler-ca.com, akpm@linux-foundation.org
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@suse.com>

With sysdata_file_request_*() helpers in places we
don't need CRDA anymore, we can just request for the
regulatory file we need from within the kernel with
the kernel's configuration preferences for
cryptographic requirements.

-- this patch is incomplete still, it doesn't have
   any optional key preferences yet. This needs
   discussion.

Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 net/wireless/Kconfig | 20 +++++++++++++
 net/wireless/reg.c   | 85 ++++++++++++++++++++++++++++++++++++++++++----------
 2 files changed, 89 insertions(+), 16 deletions(-)

diff --git a/net/wireless/Kconfig b/net/wireless/Kconfig
index 29c8675..1610d30 100644
--- a/net/wireless/Kconfig
+++ b/net/wireless/Kconfig
@@ -152,6 +152,26 @@ config CFG80211_DEBUGFS
 
 	  If unsure, say N.
 
+config CFG80211_REGDB_SYSDATA
+	default y
+	bool "Request binary regulatory database from userspace"
+	depends on CFG80211
+	---help---
+	  This allows cfg80211 to look for updates to the regulatory
+	  database from /lib/firmware/ without needing a userspace
+	  agent such as CRDA.
+
+	  You should say y.
+
+config CFG80211_REGDB_SYSDATA_SIGNED
+	default y
+	bool "Require the regulatory database to be digitally signed"
+	depends on CFG80211 && CFG80211_REGDB_SYSDATA
+	---help---
+	  This makes cfg80211 only trust signed regulatory database files.
+
+	  You should say y.
+
 config CFG80211_INTERNAL_REGDB
 	bool "use statically compiled regulatory rules database" if EXPERT
 	default n
diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index 48dfc7b..70a1be8 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -1,21 +1,39 @@
 /*
- * Copyright 2002-2005, Instant802 Networks, Inc.
- * Copyright 2005-2006, Devicescape Software, Inc.
- * Copyright 2007	Johannes Berg <johannes@sipsolutions.net>
- * Copyright 2008-2011	Luis R. Rodriguez <mcgrof@qca.qualcomm.com>
- * Copyright 2013-2014  Intel Mobile Communications GmbH
+ * Linux 802.11 regulatory
  *
- * Permission to use, copy, modify, and/or distribute this software for any
- * purpose with or without fee is hereby granted, provided that the above
- * copyright notice and this permission notice appear in all copies.
+ * Copyright 2015 Luis R. Rodriguez <mcgrof@do-not-panic.com>
  *
- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
- * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
- * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
- * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; see the file COPYING.  If not, see
+ * http://www.gnu.org/licenses/.
+ *
+ * This file was previously licensed under the following license:
+ *    Copyright 2002-2005, Instant802 Networks, Inc.
+ *    Copyright 2005-2006, Devicescape Software, Inc.
+ *    Copyright 2007       Johannes Berg <johannes@sipsolutions.net>
+ *    Copyright 2008-2011  Luis R. Rodriguez <mcgrof@do-not-panic.com>
+ *    Copyright 2013-2014  Intel Mobile Communications GmbH
+ *
+ *    Permission to use, copy, modify, and/or distribute this software for any
+ *    purpose with or without fee is hereby granted, provided that the above
+ *    copyright notice and this permission notice appear in all copies.
+ *
+ *    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ *    WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ *    MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ *    ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ *    WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ *    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ *    OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
  */
 
 
@@ -53,6 +71,7 @@
 #include <linux/nl80211.h>
 #include <linux/platform_device.h>
 #include <linux/moduleparam.h>
+#include <linux/sysdata.h>
 #include <net/cfg80211.h>
 #include "core.h"
 #include "reg.h"
@@ -73,6 +92,8 @@
  */
 #define REG_ENFORCE_GRACE_MS 60000
 
+const struct sysdata_file *regulatory_sysdata;
+
 /**
  * enum reg_request_treatment - regulatory request treatment
  *
@@ -3079,9 +3100,33 @@ bool regulatory_indoor_allowed(void)
 	return reg_is_indoor;
 }
 
+static void reg_sysdata_complete(const struct sysdata_file *sysdata,
+				      void *context)
+{
+	const char *reason = context;
+
+	pr_info("Processing regulatory data request from: %s", reason);
+
+	if (!sysdata) {
+		pr_info("no new regulatory data not available\n");
+		return;
+	}
+
+	if (sysdata->data) {
+		pr_info("XXX: sysdata for reguatory present: size: %d\n",
+		       (int) sysdata->size);
+	} else
+		pr_info("XXX: sysdata not present :(\n");
+
+	regulatory_sysdata = sysdata;
+}
+
 int __init regulatory_init(void)
 {
 	int err = 0;
+	const struct sysdata_file_desc sysdata_desc = {
+		SYSDATA_DEFAULT_ASYNC(reg_sysdata_complete, "initial boot"),
+	};
 
 	reg_pdev = platform_device_register_simple("regulatory", 0, NULL, 0);
 	if (IS_ERR(reg_pdev))
@@ -3120,7 +3165,13 @@ int __init regulatory_init(void)
 		regulatory_hint_user(ieee80211_regdom,
 				     NL80211_USER_REG_HINT_USER);
 
-	return 0;
+	err = sysdata_file_request_async("regulatory.bin",
+					 &sysdata_desc,
+					 &reg_pdev->dev);
+	if (err)
+		platform_device_unregister(reg_pdev);
+
+	return err;
 }
 
 void regulatory_exit(void)
@@ -3155,4 +3206,6 @@ void regulatory_exit(void)
 		list_del(&reg_request->list);
 		kfree(reg_request);
 	}
+
+	release_sysdata_file(regulatory_sysdata);
 }
-- 
2.3.2.209.gd67f9d5.dirty


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

