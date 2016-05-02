Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22e.google.com ([2607:f8b0:4003:c06::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axEMG-0005QP-Ce
 for wireless-regdb@lists.infradead.org; Mon, 02 May 2016 13:57:57 +0000
Received: by mail-oi0-x22e.google.com with SMTP id v145so156778836oie.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 May 2016 06:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mK5D2Xm0HzHcDpmmUSaNl4yUyNsOS/mC/PNcZEiXWoY=;
 b=LDjurOKZlc6AyHu0+GOBJew42BNMFEpcfUZzvaK37U+J7yrVq7FZ755aHyDiUgNOeu
 j6Xv0ru3bDyTmVnNO+ZXdCgj0NkPLiZi6QbhsA9/T6OvOuUjsosj35LjzuNGpxQ+DVx8
 dc4o7Cxfm9y5ncKwFyBMx39/FxnllGniByUQEy4++wbOr/NjVU4SymLvdydIQp0c7KY4
 7uanKEa+r69pNZpF+iyJANmW8yFBLhEgHZ3eCJbYWlHC8MXATdqGy2zXtKlLhe6d22FQ
 +HBOb1I2fNGkZCIWYg7qmmqsnsqX+ZJAW8zhDFGqpAiZhSaJUPvUJVpnqWp2yWcX1oPv
 Snkg==
Date: Mon, 2 May 2016 08:57:34 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160502135734.GE2714@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2016-05-02
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2016-05-02) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2016.05.02.tar.gz

The short log of changes since the 2015-02-08 release is below.

Thanks,
Seth

---

Anne Marcel Roorda (1):
      Update regulatory rules for NL as per ETSI EN 300 440-1

Maximilian Engelhardt (2):
      wireless-regdb: Update regulatory rules for Germany (DE) on 5GHz
      wireless-regdb: Update regulatory references for Germany (DE)

Petko Bordjukov (1):
      Update the regulatory rules for Bulgaria (BG)

Seth Forshee (1):
      wireless-regdb: update regulatory.bin based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

