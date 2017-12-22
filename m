Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ALJe6g99GkbvASIFNZbpPXLyqIdQnbWaiitcaCdJ6zQ=;
 b=k9mfGzcLxiprJa
 0vJGNLZ1jjQXho/4PsGHyTUTKd4qlNRRdVrOPU/Ka2FRxku12TI0Amebg0fIs9li3Haba9WcGj5IN
 KF0n1uoRfD3/ITnLG2u7nw1f3+6UVmlYiCg4K1HiqEAT8L5Tz05RN7osz6RcwS5Ihalb7OX6AjyGk
 c1de35GFZjbdE1BYKo8F3G6GPSMrkaqubnLR8E2MKC0BEfxIQqSAp0apeVo/vWSqvbDqo0YQMT+Fy
 GG73IjVLlQs2s+BBN1k8mq72B5yBFvs9f0nY+hIoD3I8EvL8Ck5nfM/kE4tQXDcldAFerQhMViP8S
 nGEUXB2qkkwYSQfxD/1w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQR-0005r8-JR
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:21 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQN-0002ep-Qh
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:15 +0000
Received: by mail-io0-f198.google.com with SMTP id y76so18990453iod.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:15 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:03:02 -0600
Message-Id: <20171222060303.14478-6-seth.forshee@canonical.com>
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 5/6] wireless-regdb: Install regulatory.db
 and regulatory.db.p7s to /lib/firmware
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
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

regulatory.db is being installed to the CRDA path, however the
kernel expects it to be in /lib/firmware. Install it to the
proper location. Also install the detached signature, which is
needed for the kernel to check verify the database authenticity.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 044251f64785..1e8e84c64149 100644
--- a/Makefile
+++ b/Makefile
@@ -2,6 +2,7 @@
 PREFIX ?= /usr
 CRDA_PATH ?= $(PREFIX)/lib/crda
 CRDA_KEY_PATH ?= $(CRDA_PATH)/pubkeys
+FIRMWARE_PATH ?= /lib/firmware
 
 MANDIR ?= $(PREFIX)/share/man/
 
@@ -117,10 +118,12 @@ install-distro-key: maintainer-clean $(DISTRO_PRIVKEY)
 install: regulatory.bin.5.gz regulatory.db.5.gz
 	install -m 755 -d $(DESTDIR)/$(CRDA_PATH)
 	install -m 755 -d $(DESTDIR)/$(CRDA_KEY_PATH)
+	install -m 755 -d $(DESTDIR)/$(FIRMWARE_PATH)
 	if [ -f .custom ]; then \
 		install -m 644 -t $(DESTDIR)/$(CRDA_KEY_PATH)/ $(shell cat .custom); \
 	fi
 	install -m 644 -t $(DESTDIR)/$(CRDA_KEY_PATH)/ $(REGDB_UPSTREAM_PUBKEY)
-	install -m 644 -t $(DESTDIR)/$(CRDA_PATH)/ regulatory.bin regulatory.db
+	install -m 644 -t $(DESTDIR)/$(CRDA_PATH)/ regulatory.bin
+	install -m 644 -t $(DESTDIR)/$(FIRMWARE_PATH) regulatory.db regulatory.db.p7s
 	install -m 755 -d $(DESTDIR)/$(MANDIR)/man5/
 	install -m 644 -t $(DESTDIR)/$(MANDIR)/man5/ regulatory.bin.5.gz
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

