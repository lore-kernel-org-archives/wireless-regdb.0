Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29B5606A31A
	for <wireless-regdb@archiver.kernel.org>; Sun, 25 Oct 2026 12:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VLyZyoUP;
	dkim=pass (2048-bit key, unprotected) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=kwdnPPHo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Unsubscribe-Post:List-Owner;
	bh=fqJOBjI4OghyEpJhwDiKxCiOs7plrMf3wWuuAAC7ZBY=; b=VLyZyoUP0GlGH/rgdl4A2RbPLT
	AB2LPwHWkn9EEFDQaXi9AV8lDduqdEe6sp4Tahon3eGu3TvIgVMx7lhY9+VPkqriP6G/tIM6a84Xq
	d1WJUqBCMLVahpKIax7rT4RRY9Dz9t2b+KqJOOwdD/6h/QaODhrOOM/Wzt/3SYCAKyuYe4+nkEMJR
	L91SddUnyPvyAd0PVSEK+WOdXTGoOW03w+R/TU1GRAUA81goqw1Fia+YhLdewv6hG09XF54GcT7EK
	zIP7xoRNoMXATjK5TYaNCcs2w/qjca9I2SmoyRecSlkTon+sb83/fgxfB4eIZKJ3s6F/F9RK+yrgQ
	fMK7/s2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKxk3-000000013Vh-1Sv5;
	Sun, 25 Oct 2026 12:54:27 +0000
Received: from sonic315-54.consmr.mail.gq1.yahoo.com ([98.137.65.30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKxjs-000000013VD-2s6f
	for wireless-regdb@lists.infradead.org;
	Sun, 25 Oct 2026 12:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1792932852; bh=fqJOBjI4OghyEpJhwDiKxCiOs7plrMf3wWuuAAC7ZBY=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=kwdnPPHoGkn3KuVzjhf89hdYpgKKSOedtGrl7KnTiKvc6K8z8Z1FYI2PSB+TPENRQb5+i6LTlZCQhMgxCOZzGGiEkkQhoIlJWw7XYI6KAeQVMnaZxWaV/w/CD/6Bs2Fjn1GYmYQk0ooIjTc/g1jvF8Dem7mioINljITTwvt6XdnDstPzKXZMfSLddgJ7YZTljru56Tatvn8CaeSDCW6/8WsLyLmZNcDi+nEf3E16AFGIndJw/jFIJUEcFSWEUJNZAFgczquYovchjWLjvo7vQVKQy+7kWT+lMhf9W7pzTYWPBTXnqyY05CiQOnXBLCK2UK7C3bbkekhqrTNAN0Zmtw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1792932852; bh=ETi+SfshEdOjd7wM7MYBYl6d4O7JzfDEd1tWxOHDHJ3=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=fg4RmY0xpi+lkRIeOrz3X9TFA5NitOki21c07+w4I1PiBI41Hdal9wx+kIS01ofxu670xyxKF0oi9+te4hrdWAjzBxyL1LG1MDlNo67mBCqpAtUWcevNg767DHILmhcqvF58l/cRTqRiG8g1gNS8d0Y8B0dQ6uvOOyzDO60HrLRI90q9mHl4dgXoh9ICLzpCygUOq/v+U4usF313gbGl1LL4fP7S19RD14Ktz+TkHfmYsQjePWhYWsBNZ7qyKzpkUY0k0paQEFBYU82aflkiXmf7vZMrhZk0LXny+H7dyw2uz6hYnUWF79vBhyB8u0SlAvmzUr9nY62J8+/OaNXduQ==
X-YMail-OSG: AmVbkkkVM1mRe7MGPoQ7Avo8ijeZL4JeVeRgox91tM07P0WrMnj1EY3dQzS8PyO
 LDmangeN2ZPJa6zuj30fVQqoONsGhbQxq6bFaNNgVWMndrev1l45g9Nd1hwJCaK0ofJiMEUB_BYH
 YfWXG7nHCli79IIg__aNHGoAozyUfmyrv69ybzGoaf7CGOFPJIrZmZSWGseCj4vl9E4cV5p63jeB
 WZIsNrdNlkKQLEmzYgxOe16phGCfVITPx_YThd_FDvo7WQ290OZfteDsh0lPwqbSgvMr4fZVVgX_
 xFaQasOk0zpk5rOvTvVAdX6jscJwq4mbvlKGURlcvZK66HmlTRoU.3ydUpkSmvTf9gcUrKO6u1hF
 aaYarjO31d_ITGqZWFnK8wqhAEqYF6EtLZgRGP0f1PxApnQPKNmyBuTIXQmnI1goIZOtxma48ZQO
 VAnjJTgiFoOHpc5ITaY0TTiklBhvWY59hqoPhCr63wx8SIFc8MzmUQXIJHWWr4y0nkhvHwABXMj9
 Ks3OHSzqKwkNfkyHsIDcfhb2Qh287Wqqox2gZEJRN6BnRAKJ9te1KR0MuFh_ChQ0yy1fODkmUvIt
 wNdNAZMBLNEpRozsOZ7BonLK5o9f1Klt0YaAYSKPMAb82q6LrAuY7u7SnvjdeAKriesezrg4CppR
 eF2xHGeuI9LB3k3Nb9k7SUDYQVQ50YIYZChaT_KpEvdUYNrM24_4aJptQEQbiVoJYs8rLf8_k24S
 v9Bbjt8PcV1fRPZE0HpWb4bJiIP.iWc55tbcFwACiV6jb57y7XOKLvj6CDGllskay.bCY3KYZRdQ
 SpwRDdeNOChCbUrXEh8E7oPz8VgozhgDay5ViwRJ9nuWBooKEcY35c8wcy83D2VOVv2Pp12FF3I_
 fcekMcBhr8DR_i1IC.Ur9s04tb9cMBohu_ZszWik30C_Xm6nbMgG3hZ.OpR2OuOkDyz665vg_4Sr
 L5utzpSPl9lvDFgvkglgverYX98818xmh.op4CWUtO_AnpmBQn89CnTo3QSUrpggOl9TjaqOwKzC
 c4lXXGD1UzHIB8hTkYu0PhX0ftQCM.Xowg8GOw2M38HBk.20xzDuh.XIxOgNj5b5BgeQdTuU_0dz
 hW04gQWmWNPpp_xox8Iv6_6atPW16JcHNzJiAxLMgK7bJazT_4psYXtPOd6ZBXck6PttY2F2G7CW
 Yo.dgkCI_uraoSRRApKEyo_XsE6NAI7__lU0R2Hja87Qx16FzPbdyy7HAEHOkxtnfx.ObTKFXkEA
 EL2_BBZSPk51uece_oka7VJCLW2Q9YFqTXjsxI5ybomAIZN5gBG2iwPs02EXQprj9NQKO6FvI1xp
 u8EyI7qHLQqMKZWe11DmUOL54kY0bjYX_DziInVNWtiE9PmfIKWlz_oYulCFPQ7JyNKG84ac8o3h
 g5z8aJMD42e8.UkT.5Y96Gy_2MQsN_FAgHo_DniaF2ZUUeuEwPjryI5Bc.j8JXw_2hdyncIeKgn0
 lru6Wpcu9v_fIgEsQUcKfh.wbrKNcrdOR2u9Kj4bUgePeQshbidGxfSu4MmtpdeEuoNuqosaJjOv
 Xw_1UPMU_WBe7k30yqoW2w2cp6LMN.XZ6RkpN4SKFbKFCi_fai_cVVI3bKSkvqQ0UPDJvXSywtwX
 QueqMOQelGncqjnWlo_px.ivjSjqO_wQjp2nPHLTmizNIS2Ljv4Cu9wUSL9hphyFPN9mEmBS1ZUQ
 pawqjjGUhyVvbDFGK9PFWUZ9nTPxN9OqCjVEaYQiM3KnSmSGl6_gKeM4iZ605DbsaJjLZNeGJG96
 5DujL65Dw2q7zBU6wUVqzWHYmPtxrIrpno1iR2bERQnxEIlaC4XUZM8qRlch5wm1iZASGlarnGNZ
 Vo5vSXd8khctE5ST4xQsWtP4HMVtxRxD4zHJ3vUpeox5GKeMADNWwAQnC3qSt.sHxV0_EYp8.VUA
 7H.gOraxw0opL6hOtX9WfkxwhwNXZP.zQCnKQIo9M4EvuAm6r7UYRkesVhIQTzauqwzVmDpXiyYy
 f_0WfHJp9wqJJblRsTz6iVfIXvpLMZDmdwBCRbx2iePphiUcEFtI0dSve7oU1qgZF10rw5gr9LS4
 Ox9uSRjHUG1Ej8OgsvSVnwLnKarUnR6pqUXRVMKK1GsxC2onJQxtTfybBJ9jo7TVGVigYrYXre.B
 ebJq7CcuigmElbq0Z0k4gMpyEn055rDarYAQPe23rETsEKk0er0jFLXCv663Q8K3vXxYS88GXMVh
 qiYI3mRH3V863hropYejI4jNYOInwHg01l9cLY0Yd0IBNaBNwxiIj4u1uYCil2.b_QvwMmvsD3C4
 SgfUfhgx_NbgQqcLIANMRL6L5S1BZ9uswOl795I2AXSmWRXM-
X-Sonic-MF: <mnew_iraq@yahoo.com>
X-Sonic-ID: 96a82424-8a56-4c30-81f7-d7d3ea4badc4
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.gq1.yahoo.com with HTTP; Sun, 25 Oct 2026 12:54:12 +0000
Received: by hermes--production-ir2-5dd9bf4598-b6ftf (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 2416c4191a8d653539d2fb9f60260ade;
          Sun, 25 Oct 2026 12:54:06 +0000 (UTC)
From: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [PATCH v3] wireless-regdb: add regulatory rules for Iraq (IQ)
Date: Sun, 25 Oct 2026 15:54:00 +0300
Message-ID: <20261025125400.799-1-mnew_iraq@yahoo.com>
X-Mailer: git-send-email 2.54.0.windows.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20261025125400.799-1-mnew_iraq.ref@yahoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_055416_759255_41926C16 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add a regulatory entry for Iraq (ISO 3166-1 alpha-2: IQ).

Iraq is currently absent from the database, so devices set to
country=IQ fall back to the world domain (00). The Iraqi
Communications and Media Commission (CMC) has published a numerical
national regulation covering Wi-Fi.

Source: Regulation on short-range radio communication devices (SRD)
and devices using ultra-broadband (UWB) technology, CMC Council of
Commissioners decision No. 122/q-2025, in force from 2025-09-22,
Article 4-1-13 (Wireless Access Systems):
https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-radio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technology.pdf

Limits as stated in the regulation:
  2400-2483.5 MHz: 100 mW, indoor/outdoor
  5150-5250 MHz:   200 mW, indoor
  5250-5350 MHz:   200 mW, indoor, DFS
  5470-5725 MHz:   1000 mW, indoor, DFS + TPC
  5725-5875 MHz:   2000 mW (10 MHz ch) / 4000 mW (20 MHz ch)
  5945-6425 MHz:   200 mW, indoor
  57-66 GHz:       10000 mW, indoor

Encoding notes:
 * 5470-5725 MHz: the regulation requires TPC, which Linux does not
   implement. Following EN 301 893, the limit is reduced from 30 dBm
   to 27 dBm. The upper edge is extended to 5730 MHz so that channel
   144 is usable, as the 5725-5875 MHz band is less restrictive.
 * 5725-5875 MHz: the 2000 mW limit for 10 MHz channels is used to be
   conservative, since the database holds one ceiling per band.
 * 5945-6425 MHz: encoded at 80 MHz pending clarification from the
   CMC regarding AFC requirements.

Signed-off-by: Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
---

Notes:
    Changes since v2 (https://lore.kernel.org/wireless-regdb/20260521101501.1841-1-mnew_iraq@yahoo.com/):
    - Reduce 5470 MHz rule to 27 dBm (EN 301 893, no TPC); mention in commit message.
    - Extend 5470 MHz rule upper edge to 5730 MHz for channel 144, with comment.
    - Add comment for the conservative 2000 mW (10 MHz) limit at 5.8 GHz.
    - Use 10000 mW for 57-66 GHz, as in the regulation.

 db.txt | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/db.txt b/db.txt
index 7aff3fb..43dc0b3 100644
--- a/db.txt
+++ b/db.txt
@@ -1017,6 +1017,30 @@ country IN:
 	(5725 - 5875 @ 80), (30)
 	(5925 - 6425 @ 320), (24), NO-OUTDOOR
 
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
+	# Regulation allows 1000 mW (30 dBm) with DFS + TPC. Linux lacks TPC,
+	# so the limit is reduced to 27 dBm following EN 301 893.
+	# Upper edge is 5730 MHz so that channel 144 is usable; the 5725-5730
+	# MHz overlap is covered here, as the next band is less restrictive.
+	(5470 - 5730 @ 160), (27), NO-OUTDOOR, DFS, wmmrule=ETSI
+	# Regulation allows 2000 mW (10 MHz channels) / 4000 mW (20 MHz
+	# channels). Adopting the limit for 10 MHz channel width to be
+	# conservative.
+	(5730 - 5875 @ 80), (2000 mW)
+	(5945 - 6425 @ 80), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(57000 - 66000 @ 2160), (10000 mW), NO-OUTDOOR
+
 # Source:
 # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
 country IR: DFS-ETSI
-- 
2.54.0.windows.1


