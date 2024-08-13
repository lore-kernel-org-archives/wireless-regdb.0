Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F750C52D7B
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 19:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1fA0wCHKHB4VAu8A0xNIa0V/GUCD3lKKomB1JL3bD0=; b=AyVcQeXcOEhq9Gl7qz+4smpik5
	nUtq+HKiraA4sLMXDdXepeUKxeOSIXsrbICysRk28IR+T1P1O7t6Q/Awa/9naLSPkIBC0DrmAE6XW
	i2PZ1oxEDXNVm5FARS+63IvnaKxer2nlIbgqBSMLh+04RkbYNmHn/TxXTT6+clndrH3H5tuKK91W5
	fR+45UNBc65kjxPlOF6oprhJjHXePUH2VG+sqfygjIrN9HmsK/qVNDbg21fgr4m5qbYkzTLL+c4He
	N2rNpsqeKeYEXQqL6DWicIcySdyJipsyeBRKEbOa7xbD2LjaaUOkzw1ZKDedvLwwmEXAsKPc8yEPl
	m1nJfvZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNK-00000004mGK-0v98;
	Tue, 13 Aug 2024 19:40:10 +0000
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNH-00000004mFE-11rF
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 19:40:08 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 898D3138FBA9;
	Tue, 13 Aug 2024 15:40:04 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Tue, 13 Aug 2024 15:40:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1723578004;
	 x=1723664404; bh=A1fA0wCHKHB4VAu8A0xNIa0V/GUCD3lKKomB1JL3bD0=; b=
	H0fs40DDslqqxv4EcFfv5KpGezsLAEUV9o4h83Qg7yeFheeETAEa6xLtJb4yQ/I7
	oJmqzqbliG+coS+2KTk1fH+EzFneexpvWEiFvMOGOygo4Cc1lLc63AVHWHLGQI2K
	czQBFS4/Ujmv9ZugHz5JxFqXjluIlbLjgr2z+QRVGDHx6Y5yLHO39TnuAcSsFNGN
	BQod5bGXRhRj9yJZkvhlNEdvPge1CKZfg+yhiHj0WjfouXXweJygJ+e4VbL4O63Z
	FJYKTkKFP6tSPhkzTHQIqb/EScyoEqnecLvLzRfFM0VxWfZXOG/FWeSO3WYyrkpZ
	KgxkcBQ5XdOY5pum6qEUWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723578004; x=
	1723664404; bh=A1fA0wCHKHB4VAu8A0xNIa0V/GUCD3lKKomB1JL3bD0=; b=e
	Bc/6Y/qRo/Oh90B9MdiXR8c71UlGbqFPgW3GWF/ZoB8Giav3mUF327EwQVwRVcs8
	d7fLwhJnJUIHRG2Q6imghxrM0fm2jTBRaXwMGQusS8ED0sopYEZXh149MI3iXT99
	t6ryRQ926cktdlNvQOJwa6UoqVoaURWEL3Qzy4XQyixkOO3e8/St3h7EMpBwpJ/k
	h/X2+aljA7aWaTx0EGBwyNWQ0zUvKYY9GqM97t6FqzoeDpxl32F7BD6Rz9l8re0+
	7/ie685sAI9L3slhZrEvVl7dKMnSUWqI/NnNXqGgIMm9y17t6ssB9LCBWDztv9EF
	uhSIFN/Mo9bNMYcI/1BkQ==
X-ME-Sender: <xms:lLa7ZjjVJxqLs-gI8nCi3Ulrdss_cMR4Qt0Foh16Pioas0qRC1An-g>
    <xme:lLa7ZgA1HFSoUi3KSpMtq9oTPXAa6ynaxgsPbLdAnvVKfcWlE_jUFgQPs63eg_zW4
    DIHmFurNMpyI3FTU3o>
X-ME-Received: <xmr:lLa7ZjHpAPso6LorXWc76t5igxS95tY8kPwHd0aGHqKuQQRyPI39lvBeWfU2khUYkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtvddgudeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtredt
    jeenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehflh
    ihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejleeluefhjeelteeggeelteev
    gffffeetiedttedvvdekhffggeeftddukedtheenucffohhmrghinhepkhgvhidrphhusg
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgr
    gihunhdrhigrnhhgsehflhihghhorghtrdgtohhmpdhnsggprhgtphhtthhopeehpdhmoh
    guvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigqdifihhrvghlvghsshesvhhg
    vghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehjihgrgihunhdrhigrnhhgsehflh
    ihghhorghtrdgtohhmpdhrtghpthhtohepfigvnhhssehkvghrnhgvlhdrohhrghdprhgt
    phhtthhopehquhhitggpjhhjohhhnhhsohhnsehquhhitghinhgtrdgtohhmpdhrtghpth
    htohepfihirhgvlhgvshhsqdhrvghguggssehlihhsthhsrdhinhhfrhgruggvrggurdho
    rhhg
X-ME-Proxy: <xmx:lLa7ZgS89GzBmVcDfVrtGw-7Fc7zI_IJ7HfYx3qh1cJO_DQrYPinzQ>
    <xmx:lLa7ZgxqE02QG0nA1qQHhXeQULmqEkmUozfJD8DHLAh_uKSfg2ii2g>
    <xmx:lLa7Zm6Lge51ogsExtxhRNq2tonGcSdNviby4h8MTecGiaPhOpGWlw>
    <xmx:lLa7ZlzDclCpNX8VzW-6AtLpwkBRMtKgswr4PrqQ0tjdHVxaZhV_Hg>
    <xmx:lLa7ZvqtEq5Z9mqGTeaCmb270h99ELjeQdWN1rmoS8fmpBaO81Xzy1wg>
Feedback-ID: ifd894703:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Aug 2024 15:40:02 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Date: Tue, 13 Aug 2024 20:39:39 +0100
Subject: [PATCH v2 1/2] wireless-regdb: Update .gitignore
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240813-workflow-v2-1-6d8039283d45@flygoat.com>
References: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
In-Reply-To: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 Jeff Johnson <quic_jjohnson@quicinc.com>, 
 Jiaxun Yang <jiaxun.yang@flygoat.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=506;
 i=jiaxun.yang@flygoat.com; h=from:subject:message-id;
 bh=WFEja1uNIEQQnHxNCRa/a5OW659QANnd9J89AeXwSxs=;
 b=owGbwMvMwCXmXMhTe71c8zDjabUkhrTd2/odfh5/HjPjVr/Q+1UcabqR+3+6vS2ZNWH7ZePzs
 +Ly4lLaOkpZGMS4GGTFFFlCBJT6NjReXHD9QdYfmDmsTCBDGLg4BWAiuwUZGRbXnRB5xcralfA8
 jrV4+5cN379Zl9dKvml05bXZJSRp2M/IcDPcXV3y1CVHTs+ZfUIiq8SObfOVerkwYnr8Lac9fWk
 6jAA=
X-Developer-Key: i=jiaxun.yang@flygoat.com; a=openpgp;
 fpr=980379BEFEBFBF477EA04EF9C111949073FC0F67
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_124007_410280_ED3BC9B1 
X-CRM114-Status: UNSURE (   6.06  )
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

Update .gitignore to ignore Python cache files and other
intermediate files.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 .gitignore | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index a59d40833aa0..496247bfdbd1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,2 +1,9 @@
-key.priv.pem
-dbparse.pyc
+__pycache__/
+*.py[cod]
+*$py.class
+
+.custom
+!wens.key.pub.pem
+!wens.x509.pem
+*.pem
+*.patch

-- 
2.46.0


