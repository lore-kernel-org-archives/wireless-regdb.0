Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vac1W-0000Za-8j
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 01:53:42 +0000
Received: by mail-wg0-f43.google.com with SMTP id b13so5978335wgh.10 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 18:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZvElK/O4rUN3RhzkznuAQ4vwZtaYzIur6stVxhz31+Q=;
 b=a7kfdNidzqdEiWyMTAW6BwQtiglHopBW0z4kz4k60JMIDG1owBveP5c7+ZPDXt79Q7
 I2u+gclc9xSvn1YsUVgqo+MiF/8sdexKGqsjGuLNS94y4SEgw2JsyiYqPCz74Zr8tZoY
 IJUrdHOxQdAin5A8mGLfAVM+rraZhmkBMC+k9QsVPs/P2zxVXWCs/7+xjZlcp3jXqr8Q
 SkKbb7eGrQjLCeDWVq9ebbamxPs+YBkqh4Y/FSX/u+5ss8RbWc0fcYIeEYzB0/GlC88D
 3uZvzxsMceSfsLaRVo3/ZYLoAigyI15tFAs2OoFoCSHosw6EJAGADAG9zVsnWieM8sRK pPFg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 02:53:01 +0100
Message-Id: <1382925182-7393-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1382925182-7393-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382925182-7393-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 5/6] crda: make ssl keys include stdint.h
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

This is required to fix compilation if we
move reglig to its own library.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 utils/key2pub.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/utils/key2pub.py b/utils/key2pub.py
index 4d85369..3e84cd2 100755
--- a/utils/key2pub.py
+++ b/utils/key2pub.py
@@ -59,6 +59,7 @@ def print_ssl_32(output, name, val):
 
 def print_ssl(output, name, val):
     import struct
+    output.write('#include <stdint.h>\n')
     if len(struct.pack('@L', 0)) == 8:
         return print_ssl_64(output, name, val)
     else:
@@ -85,6 +86,7 @@ static struct pubkey keys[] = {
     pass
 
 def print_gcrypt(output, name, val):
+    output.write('#include <stdint.h>\n')
     while val[0] == '\0':
         val = val[1:]
     output.write('static const uint8_t %s[%d] = {\n' % (name, len(val)))
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

