Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x231.google.com ([2607:f8b0:400e:c02::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypnaj-0003py-RJ
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 00:53:38 +0000
Received: by pdbqd1 with SMTP id qd1so214034793pdb.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 17:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XKOInj4TdJ0Xv5TeyQIOLKJcUAbK2iQRhfWP9okNkp4=;
 b=bblGu4X/Aawwc/AsBpZdS2TpJgBEMOMjzpSMQm9p54sekdA01SVmceLMjoRI5UJn8q
 q7fugdye7egBI5sItJpaFqgsaN8jWYZMg6sqQ0bY0SuKmmYYuin19VFaXt9BE0vp/RcQ
 yifjupGv5uHycbpDFKrfuH84b8GwJ26e2Wx9vHoxsmE1lrZ9MVsUCi6PTDzkRQscoqzs
 cjWAUHLLAaTWWrYs1ixRBm/os50RAGYSCil4PEWyUEDVFs+3LY9DwN4sKvFMeehcqNdt
 BmzDM/BvBBQgy954SsZe/PP6+Iyvjv09GusFEiCZxUHT9FbWSBBvSdU4ryD6WPfGBer6 /reA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  5 May 2015 17:44:21 -0700
Message-Id: <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v1 03/12] crypto: qat - address recursive
	dependency when fw signing is enabled
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
Cc: mjg59@srcf.ucam.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, Tadeusz Struk <tadeusz.struk@intel.com>, tiwai@suse.de, gregkh@linuxfoundation.org, "Luis R. Rodriguez" <mcgrof@suse.com>, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, John Griffin <john.griffin@intel.com>, jlee@suse.com, Bruce Allan <bruce.w.allan@intel.com>, casey@schaufler-ca.com, akpm@linux-foundation.org, Herbert Xu <herbert@gondor.apana.org.au>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@suse.com>

We're going to add firmware module signing support, but when we do
this we end up with the following recursive dependency. Fix this by
just depending on FW_LOADER, which is typically always enabled
anyway.

mcgrof@ergon ~/linux-next (git::master)$ make allnoconfig
scripts/kconfig/conf  --allnoconfig Kconfig
crypto/Kconfig:15:error: recursive dependency detected!
crypto/Kconfig:15:      symbol CRYPTO is selected by SYSDATA_SIG
init/Kconfig:1880:      symbol SYSDATA_SIG is selected by FIRMWARE_SIG
drivers/base/Kconfig:88:        symbol FIRMWARE_SIG depends on FW_LOADER
drivers/base/Kconfig:80:        symbol FW_LOADER is selected by CRYPTO_DEV_QAT
drivers/crypto/qat/Kconfig:1:   symbol CRYPTO_DEV_QAT is selected by CRYPTO_DEV_QAT_DH895xCC
drivers/crypto/qat/Kconfig:13:  symbol CRYPTO_DEV_QAT_DH895xCC depends on CRYPTO

Cc: Rusty Russell <rusty@rustcorp.com.au>
Cc: David Howells <dhowells@redhat.com>
Cc: Ming Lei <ming.lei@canonical.com>
Cc: Kyle McMartin <kyle@kernel.org>
Cc: Bruce Allan <bruce.w.allan@intel.com>
Cc: Tadeusz Struk <tadeusz.struk@intel.com>
Cc: John Griffin <john.griffin@intel.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 drivers/crypto/qat/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/qat/Kconfig b/drivers/crypto/qat/Kconfig
index 49bede2..9bea338 100644
--- a/drivers/crypto/qat/Kconfig
+++ b/drivers/crypto/qat/Kconfig
@@ -8,7 +8,7 @@ config CRYPTO_DEV_QAT
 	select CRYPTO_SHA1
 	select CRYPTO_SHA256
 	select CRYPTO_SHA512
-	select FW_LOADER
+	depends on FW_LOADER
 
 config CRYPTO_DEV_QAT_DH895xCC
 	tristate "Support for Intel(R) DH895xCC"
-- 
2.3.2.209.gd67f9d5.dirty


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

