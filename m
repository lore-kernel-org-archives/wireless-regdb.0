Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=sySlw5Vrm3mRXIrGI6N1VrIdXuTEVB06I4njAYIQMqA=;
 b=L6GQX7CXApzHb2
 moW7RMPWOyTkAlCJstrdNyDQwOxT+IbmD2YI+wHgnaIlK3q7A2YH6RA37lVBL+jcZyCsxuyE0OlNM
 CWtYdXWOL5/F1AvyotsXVLrphaHfyh2LGtl2xlHZ1oNOLdIK2CE5aDFzSRiNNR8FZmAqgnGtzasxN
 j7YKvf0QrreTwZwgERoZtGRGlll6FlU7Z604rUr0DMm+Iw6km9I7l48w3AqDzanJJLr0xmOwJ1bR4
 zjNBcmQ6IiPea22xWnlUu6KJp1V6eTq9ymy4h4f43k/+PPEV+d0ny5CE9wRkxOdR8hcXUKymZkY1S
 rWnrmxyAOMDCRAAFfZqg==;
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ei6us-0007md-OE
 for wireless-regdb@lists.infradead.org; Sat, 03 Feb 2018 23:08:16 +0000
From: Matthias Schiffer <mschiffer@universe-factory.net>
Date: Sun,  4 Feb 2018 00:07:49 +0100
Message-Id: <bdfcead51b64e05f867ba5fe273c196edea35ddd.1517699270.git.mschiffer@universe-factory.net>
Subject: [wireless-regdb] [PATCH 1/2] wireless-regdb: do not rely on
 sorting of dict keys in conversion scripts
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The iteration order of dicts varies across Python implementations, in
particular Python 2 and 3. Fully sort key lists rather than only taking
the "freqband" field into consideration to make the build of the binary
regdbs fully reproducible.

This commit changes the order of the entries in the generated files; the
output of regdbdump is unchanged.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 db2bin.py | 16 +++++++++-------
 db2fw.py  |  4 ++--
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/db2bin.py b/db2bin.py
index 41d3741..ae5f064 100755
--- a/db2bin.py
+++ b/db2bin.py
@@ -50,18 +50,22 @@ class PTR(object):
 
 p = DBParser()
 countries = p.parse(file(sys.argv[2]))
+
+countrynames = countries.keys()
+countrynames.sort()
+
 power = []
 bands = []
-for c in countries.itervalues():
-    for perm in c.permissions:
+for alpha2 in countrynames:
+    for perm in countries[alpha2].permissions:
         if not perm.freqband in bands:
             bands.append(perm.freqband)
         if not perm.power in power:
             power.append(perm.power)
 rules = create_rules(countries)
-rules.sort(cmp=lambda x, y: cmp(x.freqband, y.freqband))
+rules.sort()
 collections = create_collections(countries)
-collections.sort(cmp=lambda x, y: cmp(x[0].freqband, y[0].freqband))
+collections.sort()
 
 output = StringIO()
 
@@ -104,15 +108,13 @@ for coll in collections:
     # struct regdb_file_reg_rules_collection
     coll = list(coll)
     be32(output, len(coll))
-    coll.sort(cmp=lambda x, y: cmp(x.freqband, y.freqband))
+    coll.sort()
     for regrule in coll:
         be32(output, reg_rules[regrule])
 
 # update country pointer now!
 reg_country_ptr.set()
 
-countrynames = countries.keys()
-countrynames.sort()
 for alpha2 in countrynames:
     coll = countries[alpha2]
     # struct regdb_file_reg_country
diff --git a/db2fw.py b/db2fw.py
index 7b2b141..630e4d6 100755
--- a/db2fw.py
+++ b/db2fw.py
@@ -60,9 +60,9 @@ class PTR(object):
 p = DBParser()
 countries = p.parse(file(sys.argv[2]))
 rules = create_rules(countries)
-rules.sort(cmp=lambda x, y: cmp(x.freqband, y.freqband))
+rules.sort()
 collections = create_collections(countries)
-collections.sort(cmp=lambda x, y: cmp(x[0][0].freqband, y[0][0].freqband))
+collections.sort()
 
 output = StringIO()
 
-- 
2.16.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

