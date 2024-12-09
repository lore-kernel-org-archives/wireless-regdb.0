Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7C6E7717D
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 15:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D9xNsw0Z721VfzeMUB/1PkzJCgqS1qTp/54moOOD5l4=; b=A5gdmCHKxB4hC5sbtyiRU4cUQh
	vPIntRpAtr0phyAJu/maqqCTfcljyh6kXHyoN48HTZE/ouvoasHwqPt6EL1ambSQSa6fMSkBfvmRN
	L4285ishutCL444IvM1fGTEucGzBw4apDmGRdG+/QUsn9NONVi49es1jucsfWnVWTC9CRjl0P0NmA
	ay2GY4hCFqMiWW5kD0N9AwnF3jIfY6WVur6oJzrW16X8NtdY8ECg7QoeokGlMugqhv6244Sx3o8Cz
	Z5BTmePqbSw5gAs9I3g+coqM+ZPQtF8Eg0FH4nL9zYmNo5V33Q3oAzRJqhpSVoNJAtrhb6F2onv2h
	F1Jkw7dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKg0z-00000008RLb-17tR;
	Mon, 09 Dec 2024 15:49:41 +0000
Received: from qs51p00im-qukt01072501.me.com ([17.57.155.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKfyl-00000008R1r-3WaM
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 15:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dipier.ro; s=sig1;
	t=1733759236; bh=D9xNsw0Z721VfzeMUB/1PkzJCgqS1qTp/54moOOD5l4=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To:
	 x-icloud-hme;
	b=UoUy1K3DRtzGe/vn6duteCCDj8xEAZcxVPk266991Vb5k+PkL5wbmP40k8XhtHO9D
	 ncQCkTbLbiyThRkHznA1GXdrv13q21jyxYUiggmmvnVutj6WM+fAvSirFIGow1Hk8k
	 OJIN35VCRwR4TRdumrWa7HVZPVISznm+kdpMt3l24BYX1zWxhG7V11uzNnLx0R694m
	 S5rAjhLdDNeh5JYroB/Wvg6xjN0FY1ASON2+ai+ofoeC3FvLgKqW59L/h2DJR3WxNL
	 08XfYD5iPqD7JtKBQl3JFA2w/9QXX5RiiSxCFpNIvGHCJvM9SA5PgO47Wp+sthmDZS
	 iRsmes7to9m6Q==
Received: from smtpclient.apple (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01072501.me.com (Postfix) with ESMTPSA id 23E6944044C;
	Mon,  9 Dec 2024 15:47:14 +0000 (UTC)
From: tina@dipier.ro
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.2\))
Subject: wireless-regdb: Update regulatory rules for Armenia (AM) on 2.4 and 5
 GHz
Message-Id: <274D81C2-56C7-4042-96F9-A04A92BEAEFD@dipier.ro>
Date: Mon, 9 Dec 2024 19:47:02 +0400
Cc: wireless-regdb@lists.infradead.org
To: linux-wireless@vger.kernel.org
X-Mailer: Apple Mail (2.3826.300.87.4.2)
X-Proofpoint-GUID: UuWCcrbY94N62xca04BbdLA8e3rv5caQ
X-Proofpoint-ORIG-GUID: UuWCcrbY94N62xca04BbdLA8e3rv5caQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-09_12,2024-12-09_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 clxscore=1030 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412090123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_074723_952969_26C19B40 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 09 Dec 2024 07:49:25 -0800
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

Public Services Regulatory Commission of the Republic of Armenia has =
released two amendments to its 2011 Decision =E2=84=96169=D5=86 on =
Approval of the Procedure for Issuing Permits for the Use of Radio =
Frequencies.

1. Amendment =E2=84=96159=D5=86, on permit of usage of radio frequency =
ranges without permit, released on May 11, 2012, available at =
https://www.psrc.am/contents/document/4749 (choose language =E2=86=92 =
HY)

<=E2=80=A6> Based on Article 5, Part 1, Point 1(d) and Point 2(b), =
Article 6, Part 1 and Part 2, Point 1, and Article 17, Part 5 of the Law =
of the Republic of Armenia "On Electronic Communication," as well as =
Article 70, Part 1 of the Law of the Republic of Armenia "On Legal =
Acts," the Public Services Regulatory Commission of the Republic of =
Armenia decides:
To amend Points 4 and 5 of the annex to the decision =E2=84=96169N of =
April 13, 2011, by the Public Services Regulatory Commission of the =
Republic of Armenia titled "Approval of the Procedure for Granting =
Permissions for the Use of Radio Frequencies," by restating them with a =
new wording. <=E2=80=A6>
"4. No permission is required for:
<=E2=80=A6>
9) The use of broadband wireless access equipment operating in the =
2400=E2=80=932483.5 MHz radio frequency band with a power of up to 100 =
mW.
<=E2=80=A6>=E2=80=9D


2. Amendment =E2=84=96295-=D5=86, on permit of usage of radio frequency =
ranges without permit, released on August 23, 2023, available at =
https://www.psrc.am/contents/document/11375 (choose language =E2=86=92 =
HY)

<=E2=80=A6> Based on Articles 33 and 34 of the Law "On Normative Legal =
Acts," the Public Services Regulatory Commission of the Republic of =
Armenia decides:
To amend Subpoint 10 of Point 4 of the annex to Decision =E2=84=96169-N =
of April 13, 2011, of the Public Services Regulatory Commission of the =
Republic of Armenia, titled "Approval of the Procedure for Granting =
Permissions for the Use of Radio Frequencies," as follows:
"10) For the use of local network equipment operating in the 5150-5350 =
MHz and 5470-5875 MHz radio frequency bands with an effective radiated =
power (e.r.p.) of up to 100 mW (only indoors, as well as in airplanes =
during all phases of flight), utilizing dynamic frequency selection =
(DFS) and transmitter power control (TPC).=E2=80=9D <=E2=80=A6>


Essentially, this two documents define this frequencies as permitted:
- 2400 - 2483.5 MHz @ 100 mW
- 5150 - 5350 MHz @ 100 mW with DFS, outdoor usage forbidden
- 5470 - 5875 MHz @ 100 mW) with DFS, outdoor usage forbidden

However, I am not sure if AUTO-BW option here is required. As far as I =
know, there is currently no limitation on bandwidth usage in IEEE 802.11 =
set of protocols in Armenia.

---
db.txt | 10 +++++++---
1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index e282e3b..5d5ba22 100644
--- a/db.txt
+++ b/db.txt
@@ -81,10 +81,14 @@ country AL: DFS-ETSI
	# short range devices (ETSI EN 300 440-1)
	(5725 - 5875 @ 80), (25 mW)

+# Source (in Armenian):
+# 2.4 GHz https://www.psrc.am/contents/document/4749
+# 5 GHz https://www.psrc.am/contents/document/11375
+
country AM: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (18)
-	(5250 - 5330 @ 20), (18), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
+	(5470 - 5875 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS

country AN: DFS-ETSI
	(2402 - 2482 @ 40), (20)
--=20
2.45.2=

