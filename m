Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFEz-0000IS-2M
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:21 +0000
Received: by mail-wg0-f52.google.com with SMTP id k14so4108567wgh.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=Qu8RMPPcwUhy/Kl+GVi3rScOwVwPKVNMSBuVEBknX+I=;
 b=oiN/4QMmCMe35FER3MxDF7s9Yj4sFAqLoipPeBdakminQwNvcLB79hzgmjnMvAvlHe
 KWQvCIfJZ40uM01lH+3Thy7z4rQeIOsDAtO1gP3skMqm9J4Pu2PuKxw5C0mNsj2AD+b8
 yR7ATy3d8BHv9s6clLo4DPTrXKPIw+hHAvMvvltDhDvhfhhnexGQdypoDo0GZoT1vYUx
 d16WyjFlU/KCsohTZTH2ONbZLD/zTz5v/WIxUO1Kazab+6eERqqrU+uQH0OyqiExRmLy
 nr4j4nEU1z3VkEReF3GwR1viFsLE2ju0cAVgMtBmBu2JkQwe25vRrAUI2sP3FPOvAILg vaOQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:50 +0100
Message-Id: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 00/65] wireless-regdb: enable VHT80,
	extend 5 GHz ranges
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This is my second series of patches, this covers only augmentive
changes changes to enable HT40, VHT80 or increase power and extend
the 5 GHz frequency ranges.

Luis R. Rodriguez (65):
  wireless-regdb: enable HT40  for AL on 2.4 GHz
  wireless-regdb: enable VHT80 for AM
  wireless-regdb: enable VHT80 for AN
  wireless-regdb: enable VHT80 for AW
  wireless-regdb: enable VHT80 for AZ
  wireless-regdb: enable VHT80 for BA
  wireless-regdb: enable VHT80 for BB
  wireless-regdb: enable VHT80 for BH
  wireless-regdb: enable VHT80 for BO
  wireless-regdb: enable VHT80 for BY
  wireless-regdb: enable VHT80 for BZ
  wireless-regdb: enable VHT80 for CL
  wireless-regdb: enable VHT80 for CY
  wireless-regdb: enable VHT80 for EE
  wireless-regdb: enable VHT80 for EG
  wireless-regdb: enable VHT80 for GE
  wireless-regdb: enable VHT80 for HN
  wireless-regdb: enable VHT80 for HR
  wireless-regdb: enable VHT80 for HT
  wireless-regdb: enable VHT80 for HU
  wireless-regdb: enable VHT80 for GL
  wireless-regdb: enable VHT80 for IN
  wireless-regdb: enable VHT80 for IS
  wireless-regdb: enable VHT80 for IR
  wireless-regdb: enable VHT80 for JM
  wireless-regdb: enable VHT80 for JO
  wireless-regdb: enable VHT80 for LI
  wireless-regdb: enable VHT80 for LK
  wireless-regdb: enable VHT80 for LT
  wireless-regdb: enable VHT80 for LV
  wireless-regdb: enable VHT80 for MK
  wireless-regdb: enable VHT80 for MT
  wireless-regdb: enable VHT80 for KH
  wireless-regdb: enable VHT80 for PK
  wireless-regdb: enable VHT80 for QA
  wireless-regdb: enable VHT80 for RO
  wireless-regdb: enable VHT80 for SI
  wireless-regdb: enable VHT80 for SV
  wireless-regdb: enable VHT80 for TN
  wireless-regdb: enable VHT80 for NO
  wireless-regdb: enable VHT80 for DO
  wireless-regdb: enable VHT80 for GT
  wireless-regdb: enable VHT80 for UZ
  wireless-regdb: enable VHT80 for VE
  wireless-regdb: enable VHT80 for UY
  wireless-regdb: add VHT80 rules for AL
  wireless-regdb: add VHT80 rules for BD
  wireless-regdb: add VHT80 rules for LB
  wireless-regdb: add VHT80 rules for CN
  wireless-regdb: add VHT80 rules for UA
  wireless-regdb: add VHT80 rules for DZ
  wireless-regdb: add VHT80 rules for ZW
  wireless-regdb: extend 5 GHz range for AE
  wireless-regdb: extend 5 GHz range for AR
  wireless-regdb: extend 5 GHz range for BR
  wireless-regdb: extend 5 GHz range for CR
  wireless-regdb: extend 5 GHz range for EC
  wireless-regdb: extend 5 GHz range for GU
  wireless-regdb: extend 5 GHz range for NZ
  wireless-regdb: extend 5 GHz range for VN
  wireless-regdb: extend 5 GHz range for PE
  wireless-regdb: extend 5 GHz range for PH
  wireless-regdb: extend 5 GHz range for SG
  wireless-regdb: extend 5 GHz range for TH
  wireless-regdb: increase 5   GHz power for IL

 db.txt | 294 +++++++++++++++++++++++++++++++++++------------------------------
 1 file changed, 157 insertions(+), 137 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

