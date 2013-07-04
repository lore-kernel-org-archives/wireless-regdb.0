Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY20-0002y6-PR
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:22 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr13so666924pbb.34 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ImJhIQaKAJWiRlTr4BTXS8mEQlNqlKGLSoyv78K2iw0=;
 b=PbXx4j05yIhTwRa6iVPtZtLv4I1OrlC7oXxN1q8O4gllNkTnfp+1CGoKCLGt3MXWTv
 FBfBwCWYXdCSrljTrM8VExAJqjSlQ+44YV7zRdAm45iXZR0sfbVeJ05dvJwlZOM9GYCA
 qGx+xp3ubF99jD7XW0WCaJpG1V2YeEKvhPqXUCu5gr0UH9ZOqKQw8R0w868ftTdzry8F
 OAZNfhdyRFwUyMLnqFhCsBcPm73XWmtfvYOrtCNMXnC/o4nH6fh66semPYchmuCv80Bx
 VNi5/TP2i8/jQQUZ2ykspwoR6UzmJb99beYe1nBM3k1wkQ89G1jnfYYXWtyjV1eSX8P1 yA4g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:38 -0700
Message-Id: <1372899889-19183-43-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 42/53] wireless-regdb: ID,
	Indonesia - enable 5 GHz and VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

Pursuant to:

http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf,

provide a 5GHz rule for Indonesian regulatory domain. QCA has
also verified VHT80 can be enabled. Patch originally posted by
Paul Stewart <pstew@chromium.org>, I just modified to enable 80 MHz
bandwidth.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 0ebb934..a101b1e 100644
--- a/db.txt
+++ b/db.txt
@@ -380,7 +380,9 @@ country HU: DFS-ETSI
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
 country ID:
+	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
 	(2402 - 2482 @ 40), (N/A, 20)
+	(5735 - 5815 @ 20), (N/A, 20)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

