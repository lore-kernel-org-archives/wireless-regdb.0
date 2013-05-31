Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEn9-0005Jo-3s
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:07 +0000
Received: by mail-pa0-f53.google.com with SMTP id kq13so92959pab.26 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=BeEXNfflaxmkzWGyDUbqVeNeAA8bYRDTXcyhTqUqvL8=;
 b=t2fTtq9akiMH8KbtzHfSQVmZIzR7kBxgfXe9VLxT8zzYGXB+VfPJOrbJff/kLWd6Dn
 nq1pkqv+ph2iZ0K63FN3kiYNVdUHkarKD6WUzf0a3qFB6fkqVwUJeAGeYaZ0FYBc1+kr
 KUdegdrEjDDvymEP626UBS1s+kZAvU4RFh2aphBVKsRtC2y1xVEcOyWH+mhgba2z+Eif
 oHerDRjcp++QZF2QaxCcjnUXxOoA5SxfecC4AdR8/RjzNIIv97E0deWjgTtV54NmRRrd
 A9lkG+tu+0hahD/E84DqOCxSpTiKvNt1j/D+fqdbXP/lbuV0RDExx9cehjgd4qkWlBZf yH9A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:51 -0700
Message-Id: <1369966169-23640-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 02/40] crda: port over Linux
	is_valid_reg_rule() change bd05f28e
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

This was added upstream:

mcgrof@frijol ~/linux-stable (git::master)$ git describe --contains bd05f28e
v2.6.29~3^2~47

commit bd05f28e1a15ae62994fe309a524695fe26dd834
Author: Roel Kluin <roel.kluin@gmail.com>
Date:   Tue Mar 3 22:55:21 2009 +0100

    cfg80211: test before subtraction on unsigned

    freq_diff is unsigned, so test before subtraction

    Signed-off-by: Roel Kluin <roel.kluin@gmail.com>
    Signed-off-by: John W. Linville <linville@tuxdriver.com>

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/intersect.c b/intersect.c
index aa67dbc..e35f2cc 100644
--- a/intersect.c
+++ b/intersect.c
@@ -30,7 +30,8 @@ static int is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
 
 	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
 
-	if (freq_diff == 0 || freq_range->max_bandwidth_khz > freq_diff)
+	if (freq_range->end_freq_khz <= freq_range->start_freq_khz ||
+	    freq_range->max_bandwidth_khz > freq_diff)
 		return 0;
 
 	return 1;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

