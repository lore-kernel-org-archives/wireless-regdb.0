Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:MIME-Version:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=X/ERgVKXlvIxZCpfFHYlzCN8ZsglBSC3DDf7IcQ5Q2U=;
 b=aOn5A7aS1ynsEp4O7g2xUTQbbn
 5hQ+1rqzrPgrr+QkrQoCbbXE8bQUQg1+l+aCWOtb+xsVSZuuSbsmxJjKCnsxhdjyDTKoSLaxXglW0
 co3Yvwk1K9jR4ANqiyzOsAhOoExjrqdYAqK8wyD7iAJ3YolHNbfhKQnZedjapkdxOuf1yhF5Rq96B
 vzdcF+y/ZJ0TTT3vtG6obxSFsS6MrG34Tn1LaeZcX13vq6FlkymeJBuANXm3FmgGzdxRj/oK+sFTA
 iKQyU11cywC1zzXXmjJBOneFsgW0vvw/nL2JOjFxEaMBNab66Bky1ZPY5fnrfcbGxusLabtvM559X
 ld6X332A==;
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcv8q-0002PI-2E
 for wireless-regdb@lists.infradead.org; Wed, 11 Nov 2020 18:46:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id s24so3294069ioj.13 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Nov 2020 10:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=iw7pd+7Piw+XxX2jyOKvkK0Mfc78jK1GM+YRGkFy7qc=;
 b=suiiyXjw9LOtw7vaymJgX6j5gE+ceY2SMUV8TDnUdqVovYGrylT54Z+M85LGYyJjhH
 HveeowlrPVAdd+vOm/7PhSHU72w6Y4kgmW55wexXkWpZDTmHs9u0nN8DkSFNHggYfhsS
 PYSE1/2tLRd3tf3gcIRzhxKSaZKSNioePu0QTPXEYupsZ08iipRXTig+nPW4+zVgHA4b
 jTdfPMQKAq9NcAFgo/8zwTqA2dF6urOWNy6/zSmedRMbfh0+Qb50tRhiHXaio5fyg6fB
 XDn9RCyaB5IE/GUpS0QHVt3D1BGjtoqW5TkXnyrDxPhshg/bl+pOLBWNYjU3p/G5U/Bq frxA==
MIME-Version: 1.0
From: Pavel Starosek <starosekpd@gmail.com>
Date: Thu, 12 Nov 2020 00:46:34 +0600
Message-ID: <CAPgWZqy_bD7KP_ONv1C7tUVw4TLw3QK_xcyYXpi_WH1=4VJwQw@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Kazakhstan (KZ)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on [1]:
* Extend 2400-2483.5 MHz range
* 5150–5250 MHz range may be up to 200 mW
* Add 5725-5850 MHz range for indoor usage
* Add 57-66 GHz range.
* In 5470-5725 range change the bandwidth from 80 to 160

[1] http://adilet.zan.kz/rus/docs/V1500010730

Signed-off-by: Pavel Starosek <starosekpd at gmail.com>
---
 db.txt | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 0bf6287..c71a03a 100644
--- a/db.txt
+++ b/db.txt
@@ -872,13 +872,15 @@ country KY: DFS-FCC
     (5735 - 5835 @ 80), (30)

 # Source:
-# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
-# http://adilet.zan.kz/rus/docs/P000001379_
+# http://adilet.zan.kz/rus/docs/V1500010730
+# http://adilet.zan.kz/rus/docs/V1500010375
 country KZ: DFS-ETSI
-    (2402 - 2482 @ 40), (20)
-    (5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+    (2400 - 2483.5 @ 40), (20)
+    (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
     (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
-    (5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
+    (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
+    (5725 - 5850 @ 80), (20), NO-OUTDOOR
+    (57000 - 66000 @ 2160), (40)

 country LB: DFS-FCC
     (2402 - 2482 @ 40), (20)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
