Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGg-0000gg-3S
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:06 +0000
Received: by mail-wg0-f52.google.com with SMTP id k14so4063148wgh.31 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ihzy6sJ1dj/NAKGCH/c/jSkviuFyF++Pndm7gleqTF0=;
 b=mQvhWmwPrkn9/S4D4sj1PXxfb0KY7WGIXZIbcviXESFWfvahSnPUsCpkk0cJfhvYxg
 2y3avyAPzxYJLtouHywAG4N3tTL7rKEWFWreItTbnRh5TDlCqYnN62Yl/7E03UHh/+hW
 zoTj4mJ0yNq1EviyLFmvKsN7Tc90YEIaoq0n1FNq/c/aCJwO7M1p/dm2ftaybryoR0FQ
 XTMIU38W7IztekvUwHIGzXhJKNDzEiNuUPPM2UcscIXz5JMen34/a4yEkwFWFXMcXtsf
 JcmEpblGklY3sXitfEuiBUshx8cM0zEFkUZlh9kG5FG6Y/81ExzLUuhE8ZdCpDsmh0NC QWPA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:37 +0100
Message-Id: <1383314275-20960-48-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 47/65] wireless-regdb: add VHT80 rules for
	BD
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
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index 68e896c..f63565c 100644
--- a/db.txt
+++ b/db.txt
@@ -91,6 +91,7 @@ country BB: DFS-FCC
 
 country BD: DFS-JP
 	(2402 - 2482 @ 40), (20)
+	(5735 - 5835 @ 80), (30)
 
 country BE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

