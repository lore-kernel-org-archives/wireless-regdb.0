Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=B6xg5CglkmJ9inn7I0wnz4bmKgLzhod8UnDHKS2r+Z8=;
 b=MkvTIFWbBgqS/o7DUO4JM/zEUj
 CIqPMaWGIozRqkeOSrNanDCE4bZBgiuPMNpyfAV9iFNsDclweKlRAx6rG6GLEURjx21KSEvJwLoZo
 +VZYqEQ5KE7y9ciKeF3+WSAVlw3Cik9p4zqWgyvUgFaD98J7wkQ87BbN0Fkow1ytF2eIDuCCXNNSS
 RWAcTSQQwUzvogskxai4/FylYvSJzT4YYzbwfikLB9i4LOEM3WLfYZfLEBgP5+7tank4QNRgUH9mW
 UPOfmyjj2jrrIFxRp2u7OglIjk1FvNrnrzTPZNtq7RMMGVcknWwdks3G0uE/oGGhmhFK+M9ZDJkXC
 U9naKhPg==;
Received: from mout.kundenserver.de ([212.227.17.24])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l85QT-00026B-CC
 for wireless-regdb@lists.infradead.org; Fri, 05 Feb 2021 18:01:50 +0000
From: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
Date: Fri,  5 Feb 2021 19:00:54 +0100
Message-Id: <20210205180054.1031-1-nicolas.cavallari@green-communications.fr>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Do not hardcode
 'sforshee' in the certificate commonName
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

gen-pubcert.sh hardcodes the 'sforshee' common name when generating the
certificate.  Make it depend on REGDB_AUTHOR instead, which defaults to
$(whoami).

Signed-off-by: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
---
 Makefile       | 2 +-
 gen-pubcert.sh | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 2f1ed93..02176ec 100644
--- a/Makefile
+++ b/Makefile
@@ -80,7 +80,7 @@ $(REGDB_PUBKEY): $(REGDB_PRIVKEY)
 
 $(REGDB_PUBCERT): $(REGDB_PRIVKEY)
 	@echo "Generating certificate for $(REGDB_AUTHOR)..."
-	./gen-pubcert.sh $(REGDB_PRIVKEY) $(REGDB_PUBCERT)
+	./gen-pubcert.sh $(REGDB_PRIVKEY) $(REGDB_PUBCERT) $(REGDB_AUTHOR)
 	@echo $(REGDB_PUBKEY) > .custom
 
 
diff --git a/gen-pubcert.sh b/gen-pubcert.sh
index 1a4d579..a7e8538 100755
--- a/gen-pubcert.sh
+++ b/gen-pubcert.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 
-if [[ $# -ne 2 ]]; then
-	echo "Usage: $0 priv-key out-file"
+if [[ $# -ne 3 ]]; then
+	echo "Usage: $0 priv-key out-file common-name"
 	exit 1
 fi
 
@@ -13,6 +13,6 @@ openssl req -new -key "$1" -days 36500 -utf8 -nodes -batch \
 		string_mask = utf8only
 		prompt = no
 		[ req_distinguished_name ]
-		commonName = sforshee
+		commonName = $3
 		EOF
 	)
-- 
2.30.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

