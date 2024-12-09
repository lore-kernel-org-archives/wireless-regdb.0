Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACECE77180
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 17:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FKhrpIUmEQktQ66Pi5QIstHWcM46OciWNPxUSEpxgSA=; b=ehGkLC5DYVu42+PY5sdp95HjkI
	VjELHagEuzbSxlaUBFsrNIWUh/bA+Id7EOhl5cihnQyVjPWfeXPBViKNqt4MwZ7RrBoImvqDlMvWF
	BAwcBRLv2Tcx9SkjckXmNcQsidO36U1im7gIVjTBNOAde/kD17qIDa+xesFaGpXIE/mk2CvpMPiSG
	iTGtyQcvrDItTuFIbYZ/BYy1DQYb15gd+nk1SV2raF4pBJIki70phEi574fybgvuGWSuCN9OJxwLz
	aZ859kHETgoa5a13lf4uuwVf+/hCcDmbUqUrYy9JFQXv4kJ3mwyKWy/5NFLXwY8U3bxS9uci1UYyV
	tTMN1WNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKhDd-00000008fQX-1nIn;
	Mon, 09 Dec 2024 17:06:49 +0000
Received: from qs51p00im-qukt01071502.me.com ([17.57.155.5])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKh9V-00000008eHA-1ojJ
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 17:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dipier.ro; s=sig1;
	t=1733763752; bh=FKhrpIUmEQktQ66Pi5QIstHWcM46OciWNPxUSEpxgSA=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To:
	 x-icloud-hme;
	b=BxHgg+xnvITDR9Jk2O7GBTyoNfDLjaAi/p0Izskfr40Om+oU20kCgz30TfBgPf0b5
	 6CD4lKhdnhsAqUOXny+X8/xMw2WXE65OYLl2CY33/KINkKNRuTuWB5it07I+biZE/n
	 2Mwl1xhT+LFqmuXLuiOhPg9rvLhFcqryq3T7S8bNNsXxHJagBtXz8bjm9KXYeUU2wv
	 dLFfijYCtOkHn/KKum+O649nxcznsd636SVWblbRiRx0qqjGEn1vlOwRcsTO/etnp3
	 35tiFcgdyajUX7lRH+wASfrwwcUIzpyrr7XDVLbeVkstNVTAMFSseU4o47WgUrtuif
	 h12qzBzCuyduA==
Received: from smtpclient.apple (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01071502.me.com (Postfix) with ESMTPSA id 79E7466803DA;
	Mon,  9 Dec 2024 17:02:30 +0000 (UTC)
From: Avgustina DiPierro <tina@dipier.ro>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.2\))
Subject: [PATCH] wireless-regdb: Update regulatory rules for Armenia (AM) on
 2.4 and 5 GHz
Message-Id: <EC8B2D35-4EE1-42B1-91D0-46F788EF6C61@dipier.ro>
Date: Mon, 9 Dec 2024 21:02:17 +0400
Cc: wireless-regdb@lists.infradead.org
To: linux-wireless@vger.kernel.org
X-Mailer: Apple Mail (2.3826.300.87.4.2)
X-Proofpoint-ORIG-GUID: E-a5PuBRSGVKhEETKUHckZYbPOv7O_W8
X-Proofpoint-GUID: E-a5PuBRSGVKhEETKUHckZYbPOv7O_W8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-09_12,2024-12-09_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 adultscore=0
 clxscore=1030 suspectscore=0 mlxscore=0 malwarescore=0 mlxlogscore=740
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412090133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_090233_538322_ED167956 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

1. For 2.4 GHz range, based on reworded subparagraph 9 from
  https://www.psrc.am/contents/document/4749

  * 2400 - 2483.5
    - 100 mW EIRP

2. For 5 GHz range, based on amended subparagraph 10 from
  https://www.psrc.am/contents/document/11375
  which also supersedes the previous document

  * 5150 - 5350
    - 100 mW EIRP
    - indoor use only
    - DFS required
    - TPC required, reduce limit by 3 dBm to 17 dBm

  * 5470 - 5875
    - 100 mW EIRP
    - indoor use only
    - DFS required
    - TPC required, reduce limit by 3 dBm to 17 dBm

Signed-off-by: Avgustina DiPierro <tina@dipier.ro>
---
 db.txt | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index e282e3b..7e6c3b0 100644
--- a/db.txt
+++ b/db.txt
@@ -81,10 +81,13 @@ country AL: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 
+# Source:
+# 2.4 GHz https://www.psrc.am/contents/document/4749
+# 5 GHz https://www.psrc.am/contents/document/11375
 country AM: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (18)
-	(5250 - 5330 @ 20), (18), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5350 @ 160), (17), NO-OUTDOOR, DFS
+	(5470 - 5875 @ 160), (17), NO-OUTDOOR, DFS
 
 country AN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.45.2


