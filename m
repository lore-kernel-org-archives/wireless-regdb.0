Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yzo37-0002xX-SL
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2015 15:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1433258657; x=1464794657;
 h=from:cc:to:subject:date:message-id:in-reply-to: references;
 bh=1qgr27splsnQdwxnmPKkZgwi0SMZbySAeyGoY3tVisM=;
 b=oLr1syU/lQjUlTP4JwJfT0XMO9g8a4O+U3u27ri6e8RF95PnjOTJUjrD
 87fbWzGJytrMJfnCSmfGgkc3s0LoZtmeZKwukA+FIFsdKZKY5HlQUqHZb
 AXkQW/le4Nbh06YJ3miY90+rIrcZbvH0bV/uW1GtMmX8v4LKTPKcjprD6 A=;
From: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Date: Tue,  2 Jun 2015 18:23:47 +0300
Message-Id: <1433258628-7047-2-git-send-email-qca_vkondrat@qca.qualcomm.com>
In-Reply-To: <1433258628-7047-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
References: <20150602144231.GA31648@ubuntu-hedt>
 <1433258628-7047-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
Subject: [wireless-regdb] [PATCH v3 1/2] wireless-regdb: Add 60GHz
	regulatory rules for Japan (JP)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is ARIB STD-T74, available at:
http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf

Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 37b6c39..af3aaca 100644
--- a/db.txt
+++ b/db.txt
@@ -590,6 +590,9 @@ country JP: DFS-JP
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (23), DFS
+	# 60 GHz band channels 2-4 at 10mW,
+	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
+	(59000 - 66000 @ 2160), (10 mW)
 
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

