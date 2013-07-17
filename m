Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHO8-0006Go-NF
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:45 +0000
Received: by mail-pd0-f181.google.com with SMTP id 14so1305170pdj.26 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ri5SqzJUbqk646QZsIva07bfwGtsUHlWPSJWnEGHIlk=;
 b=zfO9kFXnrpu8APdsDxK3Gd6uvztdi1le3mol6l+NRgCxKWFPMRJUEhlIyPHFMmPoDM
 NhYgflun+HbnxU2iuXxBtWKBXtpVkx8KWpam7iXPBCRjGQtOdJZ3S5EkUDNps4kjV7zb
 g1OB/PcA8xXcGn0Y0Ra4cO0cE+mxUqhlWNrsaIRsyK7PnYlI9990jO8ZZZNZBAnyf7KB
 Ew2fZRwiKTwH9mn8qEeFpFngj8+FdjKWu/RqqzbL/KSIR9ME/LvFgCx9gqfsYLHKN4/R
 hm7xVzLAFphhIIgyeZHFzmmsbrBtYLcNBbAI3faPEZxDtle0zMYGrlGnU0Kd8IAbsN/M 6w2g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:31 -0700
Message-Id: <1374027522-18488-43-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 42/53] wireless-regdb: ID,
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
index bc8fe07..6aa57a7 100644
--- a/db.txt
+++ b/db.txt
@@ -380,7 +380,9 @@ country HU: DFS-ETSI
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
 country ID:
+	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
 	(2402 - 2482 @ 40), (N/A, 20)
+	(5735 - 5815 @ 80), (N/A, 20)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

