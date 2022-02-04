Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:Message-Id:
 Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Ivn5U2mZVK82opXHPWkbO5acoU01Tr/eIIYehyRiDbA=;
 b=NuCagqDggIK1Vx
 FkGkvb6w9J7vw2KVsHlk/QRJ/U8AAqc0EGIvMHZKhzWvV1XLNDM5U54hhDRmNgONMWeQ0iU13397i
 ifelKzQzfAuiGTc4FpmA2z6eytnydXph2aEkSsM+IkhhtXB+HTU3daloGwb9TATjI8HFIdMJ/j93n
 IvFN9nSBSHge9BpCy+TWufDf4auy0X1Dp5uL+XLB9AunFgKqIHe8W+X0SLHJkZMP/qz3L6mQ3scSe
 jErjNq75DSrOB+f7d8jAoDM2B1ZV8Jl200cwqZlPAOxPHKK0iopmpet44o8ptDe+SgUP3l553QI1r
 He/xkBNo6qvTghWzhZDg==;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nG0NT-004iSJ-4Q
 for wireless-regdb@lists.infradead.org; Fri, 04 Feb 2022 15:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 cc:cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; bh=OgU2VHGC0hT47LbeDTqJjHF9cJjuXmPUrZw//u
 DBbE4=; b=Vh68+mmL/Xd1olF9qI2kZVf9Q2BSpXc3yk3QJCMNB0N+N13TaUqBBa
 6AcnUcUYuRe/D+75f6f18t287+3Pe1uD27wE8m1AJShDlXZx6n/WBYdKHJQ8j43I
 ogBOjN7VY5Une+dUHv2DoRmiZaVagmu3U7nIS/qghR0UoT9lGRBwsdYEP3CJmMjm
 MtybkiWmeRkNtnUNZz0RcH5iRUB/f80N4zCalE+CF3ZY/7ioMkajyAEP8H7e3oLK
 z5+AObNadkSZOZ9z3XXpTq43QOkJjXGg4OowB07MY2EUEf3156+EAZeEXRE/Nr4w
 1fFrVlkJ5jsQ0axL3YGE4c3KX87h+V1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OgU2VH
 GC0hT47LbeDTqJjHF9cJjuXmPUrZw//uDBbE4=; b=AR64hYfgNwfppr+uzGyq30
 aFePuN3vg3P2P1GDaFbyslS04rXlUyp9C2VebVgV8zxW8HuX7gj2DxBmQLDEyyiy
 bO9p43NUh5j+/lAxBFGqGr9NtJgVGfOECY7QnMPNaH4VogdlORUkUeDoYasxvbwM
 4TwPB6OsrSzU1EmLBZUCBsbulUba0KauYHrxXF3/TFGZLFlGdNQXryCQvrIc4Xfo
 0DpjxCEkmaHVUJI/5TlETPiDDsxe/fuYvBpPW9VCuXiZnMwRjDcJ/cph8sFUZ5Up
 bLBS8Y42s3EO8y8ORPovNw/HdkpLMmGOGfhpa5QmGRLa6N78kZ2Ieb72AOrcdyPA
 ==
Mime-Version: 1.0
Message-Id: <9a460b85-4e1b-40b2-8691-3f999331c76b@www.fastmail.com>
Date: Fri, 04 Feb 2022 15:19:29 +0000
From: "Jiaxun Yang" <jiaxun.yang@flygoat.com>
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

China had updated regulations on ISM frequencies by
"工信部无〔2021〕129号".

The new regulation effectives from Jan 1 2022.

Update regdb accroading to it's attachment "2400MHz、5100MHz
和 5800MHz 频段无线电发射设备射频技术要求".

Announcement: https://wap.miit.gov.cn/zwgk/zcwj/wjfb/tz/art/2021/art_e4ae71252eab42928daf0ea620976e4e.html
Attachment: https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf

Those documents are only available in Chinese.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 db.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 6dbda3c..e6fd657 100644
--- a/db.txt
+++ b/db.txt
@@ -346,11 +346,12 @@ country CL: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (20)
 
+# Source:
+# https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
 country CN: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5350 @ 80), (23), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (33)
 	# 60 GHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
 	(57240 - 59400 @ 2160), (28)
-- 
2.34.1.windows.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
