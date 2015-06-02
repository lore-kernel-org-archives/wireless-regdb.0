Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yzo37-0002xm-SN
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2015 15:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1433258657; x=1464794657;
 h=from:cc:to:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HQPEgBbdcnnSw1CfRUQwYB6AEeFKUteTK0xUXSdD9xw=;
 b=zBTMi9oSgOC/PMiatP0ZDr+K83L4XHXVLYsnTDQJY5qjZ8EMm+bynz6f
 /noCjaZWnTJcoCOzAZWNRtrlUo0yIvRxM5iE1UrFRie3xjxVGQACsd8g7
 eJjeBAdOn2bOYcphOvz6WeztaVWe+suPkVgxH9ud5ER2pLlNGmVFIlL0t 4=;
From: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Date: Tue,  2 Jun 2015 18:23:48 +0300
Message-Id: <1433258628-7047-3-git-send-email-qca_vkondrat@qca.qualcomm.com>
In-Reply-To: <1433258628-7047-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
References: <20150602144231.GA31648@ubuntu-hedt>
 <1433258628-7047-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v3 2/2] wireless-regdb: Add 60GHz
	regulatory rules for Russia (RU)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is document named
Changes to NLA 124_Order №129_22042015.pdf

Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index af3aaca..809cd3c 100644
--- a/db.txt
+++ b/db.txt
@@ -998,6 +998,8 @@ country RU: DFS-ETSI
 	(5250 - 5330 @ 40), (20), DFS
 	(5650 - 5730 @ 40), (30), DFS
 	(5735 - 5835 @ 40), (30)
+	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
+	(57000 - 66000 @ 2160), (40)
 
 country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
