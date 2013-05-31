Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x232.google.com ([2607:f8b0:400e:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoG-0005R3-5i
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:17 +0000
Received: by mail-pb0-f50.google.com with SMTP id wy17so1385476pbc.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UXuoR7yw07R5ZY5tVNnw1Af5//oX/C214j5Y1INWFHo=;
 b=0v5ES1kfxPIV5Q6Ko3nL33lgkes0Se8Mg83G73JwOM1YicvTndg1fY1a5Q3J54i9OD
 8el43cwfDU5tv98L8ZZ8dfWE0rp4bKv5IWFVSKLohSYCZnqtDgeEok6Ulq94O2Yb87p1
 YT85Q8ztXIPBGymlQCc7ccqBMUVN5WnQdIK2Ox3jMOpXcZ8KkSU/qlBLmPVADOLCQ4zH
 kjvfB1pkq4hW+s/txMJr5SUOrPolWpaa355hVzjIq6pKAoYMzcaxteyYLTdJLSn9tkwi
 LkpMibhpJLr18icbSIKsgYABh6kRSBskAjiObI9nhH7LEZVFSAv/S0UydiSFofre/+4z PwKg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:05 -0700
Message-Id: <1369966169-23640-17-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 16/40] crda: explicitly use close() and
	munmap() on reglib_get_rd_alpha2()
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |   23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/reglib.c b/reglib.c
index 634525b..3d13782 100644
--- a/reglib.c
+++ b/reglib.c
@@ -262,33 +262,37 @@ reglib_get_rd_idx(unsigned int idx, const char *file)
 	if (fd < 0)
 		return NULL;
 
-	if (fstat(fd, &stat))
+	if (fstat(fd, &stat)) {
+		close(fd);
 		return NULL;
+	}
 
 	dblen = stat.st_size;
 
 	db = mmap(NULL, dblen, PROT_READ, MAP_PRIVATE, fd, 0);
-	if (db == MAP_FAILED)
+	if (db == MAP_FAILED) {
+		close(fd);
 		return NULL;
+	}
 
 	header = crda_get_file_ptr(db, dblen, sizeof(*header), 0);
 
 	if (ntohl(header->magic) != REGDB_MAGIC)
-		return NULL;
+		goto out;
 
 	if (ntohl(header->version) != REGDB_VERSION)
-		return NULL;
+		goto out;
 
 	siglen = ntohl(header->signature_length);
 	/* adjust dblen so later sanity checks don't run into the signature */
 	dblen -= siglen;
 
 	if (dblen <= (int)sizeof(*header))
-		return NULL;
+		goto out;
 
 	/* verify signature */
 	if (!crda_verify_db_signature(db, dblen, siglen))
-		return NULL;
+		goto out;
 
 	num_countries = ntohl(header->reg_country_num);
 	countries = crda_get_file_ptr(db, dblen,
@@ -296,14 +300,17 @@ reglib_get_rd_idx(unsigned int idx, const char *file)
 			header->reg_country_ptr);
 
 	if (idx >= num_countries)
-		return NULL;
+		goto out;
 
 	country = countries + idx;
 
 	rd = country2rd(db, dblen, country);
 	if (!rd)
-		return NULL;
+		goto out;
 
+out:
+	close(fd);
+	munmap(db, dblen);
 	return rd;
 }
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

