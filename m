Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=8aXiiURj7uEefCjXBJr5X4S4yr5ybboEvDWTxG8NndA=;
 b=FJwv42/D6sod/R
 SAZOdW/+iP6VrrS279G/9RdYGXYa2vbGejPQeyNxDJtrhqIN0ZiyiUMiJLjR4cX8L+6XUYLgHlrMk
 fpvle691z9x0AlE7a7ZyqSjx7YSPyAUWbLjq4fr3yinMl3xIMksq12jfCPWGLMivQfv/xHzNgyg5F
 a2Aw9xMH+U1vHPnIcVxxFKMg3UWwMHMtqHjLJYvdKbwOULw0jWRKTOwugfu/3Rbooihr5xm8MS7mU
 9Bgw9pmJE4v+hF0n085vyCIZAz1O57jGz445KGFbea50q0iLkby9u3jqNkgL1I7e+QYKmeXu+r3zD
 qHwGGzlNM6LVGc3xdfsw==;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4mSu-00AXOX-2C
	for wireless-regdb@lists.infradead.org;
	Sun, 19 Nov 2023 18:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:sender:subject:subject:to:to; s=fm2; t=1700418247; x=
	1700504647; bh=Ghajq2sXMlq4prW7btWmZuhNYsvMd0oxU8W4SfZ7+ZQ=; b=M
	+M5PC2P2UZyv6zJe1cbf5n/2yNwUw4CJH+tINbhzjwUesHIR3S4MlhftUF0iwJ6J
	BZsrExhIHhC48H9WjS/gMm3Da8U9z4ITM0ILjmd1QRYE87RO308G1HP5krrAvbBO
	k7BQTyW5Z5LRRaLyIT04otx8wuDG/n1WMGUwBegry0GgGrtI5PXRc+vt8SxfnXIh
	sbWCrp4WML9+P7Fwm/QvZE8HV+DWr/Prz0AbbjPCSNIB8D544wE7GDcmOc0UUXLh
	zNY63JIDeWMigJKoZsHNtjxZKXfczoFhiu21FLvXsrs/VxXccFpZQpilDqNnAkqg
	u2AvlCK5sth3FsE66z/bA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1700418247; x=1700504647; bh=G
	hajq2sXMlq4prW7btWmZuhNYsvMd0oxU8W4SfZ7+ZQ=; b=kqcwojTivtIs1f0Bx
	0D67roxhxxQlTEohb1ivt+vOAgb2mqwXbBtIdcGA+dZ5DS9eWbT/gh4+wtU+icbV
	XcxOOZcZZYN61Rd3q9OmuePXgKuM0vJopeA+U//7hR4uPKHxOB+r5hjwA947ignb
	xzAavZ8MAyh+ahWBJrcRkELyy0YEM58mX3RBb04NarbHjExTWb11FYzCNdWQExXd
	+EQIH6aS3yH2Wxf16RsAE2sERPUqtinECSoNhcE3VDXyX93HLse0Z6c9LZCha67+
	cw3Lveyl4xyj4J3S036VwYn9z7v4d/SO4IcuBnsxX/Azhy4Mu9Yh5cHunu65Hw7d
	Fsx4g==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Date: Sun, 19 Nov 2023 18:24:01 +0000
Message-Id: <20231119182401.7630-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for China (CN)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
List-ID: <wireless-regdb@lists.infradead.org>

China had updated regulations on 5150 MHz to 5350 MHz by
"中华人民共和国工业和信息化部令（第54号）", which released
an update to "中华人民共和国无线电频率划分规定".

The new regulation effectives from 1 July 2023.

In updated regulation, footnote "CHN44" had restricted 5150 MHz to
5350 MHz as in door only for Broadband Wireless Access systems.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index fdc2c13..24bb6d4 100644
--- a/db.txt
+++ b/db.txt
@@ -403,10 +403,11 @@ country CL: DFS-JP
 
 # Source:
 # https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
+# https://www.miit.gov.cn/cms_files/filemanager/1226211233/attach/20236/d1dc19424d5a4cfe90d631adeee8dd58.pdf
 # Note: The transmit power for 5150-5350MHz bands can be raised by 3dBm when TPC is implemented
 country CN: DFS-FCC
 	(2400 - 2483.5 @ 40), (20)
-	(5150 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5150 - 5350 @ 80), (20), DFS, AUTO-BW, NO-OUTDOOR
 	(5725 - 5850 @ 80), (33)
 	# 60 GHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
