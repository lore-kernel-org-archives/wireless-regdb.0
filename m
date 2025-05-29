Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34153C54FB3
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 May 2025 15:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+5XrwQcXjTJzUM2MFfvkIx9eS2VzpJsm+RPNfXTZeFM=; b=Ovx8HZ8hSRlslLjAtIpXIZgMLD
	RLWs5GCiPgWI7kaZYsKkhZbvh4EYw1O4be45x+eMWVDEFg1wbtFfF6Os0FxxBHWxNffgObmSW/ZJD
	WmLG4LTbe8GUL2RTmnW6M0KyXleiqixmlws6qYyk7hvVJtUeYzPes/YTNJ7cIpkTiuW5GXFz6DLa+
	kKUul1fA3dOo2AVn66eXFHrdJgQSlMkPhyri0AwE+wHwxcQjkxhQVY/Wtto0y+w2L1d5N97/ZxNzG
	skjBmhD3E03ht/d5lhEJKkeRBgxCSeN7498MfqPX5KsI4R55CAj/mKkIn68HPYEkiBMR8It++iMTW
	XPD88ygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKfGJ-0000000G50q-2VGh;
	Thu, 29 May 2025 15:33:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKeZf-0000000G0hq-2JUN
	for wireless-regdb@bombadil.infradead.org;
	Thu, 29 May 2025 14:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+5XrwQcXjTJzUM2MFfvkIx9eS2VzpJsm+RPNfXTZeFM=; b=GWdAwyJHb1g6lJdwQohtqCbn1N
	YSPB5L8Fr2xeRya4XoP4yr+wpE2Ov7vEewzBi41yDbldP1izzgXquaNH+6Eh7v0UOBRAeiUeEXBdg
	b/9nFTS2UZgyQRX8yQ3yIc0nkegMjhRU0FLimbdHoKi/VY0mDqeB9Xs5THnG/7LEZMPGbD4XnBS8/
	o4opMFwaZWJK1x7XGMOwHB1jHrEC4G4UBKgep6stWiAlbuwkPeWGvrsG/w0A3LmweWx6S7Yvhm9qd
	FI4KqVglQWv6Ht3a8Jk0rCeNeLxY6pfuA5xs6r5hrr4ZQK0xJViBw/rjoB9JvrbZ3GuA9xqPdDW3G
	di+AouUQ==;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKeZZ-000000008MF-3Mgr
	for wireless-regdb@lists.infradead.org;
	Thu, 29 May 2025 14:49:37 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id DD7461140122;
	Thu, 29 May 2025 10:49:16 -0400 (EDT)
Received: from phl-imap-16 ([10.202.2.88])
  by phl-compute-02.internal (MEProxy); Thu, 29 May 2025 10:49:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emily.moe; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1748530156;
	 x=1748616556; bh=+5XrwQcXjTJzUM2MFfvkIx9eS2VzpJsm+RPNfXTZeFM=; b=
	LxOVsix1UCiEECy1oFMxqGyX3OSUHipGIUqjcO9/MAyT6J574kF/78UhaAbSfM1v
	WC6Fl9YHPQt6aX/uh3403vR+Sm3Zs2MhQnTBS6X5AENHAFcyq+pN6wTRwBLEVZ2L
	6Hz9IK+dY1MAVD1/sBOi9ZMosP6jsZwipbW8n94ys4pBcJUlLKAwtnqNsaaBHT1K
	JNc5TKSCmmaQ5YBZkQP3HgXFEYwSm8lkTyNttd2bPKZ55viFzWtH5++dZzNFX1Ao
	7AKVWJOpLw32DIoWJ8Z0f89TW0rKkjb+rchDKqtWgWmPd+7goDPaEKmWiOLlX5sK
	EX1SCIzCGxUft7iQXIElMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1748530156; x=
	1748616556; bh=+5XrwQcXjTJzUM2MFfvkIx9eS2VzpJsm+RPNfXTZeFM=; b=B
	9sOwg5J51+3tVqCol4NpQ+0BgLwr+FWbGqg8Gp0QvvgZkI4TSv5zrRe4UXeQnYVL
	I8nVLj2fiKV4mjoOjF4laTti72fN6wTqiG1y2/GZFT+EhsrOCxzE5Rg8tQCrPXsH
	lp4e+vzjbFaf+KTiJZdMAcwpwNgOhCO/j14tci6DYPsZWw8uzX1emNKnNywWHpAc
	7vPdJXn3K91c5KoHv4d4h2lsPCDfaWAvl0AzPojKgQtF2u5RkTaLpGy2ARBaPuc8
	vH6Im21bzE2EWQvn9ZNesxqC7RIXWjaGLfmLG1qpbE3yUdbMlgQS4zyug06igqP4
	qEYA17A/D8qorsb+n3WsA==
X-ME-Sender: <xms:7HM4aDwkDYu2wil-7KrYlHOXk83v8PnRqToAtcRVTZhkmRLQgLDo_g>
    <xme:7HM4aLRxbLq78yNOVtX9iCb4W3TYkPTJTgam00JOYUsHos9Zpr40BxzVN23Ro4usL
    k9on5W2u-zGWgo2ztM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgddvieegudculddtuddrgeefvddrtd
    dtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggft
    fghnshhusghstghrihgsvgdpuffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftd
    dtnecunecujfgurhepoffhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhho
    mhepgfhmihhlhicuoehlihhnuhigsegvmhhilhihrdhmohgvqeenucggtffrrghtthgvrh
    hnpeejudduledvffeuteekveeffeetfeethfelieehjedviedthedvvdffgeeuieevvden
    ucffohhmrghinhepohhftghomhdrohhrghdruhhknecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheplhhinhhugiesvghmihhlhidrmhhovgdpnhgs
    pghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugi
    esvghmihhlhidrmhhovgdprhgtphhtthhopeifihhrvghlvghsshdqrhgvghgusgeslhhi
    shhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdifihhrvg
    hlvghsshesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:7HM4aNV5pK_6Z2T5-qe1zafaIWVBl3gVx4mc2KctKayqkjV-BajS6w>
    <xmx:7HM4aNipvNmQI6Lbn1sH1M65BTybEl4kmEfsVzIcfijACKZy4J73lA>
    <xmx:7HM4aFAlUFXaQ0ZwUBEmOrzJyoPwFMC6wxnr7St9mR4yRsZ_sq-IgA>
    <xmx:7HM4aGJfTJtgyyMX3F5jds0o14IF02GRKZ3lO4_FfAIx1Wweb-MYXg>
    <xmx:7HM4aKV5MjtxscjCu4X2s_RxL_EFaB0twb-lAqjyxn1q1H2udQfidUye>
Feedback-ID: i3c8944dd:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 55A3D2CC0081; Thu, 29 May 2025 10:49:16 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
From: Emily <linux@emily.moe>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Emily <linux@emily.moe>
Subject: [PATCH v2] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band for GB
Date: Thu, 29 May 2025 15:47:56 +0100
Message-ID: <20250529144854.31931-1-linux@emily.moe>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250529135706.31269-1-linux@emily.moe>
References: <20250529135706.31269-1-linux@emily.moe>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_154935_220754_EE55E291 
X-CRM114-Status: GOOD (  12.75  )
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

From: Emily <hello@emily.moe>

Similarly to the changes in 6c7cbccaee121772a23fa0efdfefcdd8a2369985
(“wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band in
ETSI/CEPT”), the Ofcom regulations for the 5925–6425 MHz band [1]
have no explicit limits on bandwidth:

> Maximum mean EIRP of 250mW for Low Power indoor and 25mW for Very
> Low Power indoor and mobile outdoor.
>
> Maximum mean EIRP density of 12.6mW/MHz in any 1 MHz band.
>
> Techniques to access spectrum and mitigate interference that provide
> at least equivalent performance to the techniques described in
> designated standards specified in the Notices of publication (See
> Section 6) for the 5150 – 5250 MHz band must be used.

I cannot find any material online suggesting that the use of 320 MHz
bandwidth is restricted in any way.

[1] https://www.ofcom.org.uk/siteassets/resources/documents/spectrum/interface-requirements/ir-2030.pdf?v=335258

Signed-off-by: Emily <hello@emily.moe>
---
Sorry for the list spam; I didn’t notice the typo in the commit
subject line until it was pointed out to me out of band…

 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index e331d4f..c2ed384 100644
--- a/db.txt
+++ b/db.txt
@@ -722,7 +722,7 @@ country GB: DFS-ETSI
 	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5850 @ 80), (200 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-6
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


