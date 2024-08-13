Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFDD2C52D7D
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 19:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GpXFvMRZ5N0EtQmZyd99TLIessWi6IbG1yTj1xg8Deg=; b=C3JALP9YKFSjnaFNg2U7gz74sN
	NhvSqphn+q0s1n2YyqU5vCJCYeD6DhrMoIUstMwLhWkhue0ILCv+5YCLMEh8wwmsME9BlrdomTd5a
	DAvENd56WCG0bnacytfIt5pgD1nqBvBedYge2qKg+ujHvbzwtoACXuDL4Z+6i5EfNk9enWYoshyAb
	6Hade3VlmjF08WJ6yksW64eqRH9n3Bk11z36n2rBpLj7jn9kBtE+A6hzG+sjkzwGvHCms3CW91SeF
	EXCPT+SkdYbgXqkTl8RFL2zmPr+jm+gSsLKGsx+vICq5iqetbpD83WUUuha8z62TdUalkoPjqjunF
	0KnQHwiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNK-00000004mGU-2iRz;
	Tue, 13 Aug 2024 19:40:10 +0000
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNH-00000004mFR-0pBv
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 19:40:08 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal [10.202.2.41])
	by mailfout.nyi.internal (Postfix) with ESMTP id 4D04B1388017;
	Tue, 13 Aug 2024 15:40:06 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Tue, 13 Aug 2024 15:40:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1723578006;
	 x=1723664406; bh=GpXFvMRZ5N0EtQmZyd99TLIessWi6IbG1yTj1xg8Deg=; b=
	gNB8VQvSaG8ewFkXGQujsrTG0ziJIrdpWOI6O+qCdaUnD6ZPxXPczDGVi+6lE0Ua
	X3DAFfCw8hoagFATd+T+2GHupcdzAyIRsHgewy7opFB36IMQrxVi0mJkAi+0Vt4i
	YU3XYgTtVLodxQHz6b2zFNLhn+cJFAGOa6DxZIxJ/njkVujoeDmkR2oDxRTMRlxl
	tlRDXhLLHHOBDmrpNPT26KBJ5Tsm4UBpv1plNfFYeErB89UMyoZJSTbBg46Zy6zm
	KIAUFlwQmAZQtRVPsZbw8HP80C3NWhoN2dtIPWt65gWcKtJLAXQdwmjBcSzS5XVs
	5ngsyj+dwlldlaOGojzYWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723578006; x=
	1723664406; bh=GpXFvMRZ5N0EtQmZyd99TLIessWi6IbG1yTj1xg8Deg=; b=b
	pB0KtCv72uHsd+Ze8Uu+tWKW4O3XGCs6nIc6k27xOP9eyfdmTZW0xU0vb6WsNu6L
	kLDPgICfDgcLFsuBJBXZawp0VKylns4x83bEzbCz5Z05/EaEQl36UYz7HFRxq4WB
	ECy+il1yEJ0Gk9BtiMw9R5Q/TB7rczVoVVfifmTTwzt6fNwIH7VbP0F83gkRONtn
	JvcdwEMN3THHtBYkrFWqXTt7AYdYSexZgM6rh5dRMgr36wdEmcwtZIpgyjRVAjlQ
	bi8icL4UACbuXTfCqOZGF/Ubex+5qg0H3qOlt3loyhqQmlbMJzRppAVFbRqFtklb
	6iQp7UULahyQgVzNhh4mA==
X-ME-Sender: <xms:lra7ZjCnLL9aF1jO3uzHAUmSPtqc9QCDyvrkhbG3YF8EKybrzlnpiQ>
    <xme:lra7ZphrboxaZC7urJ9NP1zygBoLoXhQjS152qgNh2VsiYmszlaOsVz0pX07aESsy
    QujFg3pWh1r-MBhS64>
X-ME-Received: <xmr:lra7Zum3LvdyIn2RFtDIc611r-n2ugHGaN9VM3Lx-h6adkYQju47RKxADlBKtgOcBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtvddgudefkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtredt
    jeenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehflh
    ihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeevudejhfffhfevkefhffekteev
    gfetjeekuedtudeiheeigeefjedtleevjeetudenucffohhmrghinhepkhgvrhhnvghlrd
    horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    jhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomhdpnhgspghrtghpthhtohephe
    dpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidqfihirhgvlhgvshhs
    sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhirgiguhhnrdihrghngh
    esfhhlhihgohgrthdrtghomhdprhgtphhtthhopeifvghnsheskhgvrhhnvghlrdhorhhg
    pdhrtghpthhtohepqhhuihgtpghjjhhohhhnshhonhesqhhuihgtihhntgdrtghomhdprh
    gtphhtthhopeifihhrvghlvghsshdqrhgvghgusgeslhhishhtshdrihhnfhhrrgguvggr
    ugdrohhrgh
X-ME-Proxy: <xmx:lra7ZlwQzxUjRDVKZMHbClIsxCSB64iD7Tgwg0QFUEGgxE6om9KOXA>
    <xmx:lra7ZoRj8Gr-42huZhn5ptYkiQf1IXSmnz8wVRNKZrLsNdDQRnkCUA>
    <xmx:lra7ZoaTWTgXzNVmApxel60MbdwNyYu19fvfrujWO0U-J-t_AmgkJw>
    <xmx:lra7ZpTF0x6NlH8nM-au6AjofgcU32ToBGF-d7U5m_MPP7JjsM6Nng>
    <xmx:lra7ZtJSpBd05-Utf0VbBRboAzzwL5Dqeqz0AnOc1jqOL9ijzHcYi5Cc>
Feedback-ID: ifd894703:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Aug 2024 15:40:04 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Date: Tue, 13 Aug 2024 20:39:40 +0100
Subject: [PATCH v2 2/2] wireless-regdb: Add .b4-config
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240813-workflow-v2-2-6d8039283d45@flygoat.com>
References: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
In-Reply-To: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 Jeff Johnson <quic_jjohnson@quicinc.com>, 
 Jiaxun Yang <jiaxun.yang@flygoat.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=639;
 i=jiaxun.yang@flygoat.com; h=from:subject:message-id;
 bh=ml4CSISN8OBo/Hq60DJk2cXv8O2ztHe1PP/V2pFQ9Po=;
 b=owGbwMvMwCXmXMhTe71c8zDjabUkhrTd2/r55xx2v1ZlLjFB/fuTPdLBa1+/eZCmwFfJe2ZR2
 Ltvt9qXd5SyMIhxMciKKbKECCj1bWi8uOD6g6w/MHNYmUCGMHBxCsBEzkgzMiyqrF9sLad0el3H
 v4Adtx2i3yWtPqMlxcSel6YTvj3iBxvDf58LLikT+n7/fF+7TFN9r5jQrC+p3tEhTz/rS3tvnvG
 9jQ8A
X-Developer-Key: i=jiaxun.yang@flygoat.com; a=openpgp;
 fpr=980379BEFEBFBF477EA04EF9C111949073FC0F67
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_124007_362579_9B1174D9 
X-CRM114-Status: UNSURE (   8.49  )
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

Add .b4-config to provide default email To / Cc address.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
v2: Swap cc and to,  add wireless-regdb list (Jeff)
---
 .b4-config | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/.b4-config b/.b4-config
new file mode 100644
index 000000000000..fb408d3f62d3
--- /dev/null
+++ b/.b4-config
@@ -0,0 +1,5 @@
+# Configuration for the `b4` tool
+# See https://b4.docs.kernel.org/en/latest/config.html
+[b4]
+    send-series-to = Chen-Yu Tsai <wens@kernel.org>
+    send-series-cc = linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org

-- 
2.46.0


