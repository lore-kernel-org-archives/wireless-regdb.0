Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A045E63CA4
	for <wireless-regdb@archiver.kernel.org>; Sun, 25 Jan 2026 21:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SshLZhQzifZiuzEz2HIJWPdY47YZPx5r4Q79+b43iVk=; b=Hjf2WbIeisHNc7HisJYrHmb92O
	lvS9fUVyRDZWebBCqFzc0a9KOHucdUUW/8AfYJY3gapjSG2uP1FDhgpCu1F7DO+qA4lu2zBPM3uUs
	zTSJ236wAw3mh3QV11xXJ+JD+JYC5K8XkOiUZomdfvigggMNGWD5pWNM8wIrG+YmRCN9svImLb+PO
	WlS8L2vjJjRhkC5rx538AxMbrnYkT14ftSC2DFvpGk6jbTV1f9bWGUdrzEDKen+/MLR23gzyq1A7j
	l8TScrqN5hH8BvSMOHhCTD35Juix5HX7KJ6Sb+1ZAOY4vnXJoZJerHKGJi9rYeccXpvsSgN4zGdvs
	PBL9ynxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk7cy-0000000BWpy-0MLl;
	Sun, 25 Jan 2026 21:26:36 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk7cv-0000000BWpf-2gyx
	for wireless-regdb@lists.infradead.org;
	Sun, 25 Jan 2026 21:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=SshLZhQzifZiuzEz2HIJWPdY47YZPx5r4Q79+b43iVk=; b=Tjq6YAupEKmjpf98+i7mA36mCE
	0Wvm2qYz5bjZb+okn10w80sMLG5DACggBmC5mTr5Rg+a1L5UvnYIonOul7hySSa9g842ZUhz4HiCd
	scUyj7n6J13Zx8+veRja8WVC6yYluN2lVDu1EsPqiP+JgeoAy/Gju5jPbot28qbdgDUvyX2BKl2Vw
	CWM8ZvpI2+WJ2EPaTCdq+VCBA4nks61ZvYH0eFaTD3VOa8AZ1/XVvjz1nEgdZY93hBRPgtik/gOOD
	BERu1+fTr33zDTOiw7ZRovsXf8w/iOI9aRpN9InjMkylll6fazsqdyMEassO0sS/a7a//1xf5e5Yr
	HEY8+P6g==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <bage@debian.org>)
	id 1vk7ct-00FgtB-9k; Sun, 25 Jan 2026 21:26:31 +0000
From: Bastian Germann <bage@debian.org>
To: linux-wireless@vger.kernel.org
Cc: Bastian Germann <bage@debian.org>,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Port RSA signing to cryptography lib
Date: Sun, 25 Jan 2026 22:26:19 +0100
Message-ID: <20260125212622.28370-1-bage@debian.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Debian-User: bage
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_132633_683151_7CF1C166 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Port the RSA signing from the deprecated M2Crypto library to the
cryptography library.

M2Crypto is no longer actively maintained. The cryptography library is
the recommended replacement, offering better maintenance.

Remove unused hashlib import.

Signed-off-by: Bastian Germann <bage@debian.org>
---
 db2bin.py | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/db2bin.py b/db2bin.py
index 29ae313..a4fa3e5 100755
--- a/db2bin.py
+++ b/db2bin.py
@@ -2,7 +2,6 @@
 
 from io import BytesIO, open
 import struct
-import hashlib
 from dbparse import DBParser
 import sys
 
@@ -125,19 +124,27 @@ if len(sys.argv) > 3:
     # Load RSA only now so people can use this script
     # without having those libraries installed to verify
     # their SQL changes
-    from M2Crypto import RSA
+    from cryptography.hazmat.primitives import hashes, serialization
+    from cryptography.hazmat.primitives.asymmetric import padding
+
+    # load the private key
+    with open(sys.argv[3], 'rb') as key_file:
+        key = serialization.load_pem_private_key(key_file.read(), password=None)
 
     # determine signature length
-    key = RSA.load_key(sys.argv[3])
-    hash = hashlib.sha1()
-    hash.update(output.getvalue())
-    sig = key.sign(hash.digest())
+    sig = key.sign(
+        output.getvalue(),
+        padding.PKCS1v15(),
+        hashes.SHA1()
+    )
     # write it to file
     siglen.set(len(sig))
     # sign again
-    hash = hashlib.sha1()
-    hash.update(output.getvalue())
-    sig = key.sign(hash.digest())
+    sig = key.sign(
+        output.getvalue(),
+        padding.PKCS1v15(),
+        hashes.SHA1()
+    )
 
     output.write(sig)
 else:

