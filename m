Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=miIWqRjLpZ31euqcT8gDP9q05GTApcUGxoLNnhmlik4=;
 b=d3sGbP+T7fzvc2
 rQ40/16MqkAhkCh7v0dZVN7hUP23irrhjI9VfIImk0Hcj7iPgsNc5PPY5jb2L+AnGH7zvC75jfSwQ
 zvWyeTMJ128qWYhE5tu0oHpuuhhjER9lkA1vFFyP1lX8fM/SxRBd0p/3DwcVawnksa4MbT2BL/eBI
 EP66QE6lkIhHEyReP2D8jTwdMyV6sVARVieXrLw+PPtVPu3AWPkFp9vxgrJxwfbsFh37ym3jsqTMu
 tplXlQ9v5Uub6C72zbHflfHA4gOrVILitlWIqjH9/RmGjFTk4NJ001p4XcwXuyUMrwNoftOYHtMVg
 3xiYr+Yx/O4CC1hQYtAg==;
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giQwB-0001lX-5o
 for wireless-regdb@lists.infradead.org; Sat, 12 Jan 2019 21:35:29 +0000
Received: by mail-ua1-x929.google.com with SMTP id z11so5875366uaa.10 for
 <wireless-regdb@lists.infradead.org>; Sat, 12 Jan 2019 13:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc;
 bh=tdhERbH3og20xP0v9oZ0pywLlp4gYQ4rQv7i+MamdGU=;
 b=JlUi00hcuqRpYUP3u4vBU7WPr9kQVUpKHBHnC7sEbqb4A4yHz7sDnOUXT7jq+mapXH
 C/rdeC80LJ8lEddiDaAlsAR/YnSBViesqmldYmSWmg3hoSIy5cGf05dEIPlxPBcvjA++
 Q2TltIV2e/oaPf0RdMljpBWqCQ2K6tOV8k2kuj+GSx1pc0SBvf23twwI9DND1tWqyh9h
 bUxL4Rhqj4XlcsPvwIzKmK2RyrfFSrV2ODn9Oy5FlHzO/qoQLdjOlTb+OvXuyXPogGfj
 VcrqemzNM15sgj54E9/BGrB+ZCIJxHbNi3/GRfdoh9AEMzsEq1e90yfPM163SXeBChVK KSsw==
MIME-Version: 1.0
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Sat, 12 Jan 2019 21:35:11 +0000
Message-ID: <CALjTZvZ6gAVH17fZwzM=PeO6CjtQCGoep=bqi6yYb6TJ6u5nfg@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz rule
 for Portugal (PT)
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

According to [1], SRD devices in this range are allowed in Portugal, as
specified in this document (page 56), and in compliance with ETSI EN 300 440-1.

[1] https://www.anacom.pt/streaming/25.5_10.000mhz.pdf?contentId=271706&field=ATTACHED_FILE

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>

---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index fa5c0e0..66751f0 100644
--- a/db.txt
+++ b/db.txt
@@ -1044,6 +1044,8 @@ country PT: DFS-ETSI
  (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
  (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
  (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+ # short range devices (ETSI EN 300 440-1)
+ (5725 - 5875 @ 80), (25 mW)
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

-- 
2.20.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

