Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypnh2-0006GK-Qu
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 01:00:10 +0000
Received: by pdbnk13 with SMTP id nk13so214146868pdb.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 17:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X54ARt02yfQsUDceA11m1vbzmG3F35PJBlzFsbbjOHo=;
 b=HKVQRaXv5woRab3VeZIIb02YoK1tq2eDh0LeexqWvbLRXeAszrrp/+VwOYmN3U/5An
 D51QsOajGhiLPyt3zfS9W1gO68cxwuqx13/Pt/BFQt/+R50gN/DN3mjxL4Xwc2Vr8AuH
 K8boEZIDMvRLhQ9KBDdv8FIbdBBlNJwSosTtcM6q/i/IWFFsytHDLP2iqdIgdu70FgqD
 196VddBu2lahxR6hBiIf4yk7SurTciek9pwRq4yMPWbqyvXTIxkzBQ4bJO8YV7l1qQv8
 G2PUZW2LUsyevC6LSrOnZ/ta7X+uMa7dfepPpY9DuXFWsY9jMOk182wD6O/Dy6UzKjTg Cb2g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  5 May 2015 17:44:24 -0700
Message-Id: <1430873070-7290-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC v1 06/12] firmware: generalize "firmware" as
	"system data" helpers
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

Historically firmware_class code was added to help
get device driver firmware binaries but these days
request_firmware*() helpers are being repurposed for
general system data needed by the kernel.

Annotate this before we extend firmare_class more,
as this is expected. We want to generalize the code
as much as possible.

Cc: Rusty Russell <rusty@rustcorp.com.au>
Cc: David Howells <dhowells@redhat.com>
Cc: Ming Lei <ming.lei@canonical.com>
Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: Kyle McMartin <kyle@kernel.org>
Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 drivers/base/firmware_class.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/base/firmware_class.c b/drivers/base/firmware_class.c
index 65fcf2d..55091b4 100644
--- a/drivers/base/firmware_class.c
+++ b/drivers/base/firmware_class.c
@@ -346,7 +346,7 @@ static int fw_get_filesystem_firmware(struct device *device,
 		rc = fw_read_file_contents(file, buf);
 		fput(file);
 		if (rc)
-			dev_warn(device, "firmware, attempted to load %s, but failed with error %d\n",
+			dev_warn(device, "system data, attempted to load %s, but failed with error %d\n",
 				path, rc);
 		else
 			break;
@@ -354,7 +354,7 @@ static int fw_get_filesystem_firmware(struct device *device,
 	__putname(path);
 
 	if (!rc) {
-		dev_dbg(device, "firmware: direct-loading firmware %s\n",
+		dev_dbg(device, "system data: direct-loading firmware %s\n",
 			buf->fw_id);
 		mutex_lock(&fw_lock);
 		set_bit(FW_STATUS_DONE, &buf->status);
@@ -1063,7 +1063,7 @@ _request_firmware_prepare(struct firmware **firmware_p, const char *name,
 	}
 
 	if (fw_get_builtin_firmware(firmware, name)) {
-		dev_dbg(device, "firmware: using built-in firmware %s\n", name);
+		dev_dbg(device, "system data: using built-in system data%s\n", name);
 		return 0; /* assigned */
 	}
 
-- 
2.3.2.209.gd67f9d5.dirty


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

