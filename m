Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x231.google.com ([2607:f8b0:400e:c02::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLK-0005tz-Fr
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:51 +0000
Received: by mail-pd0-f177.google.com with SMTP id p10so1308555pdj.22 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=fFf31VBmBfYGBzQvo0GOpCeb43yrfMCqnpBrrIAixJk=;
 b=DRrjsv9nB37uG4gaQD41WYyYD3QgH6lLHluplwZNB3SnqrMbLt4qAzjpmuzesv6xDR
 zx86Ph+NlLFHPBVk8Wn3zmdwWzwJADMxfnHrSlOLfHN03jCGA2eJ5RS+Oi74D7KlJ5Ik
 WJ6cJp0bVoWtc8XaZq04CYmt1RdOj6c4fMhS2z6nHPKl+nQXdYRbsz+tfgWaT6Q03XpC
 kQvNbTGFEqeJ+t2yJEFfcMUnnKC4Rn3vxHJ5TCoOMS4X4Mn3cUyiYYImJ0Vd3cmpyUfg
 SxAVlVLyWWNE4SY/1jurYisR87pOrp0QOC7l2euFyNeaOTOmdkrwQrahzi6hmgKhUfhA Z+Hg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:57 -0700
Message-Id: <1374027522-18488-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 08/53] wireless-regdb: GU,
	Guam - enable VHT80
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

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP. This also adds
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 6d7a762..4b1cf8e 100644
--- a/db.txt
+++ b/db.txt
@@ -337,9 +337,10 @@ country GT:
 
 country GU:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country HN:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

