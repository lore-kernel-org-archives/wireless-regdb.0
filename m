Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=V9Nca+M19P/sL3McRjHgAiK2uuqkc94EdDZqvAeV3oM=;
 b=lj6F2FtR6orgYQ
 8xYzDGeXWLAdQwVVmvoOfMs+epNP0ht+A4EinOOVtyEhTt15Q9lj0RrjIxlJW8mG7KNmIbVVSZW5t
 yFS40GADOoBEneAVJgXTCB0REnEwpI5fVU9IRPf8WisSWBLhyAo6WbwTkx31LLeShMDWcdvfQfTas
 BQzEpaoyUaMeFNwwuuCqBHRSTqplwJxjZAg9qmQnaesuAV7167aue25yHc6qqz2Fb6/Qmy4QrGni/
 pUNCV2UskWThn1LpEBWDaGGiPbQzklu0t7DqnDl55Opg34k23qiY5GGKMxLMwIdTtMat3GkYnenFp
 KnX/LnY6lEyO2+hBwTLg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQS-0005rD-16
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:24 +0000
Received: from mail-it0-f70.google.com ([209.85.214.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQP-0002f8-Dy
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:17 +0000
Received: by mail-it0-f70.google.com with SMTP id z142so9804822itc.6 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:17 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:03:03 -0600
Message-Id: <20171222060303.14478-7-seth.forshee@canonical.com>
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 6/6] wireless-regdb: Document
 regulatory.db in the manual page
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

Add information about regulatory.db to the regulatory.bin man
page, and alias the regulatory.db man page to refer to the page
for regulatory.bin.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 Makefile         |  2 +-
 regulatory.bin.5 | 32 ++++++++++++++++++++++----------
 regulatory.db.5  |  1 +
 3 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 regulatory.db.5

diff --git a/Makefile b/Makefile
index 1e8e84c64149..2f1ed93e0e15 100644
--- a/Makefile
+++ b/Makefile
@@ -126,4 +126,4 @@ install: regulatory.bin.5.gz regulatory.db.5.gz
 	install -m 644 -t $(DESTDIR)/$(CRDA_PATH)/ regulatory.bin
 	install -m 644 -t $(DESTDIR)/$(FIRMWARE_PATH) regulatory.db regulatory.db.p7s
 	install -m 755 -d $(DESTDIR)/$(MANDIR)/man5/
-	install -m 644 -t $(DESTDIR)/$(MANDIR)/man5/ regulatory.bin.5.gz
+	install -m 644 -t $(DESTDIR)/$(MANDIR)/man5/ regulatory.bin.5.gz regulatory.db.5.gz
diff --git a/regulatory.bin.5 b/regulatory.bin.5
index 430c65c9ce6d..b1862cd1756d 100644
--- a/regulatory.bin.5
+++ b/regulatory.bin.5
@@ -1,6 +1,6 @@
-.TH regulatory.bin 5 "23 January 2009" "regulatory.bin" "Linux"
+.TH regulatory.bin 5 "21 December 2017" "regulatory.bin" "Linux"
 .SH NAME
-regulatory.bin \- The Linux wireless regulatory database
+regulatory.bin, regulatory.db \- The Linux wireless regulatory database
 
 .ad l
 .in +8
@@ -9,24 +9,36 @@ regulatory.bin \- The Linux wireless regulatory database
 .SS
 .SH Description
 .B regulatory.bin
-is the file used by the Linux wireless subsystem to keep its regulatory
-database information. It is read by
+and
+.B regulatory.db
+are the files used by the Linux wireless subsystem to keep its regulatory
+database information.
+.PP
+.B regulatory.bin
+is read by
 .B crda
 upon the Linux kernel's request for regulatory information for a specific
-ISO / IEC 3166 alpha2 country code. The regulatory database is kept in
-a small binary format for size and code efficiency. The
+ISO / IEC 3166 alpha2 country code.
+.PP
+.B regulatory.db
+is a newer, extensible database format which (since Linux 4.15) is read
+by the kernel directly as a firmware file.
+
+The regulatory database is kept in a small binary format for size and code
+efficiency. The
 .B regulatory.bin
 file can be parsed and read in human format by using the
 .B regdbdump
-command. The
-.B regulatory.bin
-file should be updated upon regulatory changes or corrections.
+command. The regulatory database files should be updated upon regulatory
+changes or corrections.
 
 .SH Upkeeping
 The regulatory database is maintained by the community as such
 you are encouraged to send any corrections or updates to the
-linux-wireless mailing list:
+linux-wireless and wireless-regdb mailing lists:
 .B linux-wireless@vger.kernel.org
+and
+.B wireless-regdb@lists.infradead.org
 
 .SH SEE ALSO
 .BR regdbdump (8)
diff --git a/regulatory.db.5 b/regulatory.db.5
new file mode 100644
index 000000000000..6c8aae374621
--- /dev/null
+++ b/regulatory.db.5
@@ -0,0 +1 @@
+.so man5/regulatory.bin.5.gz
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

