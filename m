Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VacRA-0000vJ-8q
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 02:20:12 +0000
Received: by mail-we0-f171.google.com with SMTP id t60so5901352wes.16 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 19:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=WkCvB+4PmBgCajzq4EIpjJz2lIyN/ia8S3lyMGAEyRQ=;
 b=TLuqLBAyrzaCEYqqoQdjoYvEU/YCiIFAyiAxXn/9Jz6ykYsz42QdAyyg11DSahD1u2
 I20pShkZPWUMMEbm+ZmeGZCgJz6Hcxt87V+b1TMznw4tEoFpVszK2m1JsMa7LcjbvyTN
 xsyZuwguZo6m9WqZduptYkVtyepnDJgU1HZelzE3Aw0G+IO/3SWL4jAuy/MsmR9q3EMB
 hDaONbTkDYDfU3JZSzbXUIgYoAwDlGVRW7K4ivLzdxwr1rvRJm2TLkqTyQZzhYZukGoQ
 iFn1r56fnyjwL1U4iLaNLhZpBdY7/R0RXdWD9NoPL7CfEKt9zdkEDApnF+FUJMExMZ5X UWGw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 03:19:44 +0100
Message-Id: <1382926786-7904-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/2] cfg80211: a few genregdb.awk updates
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

A few updates while toying with genregdb.awk for small
regulatory domains. This depends on the antenna gain removal
patch.

Luis R. Rodriguez (2):
  cfg80211: add function helpers to genregdb.awk
  cfg80211: fix parsing when db.txt ends on a rule

 net/wireless/genregdb.awk | 38 +++++++++++++++++++++++++++-----------
 1 file changed, 27 insertions(+), 11 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

