Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19BBCD5BB0
	for <wireless-regdb@archiver.kernel.org>; Thu, 21 May 2026 10:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=VKH1T9LwL69OF6A+lPnkkmK3V3zvqz8owpPJtLn+mUU=; b=QMZ4koijlph0XOi5shMvVo2x/N
	dzJM/7MNk6ICQOF2xV6YHKTWVgk2PbILnYy9FSPnh/XqFao4EMd6HaYUuAhEzgxYN35dbSPGNCcY4
	bkHlhEs2UwZda3BjqYRLLhc0PRv76JTw7SEdcRxz9xcWgfpp+ZLjhfVnZ8mvlklkBLWVoEtXk81bl
	ZvdXjpL7oBtg1GMdckedvovTW5TBYmxBKfiPfgVdIcugxI6IZG0gB6dyOD4eLoSBfdd6x6On+/zvv
	C7tsgCbCiybkAmSd/7ehjryxSNRUUWmmLSoZiKNuWFP7HudDETwgX8yLInuDeiA2hiAQ1r4ZBBMNY
	AAIwnFlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ0Qz-00000007QMv-3TlG;
	Thu, 21 May 2026 10:15:21 +0000
Received: from sonic302-21.consmr.mail.gq1.yahoo.com ([98.137.68.147])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ0Qx-00000007QKo-1x1W
	for wireless-regdb@lists.infradead.org;
	Thu, 21 May 2026 10:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1779358515; bh=VKH1T9LwL69OF6A+lPnkkmK3V3zvqz8owpPJtLn+mUU=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=cyBHWRf5hbyr1pTxGFhShIqRJGgOYohE8irz05uV/fNWAvVHMfvgIGgyascTpP6PzBbrlK5Zg/x4/u3hwBlHHq1L397Pfzq5duP75wTF/kmIQIF7OkuUHVkkit3uIBm6bdKBRvXEIQphIyajayC3k0WSNh25Lq5v1Esl5o/aBenUkgAzpoNK8VhJXqiuMLo/mIzJbZaP1xxqAIFdNr+uy6lxYdJHjjfZr0QYfNu2D/XE+XgaGCbB4X97wPHKqVOhjAFhVpGmeQQDS2bFNyjgBiTePIhRqKkj3yJPDzZU6u/GX3Y3wE+H2o44nYnCWay8l4ccyOF+vUfFajclECKGOA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1779358515; bh=ylJAHJfYX9foLQ9qhzwz3dyenFehDpu8L0U8UPkXElF=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=sN/34JrDbo2xMNAzEmqSMlMqf1318X2g+vMalC499SbJrDKHKs7WOo+JA3YC7RducWHSpyi55syo9mF87H39jcsfizsv9D1+In8Ln6l1cN/GtH9jCc9Z6gnF6YAXckWg7p1+WhjclSFNXZ8zXyAV+Y2z1uawfxY6UtHabbPlYokIv4CbTye979wPYL8Zx6mo9YbIelG8VqZXTkdHV1c+meyh552mKmjznNmEXFWImpNpr3nHmDwzeBagPiiLz9vepEk3PHAdiIdGWqnXjyjwXvvOhh0y3GakOk3DP3UP1XgyXnb+QNL/pPeZPqM4zAA8wAch2JtdxpiY5U/aPrLb+w==
X-YMail-OSG: 486h_l8VM1leLh6a921ZnD9VY5nt1qHK5nrhN3s0q7RIdHFCrh7py7jqWc4S4KQ
 6ggn5KybRk3s_ZU2IUrlb2Flcz_6.jKvDumA8z3SWUJ5i.kbYI8bSQsDkh.3dRTiUJui_rXFjXIb
 4GBsvfuavHP62eCxOrWiZa.Ftuo_KCUzl6hYkPSUuzzVDL8w.JVsCHtHff5m4KkQww4SeDEh8IOO
 kCuXuTYLyarNGtY.g.sZfWfWYwBS6Xyy3nLiLBGy5AKANsIySl3NKaSrDdjxbFetbm_1YGdx2eAo
 TkFIX9KNfR8BSQfJtfNzQ45hvUO1CyjprbaUCjxQkrQ6T3zkWdwwhDYwsPMjHU8xLZuvbB8_gmdX
 xOQukT0UCCizxmNKsdyCo9yeFphUOUlfKA67S3zwiWS8uSm0bfelOqNndwETFPw0obfGAN3EqwYb
 N_fTyyvnfBPSh4BrNO1Bd0olUXWFFpg7xZbJwrlL4raRXnX_owBGcjzczuNniwcL0lL48TyWPUG2
 BIXEzHYkXi7IsbBFG1GV83sGD3l7P88AVSSaH3k5nQ94u0Kk79kiNqG.r_4hI0n9_AduufT3vzRL
 ZxSdTIlL0e1rfr2r5mZI4XTjlvqNM5PhI4Du9eAB6zmhpYBMBTYeRYk0P5oWRBt5R6BTKg5Rok4n
 n3MtEuUhgQzI2xRdCSe0k1kcVyLvfX6jnhRoc2WHN5Ko8_R8NCKUat8gxocVhJFRoh9P0KX0g90J
 rplZLDFhBNGH_FwGfcuuPYvqE1E2wNaqctxblqMJDJ..XHY6ykQ9aaO16vRDrM1Gkr8ImG9BvANp
 Y0R02SB6GafViN73tHKY9KQYGWqfPcwA7cpBmoJvjKaaAQT9PrRh18DvYHY2_g7SkkAlPJSUcGp7
 yzj5eV.X_2vHl7zC1lFJX.vZcIl1SN_LnGPj85fRAOwdQUZH3GeUJYHrb9t3o2YXXygHarfdP8EQ
 dKDDBTZo0ZpkX06jbJvJSMNpS63_f4Zv5WpzxhsO489K.9kbkwkWwcTai0RSZ2WZveOr9NJWwjzc
 Ac1_zkT3huu3n0i3RlKBsSbVvOD8ACLFO0oIst1ndkv0dkT1PXwL3mD49xOgojayr3e3M6qkOR5D
 1g59tmFByI0_JknDVuPBowYs8zSNTsAiqgv8fYTIblps.7nSyjdE.u0HYtzqf20W3DLxwPkhYJxX
 ln3GkDANcGMhOyDvrpQYDEqpa0VVZyMBwY_3ol4HFHWNWfEpTRxF.rfhKJA0i8FzVBfd.fk2j3ns
 V1nxD6cJHyeyAZ.4kwMXlCLR2M4sQm1CaxMUrjp7sUfUURALLfnnurV2SxEquL31HUYzwHItkZRe
 3Uim1h7kDAufrZKDhwu3yE_cbAwKJoncwnq9IxB.2UpPq70dtxivNVmjEQUopZmYejCs2737DXzm
 _1GZsS5mxNyC0ZbIsiHWBA9l0DXXYz6gvzqc_aq.194bj4JcbvPEILle0kmSZOOfAxORZty35xbQ
 pIRc05MWK3rFGTUAb_4vWXm3E7_zp2T0aBclFWCVOzm4mGUPVBF8y6UXuaZS_AVjMh2zDsyYKCQs
 yAmtQI.ZQnrfgQmBa74h8ndlPfcYK0Uss3IJPZBDC0rsagJt8FIwUu_61KNxPFk5k6_0SOfb0XBs
 8VEeWy0OzfHvH1oaUDf.ELKSLLkITczHR6XDQrkou2WfYgC2LE_4FIKoFT8R4a2dC5lgvaIuqSQ0
 rC_k4bqhojRbIJ2nt6fhZkZQ35EAH69qjshHxeXQIwZOJ9VeI1Fh1OhyNFB6NDBlOO_i2.y6p.Ob
 gNZKSA5jCsGlGQkMVUpPGtwSW.Llz9gjHoKmxV8vK7j4V0h7xfVgzO6WYd8sqQpDbJY2pLJdrtiG
 7CtxJwuFFWDnBTMact6Xohf6_45iP8bavijKz.WMbEjTiNHRbvuW8sk7MbBWT_xrawFK9FqfUpeA
 gx_dr1bQMd9OIlUStsLEhaR9PwzSxHYlORtB2SDGoJ5FDI_T2IC.dh4q7bDZsV1fiWvj2HqUDLJU
 CASoRVqkiWuClS7xDBe4CE3fP4bTJqN.sVibfBjBmJNhx8HZQ2BgG0VBAu8CW67qmW3Yk1gAj1Fn
 lnkSvXxUyCPs4.00lFBJHUAplDZzRaCIfwcpvt7EeKjNoDRT5KQuhbwHW0v8mg778dih6VAI4qeO
 ssZ8i_FO1l701fBRqddgVdUJpLZT7ps8oH3Uz6fb7x258HF4ekNnRUZj0MlH9JoCR8pfdELeBm96
 _LGcIowk7xAR.0xHPQsbH8dtU.5tKJKAR_crMJGLsr0ttZPD1sV3WSVSjDA4GSUjWNwwHy9GbPHY
 Ct1DcXso5azC0ojDvGi.IdguHkKRhvZGiIgB.oVGt.Ehf
X-Sonic-MF: <mnew_iraq@yahoo.com>
X-Sonic-ID: 96705cf2-8b44-4784-857e-8c058567af12
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.gq1.yahoo.com with HTTP; Thu, 21 May 2026 10:15:15 +0000
Received: by hermes--production-ir2-89844b765-j4kkl (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID d90c43c097eb46b10d493f0b503d2068;
          Thu, 21 May 2026 10:15:09 +0000 (UTC)
From: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org,
	Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
Subject: [PATCH v2] wireless-regdb: add regulatory rules for Iraq (IQ)
Date: Thu, 21 May 2026 13:15:01 +0300
Message-ID: <20260521101501.1841-1-mnew_iraq@yahoo.com>
X-Mailer: git-send-email 2.54.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20260521101501.1841-1-mnew_iraq.ref@yahoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_031519_549423_F41D6974 
X-CRM114-Status: UNSURE (   5.38  )
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

Add a regulatory entry for Iraq (ISO 3166-1 alpha-2: IQ).

Iraq is currently absent from the regulatory database. Devices set
to country=IQ fall back to the world domain (00), which leaves most
of the 5 GHz spectrum marked "no IR" and severely restricts even
2.4 GHz operation. The Iraqi Communications and Media Commission
(CMC) has now published an explicit, numerical national regulation
that fills this gap.

Source document
---------------

  Title : Regulation on short-range radio communication devices
          (SRD) and devices using ultra-broadband (UWB) technology
  Issuer: Republic of Iraq, Communications and Media Commission
          (CMC), Telecommunications Regulatory Department,
          International Relations Section
  Decree: Council of Commissioners decision No. 122/q-2025
  In force from: 2025-09-22
  Edition: First edition, 2025; 26 pages
  URL   : https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-radio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technology.pdf

The values below are taken directly from Article 4-1-13 ("Wireless
Access Systems / WAS") of that regulation, which is the table
governing Wi-Fi (Annex A of the regulation defines Wi-Fi as
"802.11 Local Area Networking in 2.4 and 5 GHz ISM bands"). 

Bands and limits, as stated in Article 4-1-13:

  2400-2483.5 MHz  : 100  mW EIRP, indoor and outdoor, LBT/DAA
                     (EN 300 328, ERC/REC 70-03)
  5150-5250 MHz    : 200  mW EIRP, indoor
                     (EN 301 893, ITU-R Res. 229 Rev. WRC-19)
  5250-5350 MHz    : 200  mW EIRP, indoor
                     (EN 301 893) 
  5470-5725 MHz    : 1000 mW EIRP, indoor, DFS + TPC
                     (EN 301 893)
  5725-5875 MHz    : 2000 mW EIRP (10 MHz ch) / 4000 mW (20 MHz ch),
                     indoor and outdoor
                     (EN 302 502)
  5945-6425 MHz    : 200  mW EIRP, indoor
                     (EN 303 687, ECC Report 75)
  57-66 GHz        : 10   W  EIRP, indoor, LBT/DAA
                     (EN 302 567)

Notes on the encoding chosen below
----------------------------------

* TPC handling for 5470-5725 MHz: The regulation explicitly requires 
  both DFS and TPC. Because Linux/wireless-regdb does not natively 
  enforce TPC limits, the rule is encoded with the standard DFS flag 
  to remain as compliant as possible within the framework's capabilities.
* Indoor/Outdoor for 5725-5875 MHz: The regulation explicitly permits 
  both indoor and outdoor operation for this band, so no NO-OUTDOOR flag 
  is applied.
* EIRP limit for 5725-5875 MHz: The regulation provides two figures 
  (2000 mW for 10 MHz channels, 4000 mW for 20 MHz channels). Because 
  wireless-regdb expresses a strict per-band ceiling to ensure compliance 
  across all configurations, the limit is conservatively set to 2000 mW 
  to prevent narrower channel widths from exceeding their legal limit.
* 6 GHz channel width: Encoded at 80 MHz (the widest standard-power 
  option) pending further clarification from the CMC regarding AFC 
  requirements.

Background on the unique 5.8 GHz figure
---------------------------------------

The 2000 mW EIRP ceiling for 5725-5875 MHz reflects an explicit Iraqi 
national choice that follows EN 302 502 (BFWA). This choice puts Iraq 
at the high end of the regional spectrum policy for the 5.8 GHz band 
and is included verbatim from the regulation.

Signed-off-by: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
---
v2:
  - Changed 5725-5875 MHz EIRP ceiling from 4000 mW to 2000 mW to 
    ensure absolute compliance at narrower channel widths (10 MHz).
  - Trimmed redundant encoding notes regarding standard NO-OUTDOOR, 
    DFS, and AUTO-BW conventions.
  - Clarified TPC handling limitations and indoor/outdoor encoding 
    choices.

 db.txt | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/db.txt b/db.txt
--- a/db.txt
+++ b/db.txt
@@ -insert-after-IN-block@@
+# Iraq
+# Source: Regulation on short-range radio communication devices (SRD)
+# and devices using ultra-broadband (UWB) technology, First Edition
+# 2025, issued by the Iraqi Communications and Media Commission (CMC)
+# under Council of Commissioners decision No. 122/q-2025, in force
+# from 2025-09-22. Limits below are taken from Article 4-1-13
+# (Wireless Access Systems) of that regulation.
+# https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-radio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technology.pdf
+country IQ: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW), wmmrule=ETSI
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (1000 mW), NO-OUTDOOR, DFS, wmmrule=ETSI
+	(5725 - 5875 @ 80), (2000 mW)
+	(5945 - 6425 @ 80), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(57000 - 66000 @ 2160), (40)
-- 
2.43.0

