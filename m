Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vbda8-0007ws-GW
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:45:42 +0000
Received: by mail-wg0-f44.google.com with SMTP id n12so1924414wgh.35 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=F4h1YUDD+L6xDx6pyx788ajSHqfuYSMD8aouzCkIfE0=;
 b=smqfn0sIziKmMd0a2PnDXYzQe9M0WCT/JhFntZxsFZ5nR/QdOlP4alxtT9skESNoP3
 kijYyw4Uos67gu0w8oMqgvz0+HVo1uYPVyfNU/a9sslXLfJUGj6LWu7Bin3w1/Wk50RL
 iTvO+AU1l19lliCsBRmO9deVuJ6p3+Ff5zqMNd22ME9lj22KkFHwci8v+PMSGHNjr8S2
 de3ol66ocPB+m851ZHiXPSK+9pzU6JnK2c/y8tCkQlYhn6h0WwLz13++2PPqcshN1UiW
 B+L4795vi8qxcnATLtAUzy1z5mQ+7p8Va1r4O1uIR52c4YU/k9WdDjkdt4sgFU0+ekTj a/pQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:45:02 +0100
Message-Id: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/7] wireless-regdb: DFS regions and
	optimizations
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

This patch series associates a slew of countries
to DFS regions and then provides updates to 4
countries based on the new CRDA optimizer. The
optimizations have no functional changes other
than reducing the size of the regulatory domain
data strucutre that would be used to send to
the kernel.

Luis R. Rodriguez (7):
  wireless-regdb: add DFS FCC regions
  wireless-regdb: add DFS ETSI regions
  wireless-regdb: add DFS JP regions
  wireless-regdb: optimize two of DE's rules
  wireless-regdb: optimize two of ES's rules
  wireless-regdb: optimize two of IL's rules
  wireless-regdb: optimize two of NL's rules

 db.txt | 159 +++++++++++++++++++++++++++++++----------------------------------
 1 file changed, 77 insertions(+), 82 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

