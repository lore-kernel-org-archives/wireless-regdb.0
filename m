Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F487CD8C8C
	for <wireless-regdb@archiver.kernel.org>; Sat,  6 Jun 2026 15:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:References:Subject:From
	:MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=//wLNi3VCheXtxzfTJq2UPP9xFn7u2YoGdXXE2L7x30=; b=lMNUaJQIdqQ15IoYObHfydSkaM
	WM7oq/F5W2oeXxBtHJe1IBR9DVQwWVtpqIER8tspq2ATKHgQOafQylfyNOE19f6o8S4S8On4jXjYl
	yMRcEukbjyY6p985hOu8aIlswPZsoSRKUf9RnRQNtfV3pU4QfSu7GZZ6rTdreVrhsy7/kJPZINDzD
	bY7lbtDImUs01G6i0/WPIqFM2wQ6EN0AiZ8S11fw1EI5i6oNWFoyKMMr6NoU+1VnHmi4/JruCK4lp
	3y7HgbNG7sh6kF0w7+JUhKqvSKegvp/T73gbkgnO1f6hFHKU8WqkV/NLXybjnZvICeiiDzSXOUgYk
	M8uscqDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVssH-00000001gbm-2zs5;
	Sat, 06 Jun 2026 15:23:49 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wViqG-00000001Rk7-0xjv
	for wireless-regdb@lists.infradead.org;
	Sat, 06 Jun 2026 04:41:05 +0000
DKIM-Signature: a=rsa-sha256; b=TX0Y/rbStsqBLhTTPOwaCs4viaPws6qH9CS20Rdyzr2aobnzmVNOcGEqPubMbJMHrQLSa2f59uMqfBJzJ0hQABeeN9EXXQyQDSIM5YueniEcpd903vcVCPXKuyECdBPQSyDJIzCBvinz1UxOgq2G3B5ORBe0lxwoFAdblCWPLSgw0JtFjfDboGty38KT14HjK17ad+vcmj4GqbFzigOWPuF3bSpFolSvvckL9de4LeqCfLbhD4RP38Kx+irbP5ZyK3viv7jKQeepG9oZ/I/jBp88x6egw+lk7jE5gERuKkRrOeNgeHmtt3a9jQv4auI1QQouqfo9zJhb1HglXz7j/A==; s=purelymail2; d=ekze.org; v=1; bh=//wLNi3VCheXtxzfTJq2UPP9xFn7u2YoGdXXE2L7x30=; h=Received:Date:From:Subject:To;
DKIM-Signature: a=rsa-sha256; b=tjOKeT2mJF2pQF7fYiCYHzOosVKirG8GNCK2zr+OeWUB4/7bVT+kmMLt1BGkv080eBjftPIS986gByWjaeLIdwhvatW+oSZsSaskdopBrKG/kPpCgSmqcDqlZhxZpVBzc+KaSC6DwfbmvQoybFkz15ZURs/96Bw0Cy1hdQMnfGIxg2VnacXjJ1l8WsxVLW4oRhiPsBzvb8h4MUh5quo/J2f4rVJNwVEZukS/Ct8Iz2z0GtpNMVPIA5GU1WYb4gMONiqKyoedcrpqA7//lGNEHygsqkG1aSM6KR4fRrAJ3FkvsHwBf4Dpk2DCobXb3nASCutxkzddJOKfh5bHSr3YdQ==; s=purelymail2; d=purelymail.com; v=1; bh=//wLNi3VCheXtxzfTJq2UPP9xFn7u2YoGdXXE2L7x30=; h=Feedback-ID:Received:Date:From:Subject:To;
Feedback-ID: 815493:39682:null:purelymail
X-Pm-Original-To: wireless-regdb@lists.infradead.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 712500793
          for <wireless-regdb@lists.infradead.org>
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 06 Jun 2026 04:40:59 +0000 (UTC)
Message-ID: <ab5f2d69-a311-451b-aded-31583f9591a1@ekze.org>
Date: Sat, 6 Jun 2026 08:40:56 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: ekze <nya@ekze.org>
Subject: wireless-regdb: Missing 5470-5725 MHz WAS/RLAN band for Georgia (GE)?
Content-Language: en-US
References: <cd0a8084-9ce9-4715-8a39-d97e0f7c754e@ekze.org>
To: wireless-regdb@lists.infradead.org
In-Reply-To: <cd0a8084-9ce9-4715-8a39-d97e0f7c754e@ekze.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_214104_358797_E9C45F9A 
X-CRM114-Status: UNSURE (   4.39  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Sat, 06 Jun 2026 08:23:48 -0700
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
Reply-To: ekze <nya@ekze.org>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org


Hello,

Sorry, I forgot to CC the wireless-regdb list on my previous message.

I noticed that the current wireless-regdb entry for Georgia (GE) does not
include the 5470-5725 MHz WAS/RLAN band.

According to the Georgian Communications Commission frequency plan, Georgia
allows WAS/RLAN operation in 5470-5725 MHz with 1 W averaged EIRP, subject
to mitigation requirements based on EN 301 893, including DFS/TPC
requirements. The document also notes that if TPC is not used, the EIRP
limits should be reduced by 3 dB.

Official source:

Georgian Communications Commission, National Frequency Plan / Frequency
Allocation Table:
https://comcom.ge/uploads/other/14/14075.pdf

Relevant entries in the document:

- 5150-5350 MHz: WAS/RLAN, 200 mW averaged EIRP, indoor only
- 5470-5725 MHz: WAS/RLAN, 1 W averaged EIRP
- 5945-6425 MHz: RLAN, 200 mW averaged EIRP

The notes for 5250-5350 MHz and 5470-5725 MHz reference EN 301 893
mitigation requirements and TPC, with a 3 dB EIRP reduction if TPC is not
used.

Would the following update for GE be appropriate?

diff --git a/db.txt b/db.txt
--- a/db.txt
+++ b/db.txt
@@
 =C2=A0country GE: DFS-ETSI
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (2402 - 2482 @ 40), (20)
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (5170 - 5250 @ 80), (18), AUTO-BW
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (5250 - 5330 @ 80), (18), DFS, AUTO-BW
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(5470 - 5725 @ 160), (27), DFS
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (5945 - 6425 @ 320), (23), NO-OUTDOOR
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (57000 - 66000 @ 2160), (40)

I used 27 dBm here because the official document lists 1 W EIRP with TPC,
and says that the limit should be reduced by 3 dB if TPC is not used.
Please let me know if a different representation would be preferred.

Thanks,
ekze


