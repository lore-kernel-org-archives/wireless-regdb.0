Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C8FD1CDC6
	for <wireless-regdb@archiver.kernel.org>; Sun,  7 Dec 2025 09:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XAwaXzA72i2OABbnVn/1OPV8ALoYBoEA85sTcU8ejAQ=; b=rKIJqfKlKEtE5abcXNLrYCyBAh
	FU91SJm2CGqLKzBBvoH29aM3uvupAYRBhjrzRLpo9TSse3c0Gm0qScx+++x/aRgXE2ejAcr0LEfvE
	9Fjxv4Ko2coCUjuyHaLDZA4e7xz/5KzpbD2tAVJ2uv7R/vux6Aaf8DHeWw3hMWag2KOzuZJfMEww7
	d9wdoTUx1sDBvi8pEwaq7NBe2TXtK4x+wKfp88D6MoaBiy2Xv0Ku1XOSf3TwVS1BZ2SDfVC3XGx+1
	oRt0pCZFEzxPi+JUrzvp92sB4ijxYeZi+2XzogSfTIp/FQe4PsF2c7D28xTIajUNXV0vi5mww6VpM
	/oKSTF8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSAj8-0000000BcQ7-13uG;
	Sun, 07 Dec 2025 09:06:46 +0000
Received: from p-east2-cluster6-host10-snip4-4.eps.apple.com ([57.103.76.205] helo=outbound.st.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSAj5-0000000BcPo-3VzW
	for wireless-regdb@lists.infradead.org;
	Sun, 07 Dec 2025 09:06:45 +0000
Received: from outbound.st.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-east-1a-20-percent-0 (Postfix) with ESMTPS id CBA691800847;
	Sun,  7 Dec 2025 09:06:39 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fitzsimons.org; s=sig1; bh=XAwaXzA72i2OABbnVn/1OPV8ALoYBoEA85sTcU8ejAQ=; h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To:x-icloud-hme; b=k0+vexUG6Gbh/Il1Oh8EFCBLJb5Xd+ZEga7UmZ4DoftEYF1QbUQT2NNM8X00nKHlTmZmlEe7b2K6PWSHrHJuGsLNLAKQ3WQihDGxNBSQdjBdFhopjRXaQ/vAl8I+rQvLRjTjcNhSA2ZGFMWer9P7ECXECH4yzMTAI8dBLzc3UvKteOQzDU5W1DLZ2kwZKQnrQBON+/I2Be5EQwBL9AFfB5oNz5DDf7qSBmJNwAlbcAQY0+qFVOZItuMht8eP1y4W0GUiCe4L3wzQhOq2PYnEzlsugsYCmUF0kD/LlCSypNzNaFHxazjO/7Id1+d3lsNTL3gMOg4omDgjmg+vzuGrWw==
mail-alias-created-date: 1311470795000
Received: from smtpclient.apple (unknown [17.42.251.67])
	by p00-icloudmta-asmtp-us-east-1a-20-percent-0 (Postfix) with ESMTPSA id 390921800841;
	Sun,  7 Dec 2025 09:06:38 +0000 (UTC)
From: bruce@fitzsimons.org
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.200.81.1.6\))
Subject: [PATCH] wireless-regdb: Update Australia (AU) 6 GHz band to 6585 MHz
Message-Id: <C9C14F68-BFFF-4BF6-A8AA-60E5EB445F4E@fitzsimons.org>
Date: Sun, 7 Dec 2025 20:06:24 +1100
Cc: wireless-regdb@lists.infradead.org
To: linux-wireless@vger.kernel.org
X-Mailer: Apple Mail (2.3864.200.81.1.6)
X-Proofpoint-ORIG-GUID: u2L9pU0s9iWJxRCOk36IeA8Ezo43O-rS
X-Authority-Info: v=2.4 cv=U4ufzOru c=1 sm=1 tr=0 ts=693543a0 cx=c_apl:c_pps
 a=YrL12D//S6tul8v/L+6tKg==:117 a=YrL12D//S6tul8v/L+6tKg==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=wQCEfU45AAAA:8 a=eimVCs3WAAAA:8 a=W57TY44-DrvBiHQ3VEYA:9 a=CjuIK1q_8ugA:10
 a=Oo_Imr1wRfQDNlTC4xgs:22 a=uDxkDUTIKcfgtb66RLhl:22
X-Proofpoint-GUID: u2L9pU0s9iWJxRCOk36IeA8Ezo43O-rS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA3MDA4MCBTYWx0ZWRfXyFkPFhei6xn4
 jdBH526e4OIhPoelTiWhMgNine5gF3rxkNkdRzoZ2Jz4Wl8aUFExwTWwgotZzEbIDi9tta7LKII
 qgsNz8rUrESxNwnY0t01HkA+aRVdZgUjU90tEzsTKhM/rGOGFHFvMFol3u5XZ0luXBW13+i1U76
 rA7pg8nNbMI/7qcMWSUv1YhntUFZGUADFbi8++ZmeGHYVFsPyJrHk11brtcdZEkSn2FtUQ2ni/W
 7hnA6zO8d45Sdk/4NbIDKhbgepVbw1dTT12U8L8SCDtWwmw3SE06ci1y0uuxIA+XgZahKKnlPZp
 p7wD42GAd0fCojOMkMx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=898 mlxscore=0 spamscore=0 suspectscore=0 clxscore=1030
 phishscore=0 bulkscore=0 malwarescore=0 classifier=spam authscore=0 adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512070080
X-JNJ: AAAAAAAB4rpRfKeJ8UIGI47zFpUzvQepYU12/QJMg0B5LpJY3ugBEPnhgPOj6/8YOPLYKUnN3+aFFbldKXH3oPIgoe5AqxJwbGh3WkMJ+OVDhjVLFdeTx0k/C1+yJfVyibf2r3oe+Byx3+s7gHKEtMguy5W6P7xKTrKAUu7OPqB1DpykggqLxPOtDHKQac810BNNIa4iC42ZVIydaZKSUJprjrE88pTLVuXMNRAT3D1A4J6eDJ8nPIpvWAltQWsczZbUnXJ4gMQ7Fs89XlL4Pi9hybOBJiBjmQ9sXKiOTwOQEHQJtrE35KI49HrhL7VfwTzsTk7Ybor65BCCKr8OCJOf0r6vicygofl09qxmFvcrFKoUmY2IJh1BifXinPkwnw396P0/qFjxw8BYlVA59ScBzNMCkEggHKdYPgnB/ljAud+oH5OWOFIF/93stgGJmo1asm1j61NKxxXRKODkwrRKed57k+tb7VxiDNKZLznq6wLB0gdvr/F1kWi2evJzIukQWi3yUnw3A/kjXazaqDmnDzwVPnJFv1ZX+tx9o1dpD6dXaD0XdQRf83bMP+gdFhfvdZVAILy2ZsuKAgZtmStGCcAOe5/g/nyQckXH7Ou6QaYqE8N7a0vwVWFOAPLjbMau5glJ+AP9Hg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_010644_019734_638D1B3E 
X-CRM114-Status: UNSURE (   7.36  )
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


Extend the 6 GHz band allocation for Australia from 5925-6425 MHz
to 5925-6585 MHz, adding 160 MHz of additional spectrum.

This change reflects the Australian Radiofrequency Spectrum Plan
Variation 2025 (No. 1), which took effect on 1 October 2025.

References:
- ACMA Outcomes Paper: Future use of the upper 6 GHz band (December =
2024)
  =
https://www.acma.gov.au/sites/default/files/2024-12/Outcomes%20paper%20-%2=
0Future%20use%20of%20the%20upper%206%20GHz%20band_0.pdf

Signed-off-by: Bruce Fitzsimons <bruce@fitzsimons.org>
---
db.txt | 3 ++-
1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index fdc2c13..7eac515 100644
--- a/db.txt
+++ b/db.txt
@@ -159,7 +159,8 @@ country AU: DFS-ETSI
(5850 - 5875 @ 20), (25 mW), AUTO-BW

# Item 63AA (25 mW if outdoors)
- (5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
+ # Extended to 6585 MHz as of 1 October 2025
+ (5925 - 6585 @ 160), (250 mW), NO-OUTDOOR

# Item 65
(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR
--=20
2.43.0=

