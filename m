Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Jlc3gGOT4Z5AxtBkF7Pb75/GsDrKJ563+cHIiE3Zvz8=;
 b=M7BOB2BvmRuIE4
 ClITaRtW9HoVpqOX+n0edJF40yNAhv+CNpSLLMvACGlMfk44c+VXnozt8gKl6QOEQbvfX/Fm97dj5
 fT9FQjfz+iUyewLiN/GskEh/3oyVTwrN2z3szY2u21dS22KeD7f1TSImDJ0FMo/LgWIQJHAEwtmYc
 0RsaNQ2tcEXyXgBzvcLuSfYurNEIl69bLr6voHncbOLirikESvqoL++xaAVjBPyqwzt+X3gV3+1hx
 AJKWXf858PdzHR+yvZ5fo6OdX8yvL0+TE7lUcFhqdeCX6S2PSOBqgVW7K5lPaqoBlwQTN3grlt3Sm
 4M6HEcgpGuSy78Etdl/Q==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQR-0005qh-Jb
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:24 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQI-0002e0-KT
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:10 +0000
Received: by mail-io0-f198.google.com with SMTP id 3so7458174ioz.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:10 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:02:59 -0600
Message-Id: <20171222060303.14478-3-seth.forshee@canonical.com>
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 2/6] wireless-regdb: Restore generation of
 old format database files
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

Johannes removed generation and installation of these files when
adding support for the new database format. We need to keep
generating these files to support distros still using CRDA, so
restore support for building and installing these files in the
makefile.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 Makefile | 35 +++++++++++++++++++++++++++--------
 1 file changed, 27 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index e708982a453d..9532c29a1dc2 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,7 @@
 # Install prefix
 PREFIX ?= /usr
+CRDA_PATH ?= $(PREFIX)/lib/crda
+CRDA_KEY_PATH ?= $(CRDA_PATH)/pubkeys
 
 MANDIR ?= $(PREFIX)/share/man/
 
@@ -28,26 +30,33 @@ REGDB_AUTHOR ?= $(shell if [ -f $(DISTRO_PRIVKEY) ]; then \
 		fi)
 
 REGDB_PRIVKEY ?= ~/.wireless-regdb-$(REGDB_AUTHOR).key.priv.pem
+REGDB_PUBKEY ?= $(REGDB_AUTHOR).key.pub.pem
 REGDB_PUBCERT ?= $(REGDB_AUTHOR).x509.pem
 
+REGDB_UPSTREAM_PUBKEY ?= sforshee.key.pub.pem
+
 REGDB_CHANGED = $(shell $(SHA1SUM) -c --status sha1sum.txt >/dev/null 2>&1; \
         if [ $$? -ne 0 ]; then \
-                echo maintainer-clean $(REGDB_PUBCERT); \
+                echo maintainer-clean $(REGDB_PUBKEY) $(REGDB_PUBCERT); \
         fi)
 
 .PHONY: all clean mrproper install maintainer-clean install-distro-key
 
-all: $(REGDB_CHANGED) regulatory.db.p7s sha1sum.txt
+all: $(REGDB_CHANGED) regulatory.bin sha1sum.txt regulatory.db.p7s
 
 clean:
 	@rm -f *.pyc *.gz
 
 maintainer-clean: clean
-	@rm -f regulatory.db regulatory.db.p7s
+	@rm -f regulatory.bin regulatory.db regulatory.db.p7s
 
 mrproper: clean maintainer-clean
-	@echo Removed public key, regulatory.db* and compressed man pages
-	@rm -f $(REGDB_PUBCERT) .custom
+	@echo Removed public key, regulatory.bin, regulatory.db* and compressed man pages
+	@rm -f $(REGDB_PUBKEY) $(REGDB_PUBCERT) .custom
+
+regulatory.bin: db.txt $(REGDB_PRIVKEY) $(REGDB_PUBKEY)
+	@echo Generating $@ digitally signed by $(REGDB_AUTHOR)...
+	./db2bin.py regulatory.bin db.txt $(REGDB_PRIVKEY)
 
 regulatory.db: db.txt db2fw.py
 	@echo "Generating $@"
@@ -64,6 +73,10 @@ regulatory.db.p7s: regulatory.db $(REGDB_PRIVKEY) $(REGDB_PUBCERT)
 sha1sum.txt: db.txt
 	sha1sum $< > $@
 
+$(REGDB_PUBKEY): $(REGDB_PRIVKEY)
+	@echo "Generating public key for $(REGDB_AUTHOR)..."
+	openssl rsa -in $(REGDB_PRIVKEY) -out $(REGDB_PUBKEY) -pubout -outform PEM
+
 $(REGDB_PUBCERT): $(REGDB_PRIVKEY)
 	@echo "Generating certificate for $(REGDB_AUTHOR)..."
 	@openssl req -config regulatory.openssl.conf \
@@ -103,7 +116,13 @@ install-distro-key: maintainer-clean $(DISTRO_PRIVKEY)
 #	make maintainer-clean
 #	make
 #	sudo make install
-install: regulatory.db.5.gz
-	install -m 644 -t $(DESTDIR)/$(CRDA_PATH)/ regulatory.db
+install: regulatory.bin.5.gz regulatory.db.5.gz
+	install -m 755 -d $(DESTDIR)/$(CRDA_PATH)
+	install -m 755 -d $(DESTDIR)/$(CRDA_KEY_PATH)
+	if [ -f .custom ]; then \
+		install -m 644 -t $(DESTDIR)/$(CRDA_KEY_PATH)/ $(shell cat .custom); \
+	fi
+	install -m 644 -t $(DESTDIR)/$(CRDA_KEY_PATH)/ $(REGDB_UPSTREAM_PUBKEY)
+	install -m 644 -t $(DESTDIR)/$(CRDA_PATH)/ regulatory.bin regulatory.db
 	install -m 755 -d $(DESTDIR)/$(MANDIR)/man5/
-	install -m 644 -t $(DESTDIR)/$(MANDIR)/man5/ regulatory.db.5.gz
+	install -m 644 -t $(DESTDIR)/$(MANDIR)/man5/ regulatory.bin.5.gz
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

