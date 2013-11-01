Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGG-0000Zy-3c
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:40 +0000
Received: by mail-wi0-f180.google.com with SMTP id ey11so1109874wid.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x1V1sedMK90wcQ3fRCflBRC6tpTABaAR1TenLOstS6Y=;
 b=RDZxcrbOw3ZhZnnZzSsbY+FgwAF/vGJET2281j5B+tWchY86Ij6mUYBfYlO1fn3w8m
 6KmAQrMVVH5k6z1LnWN0LWk4jv1CiDSaq+xtvhnT4D0koEqEm3p6+Qws46jz0OUGyqZh
 8rftjS0ZUmihNJ8fyVSh4RLVbbYI2CVcmPMynUIMCAtGs0GQvVPBcvVR0o9wmvFEwrH2
 QIEfmlC5UZPWvfDaHpm5RXGdBa/+h+DM35yAuJIClv0Xkx6WXVZgjtEw7S7zBubJxwgy
 0tnSaWYWbOLgm14roBUrSmFT65mpc3e5XeRd4l7SeFGcl6OzDaj86+kyWjhBrw3ocSPX pArA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:25 +0100
Message-Id: <1383314275-20960-36-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 35/65] wireless-regdb: enable VHT80 for QA
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
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ecdec07..4483b74 100644
--- a/db.txt
+++ b/db.txt
@@ -645,7 +645,7 @@ country PR: DFS-FCC
 
 country QA: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
 
 country RO: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

