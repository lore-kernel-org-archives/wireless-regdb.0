Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGm-0000i0-Fb
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:13 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so4074582wgh.25 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wu/SW1LWL+NhLg33WfW+Snf9NAqni5NYueoOtfb7EaQ=;
 b=oUeC1peTUgiz9E6HfwTRyMh5FVMYxz9ApTe0D8kd62Z9dB7Ibr/PV6r0hVsEVXj/86
 sv9Uc+ojSdtE0bJfFW3mfavZstgcsNZxQworrZnGtHAT+OZQplZ4M4IGwCzqm+3g79ti
 yjSA10lnubQ+N8EI5rX8J9Fjw1qEY94Akt4rA14a6AiEV3M9dvlBOuIYWc9m70rc04x9
 PjF+Ym7ej/OYQd/tbHj3vX5h48/Fx0fUrNLZwpeu/gduYtXm/IxoHHjzojA9Z/9lIVf2
 HjFfIQCpzzB8SFEz5uKIApIyHwLr6Db7duAAtUpydyUmr44OXjbq5xmK++ZSGNpWyN/c pXPw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:40 +0100
Message-Id: <1383314275-20960-51-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 50/65] wireless-regdb: add VHT80 rules for
	UA
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 4ce2017..aa92c37 100644
--- a/db.txt
+++ b/db.txt
@@ -774,6 +774,8 @@ country TR: DFS-ETSI
 country UA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
 	(5150 - 5350 @ 40), (20), NO-OUTDOOR
+	(5490 - 5670 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

