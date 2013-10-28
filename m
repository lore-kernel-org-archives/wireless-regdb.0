Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vaptz-0002Mp-MG
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 16:42:52 +0000
Received: by mail-we0-f180.google.com with SMTP id q59so6748885wes.25 for
 <wireless-regdb@lists.infradead.org>; Mon, 28 Oct 2013 09:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3H2CecLpebmpYlXwfDmqXUI4oYih9VSQQ0rGeQ/oDzM=;
 b=Fq0pk0u6v9wXy2Af8SSsqdIGOi8S6ZLdLzMXHgm2Atzw5w93btpanqPJDwHXXIkM97
 FxBdap6YJDoN48bircqyvpu1B0Vjsj5wgJU+GyDnyQoBl0T544Tzzijxu1g272jBjIWO
 Calsx4ZN8AKxAOSbWG9lQrnnWmnv+d8EVgfktUq2dYhC39MRn8S9wD7s27ppoO7qKEi9
 bE2u5zqon80VLutWv9NtJciB+8sPHNPw9Bcg3AUESG8mBEXcEVFKCa5t95bS3GFtwDVG
 lqC01FRD2Ryj3ueO8ud9zbs08jGER3IHdqyzR0r7S1jN5agQGyN4wHg1S2m08UU6n6BI naig==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 17:42:06 +0100
Message-Id: <1382978526-23929-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1382978526-23929-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382978526-23929-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v2 6/6] crda: make reglib a shared library
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

Now that we have quite a few helpers this puts the more
valuable helpers into a library.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 Makefile | 48 ++++++++++++++++++++++++++++++++++++------------
 1 file changed, 36 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index 9e37ccd..4a351c6 100644
--- a/Makefile
+++ b/Makefile
@@ -5,6 +5,8 @@ REG_GIT?=git://git.kernel.org/pub/scm/linux/kernel/git/linville/wireless-regdb.g
 
 PREFIX ?= /usr/
 MANDIR ?= $(PREFIX)/share/man/
+INCLUDE_DIR ?= $(PREFIX)/include/reglib/
+LIBDIR ?= $(PREFIX)/lib
 
 SBINDIR ?= /sbin/
 
@@ -23,24 +25,29 @@ UDEV_RULE_DIR?=/lib/udev/rules.d/
 PUBKEY_DIR?=pubkeys
 RUNTIME_PUBKEY_DIR?=/etc/wireless-regdb/pubkeys
 
+CFLAGS += -O2 -fpic
+CFLAGS += -std=gnu99 -Wall -Werror -pedantic
 CFLAGS += -Wall -g
 LDLIBS += -lm
+LDLIBREG += -lreg
+LIBREG += libreg.so
+LDFLAGS += -L ./ $(LDLIBREG)
 
 all: all_noverify verify
 
-all_noverify: crda intersect regdbdump db2rd optimize
+all_noverify: $(LIBREG) crda intersect regdbdump db2rd optimize
 
 ifeq ($(USE_OPENSSL),1)
 CFLAGS += -DUSE_OPENSSL -DPUBKEY_DIR=\"$(RUNTIME_PUBKEY_DIR)\" `pkg-config --cflags openssl`
 LDLIBS += `pkg-config --libs openssl`
 
-reglib.o: keys-ssl.c
+$(LIBREG): keys-ssl.c
 
 else
 CFLAGS += -DUSE_GCRYPT
 LDLIBS += -lgcrypt
 
-reglib.o: keys-gcrypt.c
+$(LIBREG): keys-gcrypt.c
 
 endif
 MKDIR ?= mkdir -p
@@ -106,39 +113,56 @@ keys-%.c: utils/key2pub.py $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(NQ) '  Trusted pubkeys:' $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(Q)./utils/key2pub.py --$* $(wildcard $(PUBKEY_DIR)/*.pem) $@
 
-%.o: %.c regdb.h reglib.h
+$(LIBREG): regdb.h reglib.h reglib.c
+	$(NQ) '  CC  ' $@
+	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $^
+
+install-libreg-headers:
+	$(NQ) '  INSTALL  libreg-headers'
+	$(Q)mkdir -p $(INCLUDE_DIR)
+	$(Q)cp *.h $(INCLUDE_DIR)/
+
+install-libreg:
+	$(NQ) '  INSTALL  libreg'
+	$(Q)mkdir -p $(LIBDIR)
+	$(Q)cp $(LIBREG) $(LIBDIR)/
+	$(Q)ldconfig
+
+%.o: %.c regdb.h $(LIBREG)
 	$(NQ) '  CC  ' $@
 	$(Q)$(CC) -c $(CPPFLAGS) $(CFLAGS) -o $@ $<
 
-crda: reglib.o crda.o
+crda: crda.o
 	$(NQ) '  LD  ' $@
 	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS) $(NLLIBS)
 
-regdbdump: reglib.o regdbdump.o
+regdbdump: regdbdump.o
 	$(NQ) '  LD  ' $@
 	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)
 
-intersect: reglib.o intersect.o
+intersect: intersect.o
 	$(NQ) '  LD  ' $@
 	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)
 
-db2rd: reglib.o db2rd.o
+db2rd: db2rd.o
 	$(NQ) '  LD  ' $@
 	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)
 
-optimize: reglib.o optimize.o
+optimize: optimize.o
 	$(NQ) '  LD  ' $@
 	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)
 
 verify: $(REG_BIN) regdbdump
 	$(NQ) '  CHK  $(REG_BIN)'
-	$(Q)./regdbdump $(REG_BIN) >/dev/null
+	$(Q)\
+		LD_LIBRARY_PATH=.:$(LD_LIBRARY_PATH) \
+		./regdbdump $(REG_BIN) >/dev/null
 
 %.gz: %
 	@$(NQ) ' GZIP' $<
 	$(Q)gzip < $< > $@
 
-install: crda crda.8.gz regdbdump.8.gz
+install: install-libreg install-libreg-headers crda crda.8.gz regdbdump.8.gz
 	$(NQ) '  INSTALL  crda'
 	$(Q)$(MKDIR) $(DESTDIR)/$(SBINDIR)
 	$(Q)$(INSTALL) -m 755 -t $(DESTDIR)/$(SBINDIR) crda
@@ -161,6 +185,6 @@ install: crda crda.8.gz regdbdump.8.gz
 	$(Q)$(INSTALL) -m 644 -t $(DESTDIR)/$(MANDIR)/man8/ regdbdump.8.gz
 
 clean:
-	$(Q)rm -f crda regdbdump intersect db2rd optimize \
+	$(Q)rm -f $(LIBREG) crda regdbdump intersect db2rd optimize \
 		*.o *~ *.pyc keys-*.c *.gz \
 	udev/$(UDEV_LEVEL)regulatory.rules udev/regulatory.rules.parsed
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

