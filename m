Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=alzH56lRWVTxzh8GKrIuuqmgev/33wZaz2WQ7NXyEZ8=;
 b=Gp1RRXWvq8Y6iZ
 J+Zm4U9c7pA0t9U3ymJTBqKG1hVXCwC/3KP+Siip0y59XQAza6J99Gl5BKDB2kPnc3kaUVJ9Pm3gv
 QxUKCoG9U6xbB/Li1MWucovvYUYlfwxHKg5JNn5z8hzhaepLTMuwa5EjyXqTiT8AOrg1ev7lQayGX
 yC5OeviY2H0TJAcMgN+e3+WkfGvJRdCpNs8bBI6OzN2noAlB0iqmuj/gTHImvyrE0b0zbKHUwEgZK
 RlhefR3KUnd2lei6GPubxmKTbPas2NWyzyAxFz5Ql9s4Bb1Mdbn3qn4SCr7nnsqkwBJTF1p95I67D
 z/HLCzteoRg708IDHOyw==;
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2A9M-000kB7-Es
 for wireless-regdb@lists.infradead.org; Tue, 28 Dec 2021 10:56:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id a9so37530749wrr.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 28 Dec 2021 02:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d1xQ0wB4EWN3YD1O2fP5vXXAbYo8u4ehSHF/AyEEJko=;
 b=hHHo3uJADkxJVS+vp4wYZ4rgFszQwNTyn2lFlUNzJy69rrZX9iYbfMMCIodtiSc6/l
 g7Ki2NmsMO+rFFEMP9uOPJmNUdejoJF3daw6rpAuyrgb5+o/mYEPvRCbPaiSzwBpG4gl
 YLh52xLq/XR89Ub7pnjuU2JLWOBWEDMcwIydIVgEpsy+4MshDuAGDwafA+HpwePYfqrZ
 LNIqwHe+fpxaykQaoeA+fu5M+gi87ce/tak6Bg6gVxAtq+ECJLP4WDHBcOTqBpFL3qPR
 llJWpkdVjH2tirevuToZmqIuDmBq6KUM0Pb8+a46VHJ2S8MHGFPT2Acs/NEf20w6zDG6
 dgOQ==
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 28 Dec 2021 11:56:05 +0100
Message-Id: <20211228105605.32141-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Croatia (HR) on 6GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: Robert Marko <robert.marko@sartura.hr>
List-ID: <wireless-regdb@lists.infradead.org>

In accordance with the EU Commision decision 2021/1067/EU the
Croatian Regulatory Authority for Network Industries (HAKOM)
has issued the general license for usage of the 5945-6425 MHz
spectrum for 6GHz VLPI and LPI devices in OD-236 and OD-237.

They have the same restrictions as in EU countries which already
implemented the decision earlier.

OD-236: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_236.pdf
OD-237: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_237.pdf

Unfortunatelly, both licenses are available only in Croatian.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index b898799..6dbda3c 100644
--- a/db.txt
+++ b/db.txt
@@ -707,12 +707,15 @@ country HR: DFS-ETSI
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HR: http://tablice.hakom.hr:8080/vis?lang=en
+# 6E: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_236.pdf
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.33.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

