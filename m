Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-da0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPRUR-0000HB-HH
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 05:53:08 +0000
Received: by mail-da0-f43.google.com with SMTP id u36so2951473dak.30 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2013 22:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=4y8iKiaANgpafe5LPXctl1t+6GPhERMaaL5dceN91EY=;
 b=LSSTQmswLVAqGXT/GnI3R8pooKh4pizdHj7vL7KaZvELUPecAEdk1XaX8ea9o/5qUY
 +d9M2gzO9sJselGbctlT/YLoBq7PzbFu09F3ko0EjVswH9G7tF7wHcB14YUQ8IfAv3eE
 5nq09bREh8GLgu0F7tYPqw79ZXFoRnnMLExCAVGnEox8v478S6nT4uURsfp/JUUi8j3y
 40ecayHoaVSQKm2h9C0Bj6ZVqdWsRtLFI3rzuOqgSk7a/7bqbMa0V6Jmfl+NPOo8NMg/
 yqPNuz1855ZCHpA9Svzb30chYhlxdHl+11tRJgzWwbaMOeW0GNGk8C/Q7vvMM/jyNoLR 1WgQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon,  8 Apr 2013 22:52:55 -0700
Message-Id: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/3] wireless-regdb: a few regulatory
	updates
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
Cc: wireless-regdb@lists.infradead.org, kandala@qca.qualcomm.com, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, linux-wireless@vger.kernel.org, qca_vkondrat@qca.qualcomm.com, green@qca.qualcomm.com, yunsenw@qca.qualcomm.com
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

John, here's as few pending regulatory updates.

Luis R. Rodriguez (3):
  wireless-regdb: enable HT40 in RU - Russian Federation
  wireless-regdb: enable VHT80 when world roaming
  wireless-regdb: add VHT channels 1..3 to world regdom

 db.txt |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

