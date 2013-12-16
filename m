Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vsb1q-0007va-Jx
 for wireless-regdb@lists.infradead.org; Mon, 16 Dec 2013 16:28:23 +0000
Received: by mail-we0-f179.google.com with SMTP id q59so4769367wes.24 for
 <wireless-regdb@lists.infradead.org>; Mon, 16 Dec 2013 08:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:from:date:message-id:subject:to:cc:content-type;
 bh=JtF5Kpvy6a/OlXS5AGDT5mfh2UQG2an6DnUQGSkeRs4=;
 b=Gzmm7dCuum3ABLva5tBVZFupvTdAefCSJtMB9SDO7wpmlTEfZTPSIlvR1ihCUpP6Q1
 b0u+xwtJ42GnbQryhAfRxA36zOOJpOnQRrZXqTO907Y7MlljojxS4pnZUv20ucZ/92k7
 +2bsfoXUtMnOrPeT6exKrjGZv/r52DCvnz4HYKlZVtSjjJlQyhp+cD8qtmPJt5/Pza53
 HVV7d31NUUbfwMCrIFxSdEjkXNtfdWFm9Ql9lJlXhigSHnUuw26WVBxhILZoFEPXclXG
 rL+6rcPSyEGcacXM0A/yNdqsb0R79idOzY9E/bkIwd9Wa91PTTJIWJML639e/6w/5zmi lTxw==
MIME-Version: 1.0
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Mon, 16 Dec 2013 21:57:39 +0530
Message-ID: <CABPxzY+CnnssaZpqgWuJ=QH-k=zJbHpLaGkJXAQSWSxq7kKa6Q@mail.gmail.com>
Subject: [wireless-regdb] [RFC] crda: Fix the linking order to avoid
	compilation error
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
To: John Linville <linville@tuxdriver.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

While linking the crda.o and libreg.so, first put crda.o
and then -lreg. This fixed the below error:

# make
  GEN  keys-gcrypt.c
  Trusted pubkeys: pubkeys/linville.key.pub.pem
  CC   libreg.so
  CC   crda.o
  LD   crda
crda.o: In function `main':
crda/crda.c:196: undefined reference to `reglib_get_rd_alpha2'
collect2: ld returned 1 exit status
make: *** [crda] Error 1

Note: This still doesn't fix the below error (will send another mail)

  CHK  /usr/lib/crda/regulatory.bin
Database signature verification failed.
Invalid or empty regulatory file, note: a binary regulatory file should be used.
make: *** [verify] Error 234

Signed-off-by: Chaitanya T K <chaitanya.mgit@gmail.com>
---
 Makefile |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 4a351c6..0b2f0d7 100644
--- a/Makefile
+++ b/Makefile
@@ -28,10 +28,11 @@ RUNTIME_PUBKEY_DIR?=/etc/wireless-regdb/pubkeys
 CFLAGS += -O2 -fpic
 CFLAGS += -std=gnu99 -Wall -Werror -pedantic
 CFLAGS += -Wall -g
-LDLIBS += -lm
 LDLIBREG += -lreg
+LDLIBS += $(LDLIBREG)
+LDLIBS += -lm
 LIBREG += libreg.so
-LDFLAGS += -L ./ $(LDLIBREG)
+LDFLAGS += -L ./

 all: all_noverify verify

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

