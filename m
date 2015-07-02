Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-x232.google.com ([2607:f8b0:4001:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAi4u-00075Z-3K
 for wireless-regdb@lists.infradead.org; Thu, 02 Jul 2015 17:15:12 +0000
Received: by igrv9 with SMTP id v9so101148769igr.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 02 Jul 2015 10:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113; h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=jNq64BrxqR8RTV97WhXRejV9YUNVEcf8F3Bwn5TLEq0=;
 b=J10yo7A//39ZyD2CtAJ/GTtDpeQAjc1DLV7ZsP9ifRp4AsKflJG1bwbjjYysuv98e9
 h56jH3joAjWCTqP5fvPwmZx3VSYuNB556f+iiUEvkTygTqwy1zXjUiJeQCUgk31P4gWt
 +dNrFD23zGTKzNEYC1mdNc1d5JT3+zJnP4HAuBybCgKQhJJB/nVVG2qTEWVMCDPDCkz7
 6SMZvReUvIS0gxiiqDSd1Chr4s3mPJ4PkL9SIzTWvtYy31rpbX5m82uCB130M2VVQ11M
 eXAvDMCe07f4u2CAEmqnCItMJIB6zcaeV5vIMc8HBRv0xHwn/2SUXwqnnjnjRLm37Go/ Qpig==
From: Wei Zhong <wzhong@google.com>
Date: Thu,  2 Jul 2015 10:14:36 -0700
Message-Id: <1435857276-19209-1-git-send-email-wzhong@google.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update CA rules for 5600
 - 5650 mHz
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Wei Zhong <wzhong@google.com>
List-ID: <wireless-regdb@lists.infradead.org>

Related regulation:
http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3

Frequency Bands 5470-5600 MHz and 5650-5725 MHz
Until further notice, devices subject to this section [i.e. Wifi device
supporting 5 GHz bands] shall not be capable of transmitting in the band
5600-5650 MHz. This restriction is for the protection of Environment
Canada’s weather radars operating in this band.

Signed-off-by: Wei Zhong <wzhong@google.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 809cd3c..da0cfad 100644
--- a/db.txt
+++ b/db.txt
@@ -216,7 +216,8 @@ country CA: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
+	(5490 - 5600 @ 80), (24), DFS
+	(5650 - 5730 @ 40), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 # Source:
-- 
2.4.3.573.g4eafbef


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
