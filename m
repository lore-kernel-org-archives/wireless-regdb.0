Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqGz6-0006Re-G1
 for wireless-regdb@lists.infradead.org; Thu, 07 May 2015 08:16:45 +0000
Received: by lagv1 with SMTP id v1so24982721lag.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 May 2015 01:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubnt.com; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding;
 bh=asuCrtzWsWnFst7EE1IubL5oa/PxJQj9Mil6Xj5xszE=;
 b=kviCFe6j7TJgwMbYlHF/XM6UPPAQDrgWs+RFgYYK4hVe3xWNwXh52QITszI1pGjfzI
 wDpOlHQVO0X0vmhQXyqhbT8EwO68cYgsXMsp11Vt2hvJQrxI+OpgZAk7mDDQiFPvO4x2
 4VJyYc0icg3mPGL4Rz3B+HZ95EL/LdO7SAQdQ=
Date: Thu, 7 May 2015 11:16:19 +0300
From: Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
Message-Id: <20150507111619.2dc54b1d45f6dfe4da74bf35@ubnt.com>
In-Reply-To: <20150506155721.GA125350@ubuntu-hedt>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
 <20150505084821.GA26349@jouni.qca.qualcomm.com>
 <87d22f8f4d.fsf@nemi.mork.no> <20150505210924.GB109672@ubuntu-hedt>
 <CAFSVvReN4DwSsk4Q9Bz+WEw5zaKm+ODB=kWhdPj1L7=Qe1ORPA@mail.gmail.com>
 <20150506155721.GA125350@ubuntu-hedt>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] Change DFS domain to DFS-ETSI for
	Australia and New Zealand
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, Peter Gent <Peter.Gent@mbie.govt.nz>, Jouni Malinen <jouni@qca.qualcomm.com>, =?ISO-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
List-ID: <wireless-regdb@lists.infradead.org>

Change DFS domain to DFS-ETSI for Australia and New Zealand

Signed-off-by: Dmitry Ivanov <dima@ubnt.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ad2acf5..1041ffb 100644
--- a/db.txt
+++ b/db.txt
@@ -85,7 +85,7 @@ country AT: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country AU:
+country AU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
@@ -862,7 +862,7 @@ country NP: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (20)
 
-country NZ: DFS-FCC
+country NZ: DFS-ETSI
 	(2402 - 2482 @ 40), (30)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

