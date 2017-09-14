Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sc343EjWr4WhiqvHH3GG7SyrfoQkdWbXYsZ5mzRfPko=;
 b=fh5SqvAPW0JCwT
 nY0tUElJacCwbRSCSrvGc/GUfzTPa/D08w5i8JutMgMalnyn+ksLpycmCUnbnn0e+JGXLNA3/RPQx
 Z7R1ecTU8qatkb7JdCd8bgmCiFaMYogzGJspyCPa3Zy7qG5qCFXxTqOe15lG1KhIOZJ8FDg29jaGC
 9LJFpEMypPncAsqU5pD/bBFNiyPmcEH0RY2LSsrHM2nbqkJMvegaPU1vPuqbcnMchjH3wLanjjCF6
 zJdWpw0RiP4zxEco3bG4nfXDZ0ehJIjFo6FntldAHOQeX6AMLJJT2g380FC8kah5MfII095Gq8qNO
 Cs5DAC1GUzOt70Acj57w==;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsOgW-0001RJ-8G
 for wireless-regdb@lists.infradead.org; Thu, 14 Sep 2017 07:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-sender
 :x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=Tau84K5DeaCIMkrPNH
 In85BPYAHlv+1CmNa0VsdnpQY=; b=EHPJq3ph9rz33tD+FpE22uYb6CLKq58zej
 xLlaaQOgavDALJqQ9iTx6y9pYsNRcIsZL+DqyUcsuxAb6+Bv/oExUvixcgg32gFD
 Qbv7biwL0ruPsZEIX4X8WlZIkXhNxcBlJTH08KlKMrNYPPWGMEzuH2OUiahCtIpn
 Wbkg8+VWDz/0Hyxh/Fvsu8LYXdaKhow61HfnpOBEGW0D74DQ8WZrnRIGPK1eKI7b
 Iw2slKEnrbvds4QOWgU+taaHHif0hhSIbH6mdlLOlyPIj5KX6DwOFYl60QfM5OSq
 nAmRtVMZIBlSRD3IAzlWmMoX6nmz4PlRt8oLtUPoNNleXPZ0VP3Q==
Date: Thu, 14 Sep 2017 17:31:18 +1000
From: Edwin Steele <edwin@wordspeak.org>
Message-ID: <20170914073118.GA42838@mercury.local>
References: <20170823081100.GB44003@mercury.local>
 <20170901154715.hpkm4iluogxqj3lz@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170901154715.hpkm4iluogxqj3lz@ubuntu-xps13>
Subject: [wireless-regdb]  [PATCH v2] Update rules for Turkey 5ghz
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Update rules for Turkey 5ghz

Based on the information from [1] the power limit for 5170-5250 Mhz
can be increased. Additionally 5170-5330Mhz are restricted to indoor
use.

There are references to e.i.r.p density in [1] that will affect the
power available for wide channels, but they are not reflected in
this change as it's unclear how they would be specified.

[1] https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
Signed-off-by: Edwin Steele <edwin at wordspeak.org>

diff --git a/db.txt b/db.txt
index 0bc068e..a563a54 100644
--- a/db.txt
+++ b/db.txt
@@ -1158,11 +1158,15 @@ country TN: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
+# Source:
+# By-Law on Short Range Radio Devices (SRD) Oct 2015
+# https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf
+# Article 8
 country TR: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (20)
+	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

