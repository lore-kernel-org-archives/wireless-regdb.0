Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f182.google.com ([209.85.192.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEo0-0005PO-Pg
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:01 +0000
Received: by mail-pd0-f182.google.com with SMTP id g10so1370320pdj.41 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=vmanMIp9Wo7sXUvj1Zb4K3lYodvizZXMKyMev0RCqNE=;
 b=SV4yE+hFEwum5pjhb3KGdXYxzIw5bJYl3cvj7tLQOI7H7XvVuL3VX+ngEHrerqo0IB
 OzOCN4ODiBA23oc2MFK2iJRDpBz9eRJyhDEayxehdlKFjj6HQt3E8sY2vNWldx+xlDJb
 /aW/24hi/Y4sELyphVVYfzB30dVC+9bRgW51rCA1gC1acLsBwbSnDrQ38TdCQzvFYJcl
 Om1aZj4knJFPvou10F1SeONo7/ddG8jT8jbKHrNeg5PBh9CGesCOuqAcUcGq4Cz32hRC
 77mBJErMXRCRZQfaLVtS1jqnz3MbM+EL5wO9KW5mOstxMS98qTM91t1DLoSaGtR7f32N sQaQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:02 -0700
Message-Id: <1369966169-23640-14-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 13/40] crda: explicitly close file
	descriptor and munmap() on failures
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

Just do this explicitly.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |   16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/reglib.c b/reglib.c
index bb6f23f..cbe9676 100644
--- a/reglib.c
+++ b/reglib.c
@@ -307,33 +307,37 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file)
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
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

