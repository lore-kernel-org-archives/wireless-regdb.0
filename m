Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Tuy/oBz4RBLUsYFe6auwtDxjgVauxzQggcvI1q3gWzY=;
 b=SLTtWSjp4q8jIx
 O1k+RvYRmdvNT7LOBKptgQL68SH5EVwIIujr9nnAKXuIVgrZhYSFQY80v8tQO4zstKxmDjwaLijaM
 Hac2wtC705UpEQJH82yTeFcRXWy6Kl1yP4PBWvYuE6gKcqpw+/Xbilz9h5lxMQM63ptq376+oZ1NM
 2GsxeUFxTzdjb0dSS+dUkkVLniBTLRyY/t1UDo67HaOweRQxmW6BTgsTYG+Sbovp3HiXiAULTkPr+
 7T7J4eHsxO2NGfCcx+1D85jn6tcFC07KzwMF4Bt2uGqXyPm5aBa985f/xWHgLKzbCStJcTFrftRjB
 Hv4vXgm/GpmWgpTr8lHQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJy8V-00Fmv9-Ff
	for wireless-regdb@lists.infradead.org; Fri, 05 Aug 2022 14:17:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 4090A60F43 for <wireless-regdb@lists.infradead.org>; Fri,  5 Aug 2022
 14:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659709029;
	bh=a3nUXquMb6F64/WdIJWB2QBOrME6wTjNyx/piGNijBM=;
	h=From:To:Cc:Subject:Date:From;
	b=Carulu6aYdx29vEgvENU+w8hfdUH+asju7IeYuoHIkFODWkqH0M2i1+t3wEAiHOoP
	 qX3KvaDxzMD29OFvYn1ypxW8buX6URwgc1bM1WciHqVJSeDIVdHkDFqyqEhK6794tm
	 NVeuaJOk3pUtM+LmqbxQ9rS3fUL63gHfP1aOokNm+cpak/zj8R//ZmAL8lBcNpTnVf
	 aTFEnaMI7PfvSyFLs9cDgu7CFCxLaxKlVH/TyEuE5LVAeGL2hNspkx7vwSohxB/Yiy
	 rR+EDQ5FtWhsJDeuqB1CPijdomnxDhqn3iY4/+eP2k1ZuptEoIZDgPyBM8m4iVfCmv
	 MqRpXTd4oDPpw==
From: Seth Forshee <sforshee@kernel.org>
Date: Fri,  5 Aug 2022 09:17:09 -0500
Message-Id: <20220805141709.106684-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add 5 GHz rules for GY
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Add 5 GHz rules which were provided by a representative of the Guyana
Telecommunications Agency. There is no published document which can be
used as a reference for these rules.

Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 16b38b7cb2b2..16abf2951e77 100644
--- a/db.txt
+++ b/db.txt
@@ -732,6 +732,9 @@ country GU: DFS-FCC
 
 country GY:
 	(2402 - 2482 @ 40), (30)
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)
 
 country HK: DFS-ETSI
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

