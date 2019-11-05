Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=RFEK5C4cm2j+cOGJ6QyRLuZ5iW/8vue6zfwfs7myqpw=;
 b=Exwmmhojuq4P/y
 znL2/t8f0B9VxonL+vcmDAXgCypgy3iAaRl/dkXMrAFtvXJMHXJHz1OlkrXC61Ll3oAs+QGUdzn0E
 HpsxVD6bJZ/pdDSTjLLW3ZAFvpGrvea2sLVwk0g8EHgk0WMPsD/1m1OFGKxuQUGqQt7ks+mViVI9b
 2wRw66+R9sqWvag2cRkP+E4ghZEs+AI0U1D7wexch2fqm2qb+r1M3+h1wG14f2YgTyOQM/Lxe5E6D
 8KghnImZpy3IrDdXz2RZjnf9d4xLnsV+o1gIiv+jVOj09fbccjYIxLWV4tvlGUTzwKj4+n83WaZxR
 JPtmn8ah7T/1OYdXc4zw==;
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7lr-0001fu-JL
 for wireless-regdb@lists.infradead.org; Tue, 05 Nov 2019 22:57:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id q26so17180868pfn.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 Nov 2019 14:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org;
 s=google; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ux3dKW0prKZO3aM0tHhSumJ6CNbG27Yo0nWnQJPUF48=;
 b=JvHUjacDAHdn/08O3UuEAK7NeX1bL0lhpzAPZt7jGw/Q0wsOF5YfM5K3aEd/6J3ivJ
 x3QUBw4ZHNEx1VdKPGr418kDGjypB6aZJLWxOD1fdZ80STrdAE/lCkfRN6ZW08DglH9j
 bYrror2orKBgwX/yScm7T/skOa52sf4U9kIRI=
From: Brian Norris <briannorris@chromium.org>
Date: Tue,  5 Nov 2019 14:57:51 -0800
Message-Id: <20191105225751.1233-1-briannorris@chromium.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] crda: Makefile: fix .so compilation line
 with some compilers
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
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Brian Norris <briannorris@chromium.org>
List-ID: <wireless-regdb@lists.infradead.org>

Write the CC rule such that it only tries to produce a single output
file (the .so). When including the .h files in the compiler invocation,
this suggests we should be producing pre-compiled headers too, which
doesn't make sense in this context, and Clang happens not to like.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
Yes, I know CRDA is deprecated.

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 6169b1f307da..6ca26f341dfa 100644
--- a/Makefile
+++ b/Makefile
@@ -114,9 +114,9 @@ keys-%.c: utils/key2pub.py $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(NQ) '  Trusted pubkeys:' $(wildcard $(PUBKEY_DIR)/*.pem)
 	$(Q)./utils/key2pub.py --$* $(wildcard $(PUBKEY_DIR)/*.pem) $@
 
-$(LIBREG): regdb.h reglib.h reglib.c
+$(LIBREG): reglib.c regdb.h reglib.h
 	$(NQ) '  CC  ' $@
-	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $^
+	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -shared -Wl,-soname,$(LIBREG) $<
 
 install-libreg-headers:
 	$(NQ) '  INSTALL  libreg-headers'
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

