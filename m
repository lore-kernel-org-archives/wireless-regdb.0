Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22d.google.com ([2607:f8b0:400e:c02::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpnWU-0001C7-T6
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 00:49:15 +0000
Received: by pdea3 with SMTP id a3so214203371pde.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 17:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZRV20Q3e+ZZsV+89ckfwu1u3aseUp5+mkh5dCKW6DHs=;
 b=jW9mvWUeZ9O/ms31Ktp/e8Xu7S1Z28ryCS0S8GW9UovxMPC9rsf5oQ6OOYJFYiUk/M
 v9FCkAbuTgQGUL8VauZdVHDvD/7QwPR9ns4k7PfY9yZPLUdDjGniyDcJZG/RI4iX65+6
 Kfhp+2iscqN7hXZr2kSQWHUeEOolRgX6Pb6e1iEAkNEB4I0Jfryd4TzUhTAR3Bn/dO97
 KLy9RtbndQJdwdOSBEt7f9eHWdnguNYslw0BzC+tGAPQQpZBMxA2TQfj7tQ/dIwiFPnL
 0hAoj4CVjSNO13sF2ZZQRkwPFLwWp4Tv1Ugm9BWSQK/bACR/4Y0ZunEka9HezrVI74lL zcpg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  5 May 2015 17:44:19 -0700
Message-Id: <1430873070-7290-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v1 01/12] kernel/params.c: export
	param_ops_bool_enable_only
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

This will grant access to this helper to code built as modules.

Cc: Rusty Russell <rusty@rustcorp.com.au>
Cc: David Howells <dhowells@redhat.com>
Cc: Ming Lei <ming.lei@canonical.com>
Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: Kyle McMartin <kyle@kernel.org>
Signed-off-by: Luis R. Rodriguez <mcgrof@suse.com>
---
 kernel/params.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/params.c b/kernel/params.c
index a62dbf8..807f3d4 100644
--- a/kernel/params.c
+++ b/kernel/params.c
@@ -364,6 +364,7 @@ const struct kernel_param_ops param_ops_bool_enable_only = {
 	.set = param_set_bool_enable_only,
 	.get = param_get_bool,
 };
+EXPORT_SYMBOL_GPL(param_ops_bool_enable_only);
 
 /* This one must be bool. */
 int param_set_invbool(const char *val, const struct kernel_param *kp)
-- 
2.3.2.209.gd67f9d5.dirty


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

