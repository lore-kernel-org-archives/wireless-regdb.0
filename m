Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A11ECC54FB3
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Jun 2025 10:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P+pZ4ibZngU0Ep/xNBg5QbX8BMIOPLddp+EmSkIn5lg=; b=LuWsZgr1vv58rMoKcvDokATOao
	5cmMU+iP4Ud1OW0GWycEsXfiHAt5kqFsJy1OHNhRZosX21Fl5P/Araaimd8jJ3pteSShNC/+XcTf2
	B6kd/SZyM62GoBQrfgw1HlGXjBokxxm1Lq7Pzri0se3ym826B9xpIc44zt18p/5C+cqrto9UUeU8o
	XT7XGeBlJwmP0zZBtfH1FFh+55nILbMH0tR/7FcgGS96pmwSYx+RR32WVGi6K7hrs7jMzPm5EOwmo
	CHZsqKdCxznJeldik9iUrXCKr0wJ6jwMrl86e9viRUfRZTJ9DqdZQfunuQMarTgN3IQJwjtCNXHuZ
	DRyvGpkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2CB-00000007AZT-1zY2;
	Mon, 02 Jun 2025 10:15:07 +0000
Received: from mail-vk1-xa2a.google.com ([2607:f8b0:4864:20::a2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2C9-00000007AYn-1x6B
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Jun 2025 10:15:06 +0000
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-527b70bd90dso1285411e0c.3
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Jun 2025 03:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748859304; x=1749464104; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+pZ4ibZngU0Ep/xNBg5QbX8BMIOPLddp+EmSkIn5lg=;
        b=a1PzCAGPUXtQFpvhsj8PwBwQKONgZSm2ZGMr/jVS/Wvjy5ojksaxj80OJC1LZ7HfXI
         AEhlaGJA/2k0pr6nvPuU4JI8Q3tsk3vdyHdAJOMzffViRuf3hx2r3OJU7cHqwk6mhG2j
         885Ngvmy11/0MLyrZIhWNxlbXbjDVwMDOqUr9NQQm+2CdTXMMGtxmO4LUQJ5DYobE9Ly
         pR6o0myX5RAvaC4Yn8xYxKZMpJEnyhm2yQXxoqa7n3cJzU4Y8mznJaAeFEhFdQPgH1q0
         kgHX1+wbxNy847EhnVyHG41S2V49pvgVwwbF1gau8s1wM30BPVV19B8QA35/Hz+Dh0fs
         r+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748859304; x=1749464104;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P+pZ4ibZngU0Ep/xNBg5QbX8BMIOPLddp+EmSkIn5lg=;
        b=AALDp6d/33emzzv/YQE0wgBQYDy+0ZE4WDUSTkqxL4QH+pwpCLncS6ZSgH1VcAeRD3
         3qjrkAdpgZPly19b89Mi7lpHbj2dEQH023ir1OMYSRpaoS6K4HpVkgTYJzMDlx0Wzo5j
         V/Od67cgwok9d6SYDJku2wbyRDU+mJ1xBMietklFhcXGi0EdRtdPUcI/TAC848wb31vL
         mPepVyn91uXFNtbF1AStS0VXNaZiEGwrkUR77KdeoeSXeUQTofN8gDb8A0KvHdCu+EAS
         7UdV2vc2A4SfrBA7d1bWp0tPARObGrGzpMWiUULS20qtaUd5IVRKfeRiVlVpHqE240mq
         FLQQ==
X-Gm-Message-State: AOJu0Yz6C2r7YsappSuZa82Kyqc9yEpo/i1QEowfjTTk71OpalLMnsfh
	Q/mQDSWybqF2RUuokP5kirO9PB2AEzh1dOWf967kgY0HZU7/S8JOzWdj
X-Gm-Gg: ASbGncudKhCxZXH7cjNBLevr0B9+fHmR/x7dtya9u1inCd3iMyt/oAHWcLU/Oy9J2Ri
	Pi8zo3nP4Q83Vy6rMYYeeq8Pp7AWYb8sOrpcg/CZCZowuAw7lKeeYLZkVAQli0wiE1ByicryGDH
	SQ/eO8YtIZUFiK+r8ngvQ/w6YxVaA6M25TURsK9aKsTwXZtJ3NDayS0u+RMKTQfqTBqDjV6250Z
	CaMZLFmx0nwX3qYR7xPfyCUcscJfEg/WC4NjLDXxgShw13h62pH3tP13EiqvCnCa6qQFoovP3hW
	RWtXI2sRWdpNr+jOyMwUZkxm++h/6+lkxEYEsc/tiACbBZwyzcinIXQfr55UBjCsY7zHs5Shx9I
	N3YYx2a+O7xnQF6V7rLWJ+2MWNsQ=
X-Google-Smtp-Source: AGHT+IH0WL0xwzki2yFzazOGPV3eR1o34uIuSU/swFMBOCrrWo+AjdoJtKHq+OSn0RRN6319Wl1n0A==
X-Received: by 2002:a05:6122:2a0a:b0:529:373:fcb7 with SMTP id 71dfb90a1353d-530937f716amr3692280e0c.10.1748859304037;
        Mon, 02 Jun 2025 03:15:04 -0700 (PDT)
Received: from [192.168.1.130] (177-1-191-98.user3p.v-tal.net.br. [177.1.191.98])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53074ad91aasm7204562e0c.19.2025.06.02.03.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 03:15:03 -0700 (PDT)
Message-ID: <028ac59f-b0d9-46c7-885f-642810b65c50@gmail.com>
Date: Mon, 2 Jun 2025 07:15:00 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Content-Language: en-US
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
In-Reply-To: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_031505_508541_D89468FE 
X-CRM114-Status: GOOD (  16.61  )
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

> Hi,
> 
> The rules for Brazil were based on this normative https:// 
> informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680, 
> as mentioned in the comments of the entry.
> 
> This January came out a newer normative https:// 
> informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772,
> 
> It allows 6GHz frequencies, so the line:
> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> Should change for, at least:
> (5925 - 7125 @ 320), (12), NO-OUTDOOR
> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't 
> work because of this outdated rule based on an outdated normative.
> 
> I'm no lawyer, so please if you see something different, like more 
> granular control in the allowed frequencies, please let us know.
> 
> Thanks,

Hi, I created a patch to solve that.

 From be7b64050691e85490f8adf1a39dd63a4c2192a4 Mon Sep 17 00:00:00 2001
From: Marcos Alano <marcoshalano@gmail.com>
Date: Sun, 1 Jun 2025 21:07:00 -0300
Subject: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR) on
  6GHz

Change rules for 6GHz in Brazil, removing `NO-IR` and adding
`AUTO-BW` so the 6GHz band can be used.

Add the relevant normative in comments.

Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
---
  db.txt | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index e331d4f..3b0adbb 100644
--- a/db.txt
+++ b/db.txt
@@ -321,8 +321,8 @@ country BO: DFS-JP

  # Source:
  # 
https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
-# 
https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
-# 
https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
+# 
https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772
+# 
https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915
  country BR: DFS-FCC
  	(2400 - 2483.5 @ 40), (30)
  	# The next three ranges have been reduced by 3dB, could be increased
@@ -331,7 +331,7 @@ country BR: DFS-FCC
  	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
  	(5470 - 5725 @ 160), (27), DFS, AUTO-BW
  	(5725 - 5850 @ 80), (30), AUTO-BW
-	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	(5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
  	# EIRP=40dBm (43dBm peak)
  	(57000 - 71000 @ 2160), (40)

-- 
2.49.0



