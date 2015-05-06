Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpnrY-0006C2-SJ
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 01:11:01 +0000
Received: by pacyx8 with SMTP id yx8so210560589pac.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 18:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4HwSySWw5JnsEMvvJ2U5lk43T7RjD1ROK1Vv0YFGmpg=;
 b=VlHpKS0nt+eXyp+oTLwwiAYSw2/Kbn80QKddnKkva+x9bU+2UqPAtoS3lo4Us+DrEs
 EZMXk0Mu9v9jvRyaywT6QO0efACeIR9Fdwd23uwFAwKHFvJVn7A58x1UTgMK2/JpyKz3
 +t+JidbwzRNXckRWlhcb324WK4o9DF5C6XiVMUN43CP9ivamvblw44YNuwTLnJqxzjRq
 iJfbeeSRIbLORkfrlpnd1hrX2pGSoNSpc6UDGXOylhI5j5C1/wbPPpWhrD/y9pj9zJDU
 Ii2F+nehbHIleO/BWorsh7XVSs6yHWCLx3SXlMao1HQkCWNRfn0Ss7NlheH/Y59sUptR KZgQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  5 May 2015 17:44:29 -0700
Message-Id: <1430873070-7290-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC v1 11/12] iwlwifi: use
 sysdata_file_request() and sysdata_file_request_async()
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

Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 drivers/net/wireless/iwlwifi/iwl-drv.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/net/wireless/iwlwifi/iwl-drv.c b/drivers/net/wireless/iwlwifi/iwl-drv.c
index c7154ac..f20bda9 100644
--- a/drivers/net/wireless/iwlwifi/iwl-drv.c
+++ b/drivers/net/wireless/iwlwifi/iwl-drv.c
@@ -65,6 +65,7 @@
 #include <linux/completion.h>
 #include <linux/dma-mapping.h>
 #include <linux/firmware.h>
+#include <linux/sysdata.h>
 #include <linux/module.h>
 #include <linux/vmalloc.h>
 
@@ -202,7 +203,7 @@ static int iwl_alloc_fw_desc(struct iwl_drv *drv, struct fw_desc *desc,
 	return 0;
 }
 
-static void iwl_req_fw_callback(const struct firmware *ucode_raw,
+static void iwl_req_fw_callback(const struct sysdata_file *ucode_raw,
 				void *context);
 
 #define UCODE_EXPERIMENTAL_INDEX	100
@@ -212,6 +213,9 @@ static int iwl_request_firmware(struct iwl_drv *drv, bool first)
 {
 	const char *name_pre = drv->cfg->fw_name_pre;
 	char tag[8];
+	const struct sysdata_file_desc fw_desc = {
+		SYSDATA_DEFAULT_ASYNC(iwl_req_fw_callback, drv),
+	};
 
 	if (first) {
 #ifdef CONFIG_IWLWIFI_DEBUG_EXPERIMENTAL_UCODE
@@ -256,9 +260,8 @@ static int iwl_request_firmware(struct iwl_drv *drv, bool first)
 				? "EXPERIMENTAL " : "",
 		       drv->firmware_name);
 
-	return request_firmware_nowait(THIS_MODULE, 1, drv->firmware_name,
-				       drv->trans->dev,
-				       GFP_KERNEL, drv, iwl_req_fw_callback);
+	return sysdata_file_request_async(drv->firmware_name, &fw_desc,
+					  drv->trans->dev);
 }
 
 struct fw_img_parsing {
@@ -453,7 +456,7 @@ static int iwl_set_ucode_capabilities(struct iwl_drv *drv, const u8 *data,
 }
 
 static int iwl_parse_v1_v2_firmware(struct iwl_drv *drv,
-				    const struct firmware *ucode_raw,
+				    const struct sysdata_file *ucode_raw,
 				    struct iwl_firmware_pieces *pieces)
 {
 	struct iwl_ucode_header *ucode = (void *)ucode_raw->data;
@@ -554,7 +557,7 @@ static int iwl_parse_v1_v2_firmware(struct iwl_drv *drv,
 }
 
 static int iwl_parse_tlv_firmware(struct iwl_drv *drv,
-				const struct firmware *ucode_raw,
+				const struct sysdata_file *ucode_raw,
 				struct iwl_firmware_pieces *pieces,
 				struct iwl_ucode_capabilities *capa)
 {
@@ -1051,7 +1054,8 @@ static void _iwl_op_mode_stop(struct iwl_drv *drv)
  * If loaded successfully, copies the firmware into buffers
  * for the card to fetch (via DMA).
  */
-static void iwl_req_fw_callback(const struct firmware *ucode_raw, void *context)
+static void iwl_req_fw_callback(const struct sysdata_file *ucode_raw,
+				void *context)
 {
 	struct iwl_drv *drv = context;
 	struct iwl_fw *fw = &drv->fw;
@@ -1210,7 +1214,7 @@ static void iwl_req_fw_callback(const struct firmware *ucode_raw, void *context)
 			IWL_MAX_STANDARD_PHY_CALIBRATE_TBL_SIZE;
 
 	/* We have our copies now, allow OS release its copies */
-	release_firmware(ucode_raw);
+	release_sysdata_file(ucode_raw);
 
 	mutex_lock(&iwlwifi_opmode_table_mtx);
 	if (fw->mvm_fw)
@@ -1262,7 +1266,7 @@ static void iwl_req_fw_callback(const struct firmware *ucode_raw, void *context)
 
  try_again:
 	/* try next, if any */
-	release_firmware(ucode_raw);
+	release_sysdata_file(ucode_raw);
 	if (iwl_request_firmware(drv, false))
 		goto out_unbind;
 	kfree(pieces);
@@ -1271,7 +1275,7 @@ static void iwl_req_fw_callback(const struct firmware *ucode_raw, void *context)
  out_free_fw:
 	IWL_ERR(drv, "failed to allocate pci memory\n");
 	iwl_dealloc_ucode(drv);
-	release_firmware(ucode_raw);
+	release_sysdata_file(ucode_raw);
  out_unbind:
 	kfree(pieces);
 	complete(&drv->request_firmware_complete);
-- 
2.3.2.209.gd67f9d5.dirty


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

