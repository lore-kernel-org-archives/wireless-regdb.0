Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFv-0000VB-Ca
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:19 +0000
Received: by mail-wi0-f173.google.com with SMTP id ey11so1107021wid.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vRsg+1qyPOiZGX5XHcgBdABnxP3xnjNnczyY603ZEwE=;
 b=M2f6E1ajMcgrbdDwDlXyESdlCGUt5eNS115MKlfKLfddx/5IqQnf3yRpn9MHzOL5ij
 3mGQMzqnpkBVoBakpX2VmZzucHvbHisUlJbauLPYDwuKndhsJG6Zq9DAsUm8sVcpR3sb
 j+7uo6vV0J0GAPRoLFFCIiqmkUViMLSJZeQsigvTbIpwo6W/x8k7IOJsEOh3Y85yH5b7
 2hkIbaIl3uiHkCa6filV+4J3CtD613VTReKNmEJyZewQa0qzxeiK/vP6sZ3RU0w1ADfW
 aRDya2XFMvb2afEHfj5+RVyiUxDjK/Ju1MH+DIvmWzQDS8inYma2nyOojaHFLTxcTUI1 rOzQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:16 +0100
Message-Id: <1383314275-20960-27-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 26/65] wireless-regdb: enable VHT80 for JO
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

This also adds a new 5 GHz frequency range for JO,
as well as increase the max EIRP on the existing 5 GHz
frequency range from 18 dBm to 23 dBm.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 1d8c0b5..ed3edc4 100644
--- a/db.txt
+++ b/db.txt
@@ -436,7 +436,8 @@ country JP: DFS-JP
 
 country JO: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (18)
+	(5170 - 5250 @ 80), (23)
+	(5735 - 5835 @ 80), (23)
 
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

