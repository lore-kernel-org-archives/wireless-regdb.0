Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=G9Z2BmPq5H+5RRYIffJ5ivZ3GdKUGyV3rqzkIfEvZzw=;
 b=rXcu7F57jdnpXw
 DnfdFwwwIAUxA98HtAqR6YVZ1kpmYrJcy/xojXGs/Q6XkA4Z0tcE/k2lUUNBDdzKTImSlGeQmHTOX
 c4ZM6XTbOJ7hjQDNnjSLAG4cLjuffittlTIiumIKdmDxS2T32Xg+iLU1XNapF0YTJT108YDiYdv6F
 y+EvyC0Th28LinPCImlvn+QNHv02iTfGkCQKbN6QE/76k1f+H2XAyK4uH37Ru5eLNIN8K7XG4Sb+A
 6hnYEu52sQxKnzDYx4Fr7jYrTZbp+7/vQXIn2tssvEgdBDh0nGUmtGwecDL/x+XWtqhKllgoybHVI
 0tFLYuZFZ97upVwAq4Bw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivwBQ-0001OX-Db
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:39:34 +0000
Received: from mail-yw1-f71.google.com ([209.85.161.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1ivwBN-0002R9-Vt
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:39:30 +0000
Received: by mail-yw1-f71.google.com with SMTP id p193so6971651ywp.16 for
 <wireless-regdb@lists.infradead.org>; Sun, 26 Jan 2020 20:39:29 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Sun, 26 Jan 2020 22:39:26 -0600
Message-Id: <20200127043926.71812-1-seth.forshee@canonical.com>
In-Reply-To: <20200127042059.GD3730@ubuntu-xps13>
References: <20200127042059.GD3730@ubuntu-xps13>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Indonesia (ID)
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
To: wireless-regdb@lists.infradead.org
Cc: Pandu Gunawan <pandu.gunawan@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Update based on new regulations released in April 2019:

https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 9c4b447536e4..265dc688b0b4 100644
--- a/db.txt
+++ b/db.txt
@@ -726,9 +726,10 @@ country HU: DFS-ETSI
 	(57000 - 66000 @ 2160), (40)
 
 country ID: DFS-JP
-	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
-	(2402 - 2482 @ 20), (20)
-	(5735 - 5815 @ 20), (23)
+	# ref: https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019
+	(2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
+	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
+	(5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
 
 # IE as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.24.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

