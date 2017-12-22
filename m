Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=y2+2lE/PMR1+llAEF3De3K+3nSvQMGJUCJxMJGzvbb0=;
 b=Tf7uacLJOa8ZHB
 Li6ZCtSPfbTv9ru6nhJ2As4OO4qy5eR2/ZnHAZAfsryCzwZTfDbtRopXufM7sBBQ1ha/CjKY/fWtM
 zh31eCi3lMTLNRwBmBpopseebeVSHCRGth3rHI90pEwOGGoCaQknY7r8qfqs2iG9MMi+RkAvIZmdG
 fQPCpj/GLfe3oVZQsnC3OpwczKIA1A2a/4OqZbsXooPgAniZru2iMh4sl+nEmHRtg34KK+gYUlojm
 s3jIoNT0mcPrcLsKTNJGVAc+n0alGYJtCtDkiD7SDCNyQNbQsxODw6k0qBNXTt+dxmfV3/OFMi72n
 foe4Cy8helRocIDeP/Zg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQR-0005r5-JW
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:24 +0000
Received: from mail-it0-f70.google.com ([209.85.214.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQL-0002eV-W6
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:14 +0000
Received: by mail-it0-f70.google.com with SMTP id k186so9703607ith.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:13 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:03:01 -0600
Message-Id: <20171222060303.14478-5-seth.forshee@canonical.com>
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 4/6] wireless-regdb: Better support for
 generating public certificates
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

The current makefile rule for the public certificate calls for an
openssl config file which is not provided. Let's put the pubcert
generation into a script named gen-pubcert.sh and embed the
openssl configuration file there.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 Makefile       |  4 +---
 gen-pubcert.sh | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 3 deletions(-)
 create mode 100755 gen-pubcert.sh

diff --git a/Makefile b/Makefile
index 9532c29a1dc2..044251f64785 100644
--- a/Makefile
+++ b/Makefile
@@ -79,9 +79,7 @@ $(REGDB_PUBKEY): $(REGDB_PRIVKEY)
 
 $(REGDB_PUBCERT): $(REGDB_PRIVKEY)
 	@echo "Generating certificate for $(REGDB_AUTHOR)..."
-	@openssl req -config regulatory.openssl.conf \
-		-key $(REGDB_PRIVKEY) -days 36500 -utf8 -nodes -batch \
-		-x509 -outform PEM -out $(REGDB_PUBCERT)
+	./gen-pubcert.sh $(REGDB_PRIVKEY) $(REGDB_PUBCERT)
 	@echo $(REGDB_PUBKEY) > .custom
 
 
diff --git a/gen-pubcert.sh b/gen-pubcert.sh
new file mode 100755
index 000000000000..1a4d57999e5d
--- /dev/null
+++ b/gen-pubcert.sh
@@ -0,0 +1,18 @@
+#!/bin/bash
+
+if [[ $# -ne 2 ]]; then
+	echo "Usage: $0 priv-key out-file"
+	exit 1
+fi
+
+openssl req -new -key "$1" -days 36500 -utf8 -nodes -batch \
+	-x509 -outform PEM -out "$2" \
+	-config <(cat <<-EOF
+		[ req ]
+		distinguished_name = req_distinguished_name
+		string_mask = utf8only
+		prompt = no
+		[ req_distinguished_name ]
+		commonName = sforshee
+		EOF
+	)
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

