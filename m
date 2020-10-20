Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=T+LRnCf0vIiMYuLBnpNBE7c6cuvEplHS8gX3xoHRd54=;
 b=o0FwD29ReCQpJ3QV8PrnOK8aYx
 IQE+ZiOoCiEhZ+UuzZEKSxra0fOT0kKEeIVr6Xni8nZxZJKSO+uOQbj5hDeeqVwfEDOQC6/kEQThN
 rIfse2guA5390oMmPNIHYk0BLmy85jww6LuwpjOl9+AXuhFMlcDgL3MALHzIhfWhKEQvpLUfm5nTR
 x0QH4vx7Bj6BJjyKZXA2198StqNrWX6cwlJuwWEqm8EKp0bBNjkOOHmH483kK92suDZ70zWLnkioe
 E8t5Cs/zkY4ThFjvCWDU107riXA/cTlH7JvHCC+YrpgcbPNOoKQU4wMuCT4Gnh17waVzLa0BrYwlk
 DeYDfyoQ==;
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUwCY-0002tz-8s
 for wireless-regdb@lists.infradead.org; Tue, 20 Oct 2020 18:17:39 +0000
Received: by mail-ej1-x642.google.com with SMTP id md26so4122997ejb.10 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 Oct 2020 11:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=2c+ZSN2VXHs/jpHTZppiiq12wLhTe/sAfOHIeT4XN+E=;
 b=J74FpGnz2az22YWvbeS2fpKIgRoef+7QFUHc2RwtC4Wa86zUs6bhWRvSGTOKf1jKQz
 kGRJ0aojBHhuPrfpSPhAfQcsASuttccLdskq/30Ye3N5+LoGlow3Q4LdYgkld0jHrzSn
 VaLJsfIuqkDCGBRPswCi/ALPB3TqEx+E2N36nlFA+f153uc91Asit1iXtOvi2s5WvRnN
 zgz9lvvbDf4nkucDE3ESXx8AsBefxCzEyU/GL7NAO/Yz136L1lxocQxQUX7Lwy9sKtNe
 jXmHgurLeiPRwTkqhTLb55YvekQBJKXONMxTmainX8w+FAuQLlKWlxdyNaYDMsuLIXDM koTQ==
Date: Tue, 20 Oct 2020 23:17:31 +0500
From: Abdul Rauf <abdulraufmujahid@gmail.com>
Message-ID: <20201020181731.GA18865@leagueoflegends>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Pakistan (PK) on 5GHz
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

Update range to 5.725 - 5.875 Ghz
as mentioned at https://fab.gov.pk/type-approval/

Signed-off-by: Abdul Rauf <abdulraufmujahid@gmail.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ac32483..ce8449c 100644
--- a/db.txt
+++ b/db.txt
@@ -1243,8 +1243,10 @@ country PH: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country PK: DFS-JP
+	# https://fab.gov.pk/type-approval/
+	# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+	(5725 - 5875 @ 80), (30)
 
 # PL as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

