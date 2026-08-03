Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F11C55184
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Aug 2026 13:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/FC6z87r+mdO33nIFcf4J/sknNa4tnocxzppMasidjc=; b=UJSREw9YQNLpkJHOwQ/iPjpw2Y
	Mb1RN9fgSDlqSfGgZaY2b6gemwB9awlmXqkF+b9bOV28Dic1CNW96ihz8VvX5edn/XXkRrkQrPoeH
	qLN1N8EN+Ka+izLlATcRQdYabk4n1elFh2M8Kpyu0XMCEuza6ji3kfW7Tc5DRzJ7gssHhMN5L8zVV
	h0b3zDxdYacv0jQBKvGw4kQWWV1DhEpHSIsYDGo7XQDQUFKD7G98FCYiSPjgavY8hn1b7YBDqrQJs
	8NO37iZQoA0ND5k+gGnB1uhYl/bZYprQeUFIvVgidMZA7iJroMS7Gxie1Wy9bG8pUryqohnWOoTyp
	fORaN1lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsra-0000000HB5s-0qNi;
	Mon, 03 Aug 2026 13:37:54 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsrW-0000000HB53-2nG5
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Aug 2026 13:37:53 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-51c167c58f2so21849611cf.0
        for <wireless-regdb@lists.infradead.org>; Mon, 03 Aug 2026 06:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785764269; cv=none;
        d=google.com; s=arc-20260327;
        b=EvC5ipmqpBBHntPmpAMNuZrUCrBCg6jQhqVh+gjqyJ4wnqUGHwQOnGJwrUNeDpyFd0
         munB5w1wjVPZkmnpxORIZ9eb9A0YIr1tdz2PfJK9lU3AlTPWPwuT3TZZ8kszO/IBnRk9
         TovX9oFXvOxAt1EIGlkCi1OYrasDmj+EtmLOmSkhE9+TkmPHOSaZQlZVd6lsPUMNsTe9
         Gtl+gdwSObB/ouCcBefSK6nw/w7JMcKUuVc6G5PTl7Ki4Gb3tJE+9xxm22kNB69UgUjG
         wFIXOhK7HgXyQwKBd7bGH6zBf5JCSqGr87VlNTA1vI1R+m1Uc9XEBzw3AZynRA9E2m3B
         16zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/FC6z87r+mdO33nIFcf4J/sknNa4tnocxzppMasidjc=;
        fh=BzVcj3AOSjt+4oCebDOU6fO0kGZQwBEUFf03l6Edbvw=;
        b=QJDrQaMb3SQ0eOraAGGUX4SiRv5nX3j6M7br9KQbrXM+RF0J9UyMLOkxONayXM78vl
         eQWGGjqJd08tr1g6FyKlcQRHBkqiXKAsg40CBr0aM8TIQM2LILw2D5mV9V2/xn7zeFqK
         myyt54VWKT0042+VLygmJhJb5/8J9R3k8sLostZ4LY6NtUNdKjyXxoozjwG1SshYk4Fw
         psscP3Yopl/ZmZiyHahMoAQew8Ref3JoV4Qr+sRW2SX0jpgpjP8s2Ka3Frx0za3MD2Uj
         0R+12BJC8pQ/PsJs8hB0kgCXC3jEmdMGVFpJLhDJCnF6EcR4Wj4hDWBcNQP3KGxWXU8V
         S9nA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785764269; x=1786369069; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=/FC6z87r+mdO33nIFcf4J/sknNa4tnocxzppMasidjc=;
        b=JI9gJ4GpRLVP7YXOFaMnaracdKgWw9oYLtw5hmqvz80mq1QUQxbXy/3R2VQuPK/O70
         azJq8QoQYPshRYNC1nxmrAP8fCjNWJRN/QZfNnIGqoXXrLN4+n/GMbDvl+tYpnCcvkBd
         9XHJtffKuZqpFv7hH3q3yhnYBMU0mVxRoHEaxVua6pZDMU0i85qyjwaY/XUikSNIAs8d
         2u15dtkQJpdgiqs659JFnw5KANkQndTMPj3Udf5NfeitBqwqP7qXmecVDCrmMXh01Dfd
         KWnRCOd2/emOR7XxXl0pad7F7NdtzTBfYVb/AqZFWmdg2PYhRtf9tMSMDcrXeCVFQUeT
         kChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785764269; x=1786369069;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=/FC6z87r+mdO33nIFcf4J/sknNa4tnocxzppMasidjc=;
        b=CSuzFaR3mdYLUcrDqwuDMD4orEqRNE2eO0HGhLTiowpF6s3r2Ctq6Ij5AyRSaRRrx4
         mAwT6/w5y6qtpgSuDaPTPSSrILGj+yA0RP0dMgdiXO4SBj1t8I4uwgvWJhZADgcOOzd5
         zxgcGrlJBwxxzlPcir07XPlIBJCWguDZ6VmXbZfgmrvDi9u6u8ru+72xu5TqyJO3hpx2
         J1W0IKqV+P4Amhem0pFfsjxSpvXzzfaywzdB4d1xlHNOIc7oar4msLUK3RyJFQTKKFUi
         ajLRz0jmMPiK3iItV3Uby51pGUZXEnlZOSPP8z/A47rJ9Sxm9RLi4f8/XBFuqubwqDb5
         G5Lw==
X-Gm-Message-State: AOJu0Yy4VlT2fVAV3Y/TawpUoISOadFPUc+0G8w8doSAKW6Z0cveIPn6
	3CjQoHpwmCgK67yLeduL2QoOMtm4SUmjG89V89BcDLalXceAlV1x0MPSFNKUUJhsxqO0yl7Jk4t
	Xit2gfmcQH+hufXAWxNvEo4zOhHWJGrb6eEjC
X-Gm-Gg: AR+sD122DwAo9iD/tKHe5Jdx4uBpuVK/fXqHhtR3dEiKmItuqISswJrmU5Q6iT/Wzk1
	6f2kSt2BpzxM3kAm1YaUKYMR0dJtNf+VWqyNlnEMAlad2BIMzAS3H0KJt9VgoV7DPm+1a8E1S4w
	N3x3zzqBAlPEpLTYjzZrx71mR0it9nMBaJxSf02MSoS6tLC1KsfBxmGgnK9+L1SORj1w+bAYeFc
	3VnnRhkZ6fi46TdArmKFN6pp4Z89NYhgtaQlCLdqMbD3oz4rut85setnT8CdWNe2V6Q2Y1ebrki
	qcU0aLZmRBhqATqQo2LSAu0bGMOQmNrbEVk69salYmcDIQ==
X-Received: by 2002:a05:622a:2448:b0:50d:e471:2d1e with SMTP id
 d75a77b69052e-52b56796756mr216669591cf.35.1785764268494; Mon, 03 Aug 2026
 06:37:48 -0700 (PDT)
MIME-Version: 1.0
From: Morgan Wong <pbodq2@gmail.com>
Date: Mon, 3 Aug 2026 21:37:37 +0800
X-Gm-Features: AUfX_my52F_WsXUNKO17EPdt6_bQ37R_zLDjYZWy1NX8Nrq8o2XftkK-hFIQ_Ms
Message-ID: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
Subject: wireless-regdb: Update regulatory rules for Hong Kong (HK) on 5GHz
 and 6GHz
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_063750_717224_CBDDFCDC 
X-CRM114-Status: UNSURE (   5.80  )
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

Dear all,

Currently:

# Source:
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
(2.4 GHz and 5 GHz)
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
country HK: DFS-ETSI
(2400 - 2483.5 @ 40), (36)
(5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
(5470 - 5730 @ 160), (27), DFS
(5730 - 5850 @ 80), (36)
(5945 - 6425 @ 160), (24), NO-OUTDOOR



Update :

# Source:
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
(2.4 GHz and 5 GHz)
# https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E
(2.4 GHz and 5 GHz)
# https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/en_301893v020007a.pdf
(2.4 GHz and 5 GHz)
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
# https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/en_303687v010000a.pdf
(6GHz)
country HK: DFS-ETSI
(2400 - 2483.5 @ 40), (36)
(5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
(5470 - 5730 @ 160), (30), DFS
(5730 - 5850 @ 80), (36)
(5945 - 6425 @ 320), (23), NO-OUTDOOR

Reason for change in 5470-5730 :
The HK department, OFCA has its own requirement, 30dbm in addition to
EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
having the biggest tolerance among major world standards to be an
international city. The OFCA, 30dbm is the baseline value to be
fulfilled in the highest priority.

About FCC
27dbm (500mW) without TPC, 30dbm (1W) with TPC
# https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(h)(1)

About UTSI (same as FCC)
27dbm (500mW) without TPC, 30dbm (1W) with TPC
# https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/en_301893v020007a.pdf
(page 17)

A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as I suggest.
Or a TPC regulation flag may be a good idea to bind with 30dbm together.


Reason for change in  5945 - 6425 :
The HK department, OFCA requires to have its own EIPR limit, 24dbm in
addition to ETSI 23dbm.
Therefore, the smaller value should be taken.
(6GHz in HK requires no reference to FCC standards, unlike 5GHz situation)
WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era.

# https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/en_303687v010000a.pdf
(page 17)


-- 
Regards,

Morgan Wong

