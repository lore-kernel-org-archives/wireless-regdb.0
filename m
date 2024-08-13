Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C238C52D7C
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 19:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EO9Tqzsuwl3wxc931KiR+Wfse5DDcRMICDxmR2dliRA=; b=sXS29u+aAmQ/gv
	ng3gFBYxcrFI8cmmdA41TUQKw2hrC64v8IdZi/BX6RxWUe51axBQL+uiN4CXowXsuKZzXV7YAO/Un
	dZY/zuxGQeB/ESyjSufVFlLeiexNlyxjJfr+/+edrJQ1TcLz8/FqeSIPjoxCGz4tK5QztmGvnjev3
	iwwBCnTlrwygzAN3KtzOie3nuvU1fbPpZiLnQlBTHyded8Y2z1DKHmZJusQTdjWFwsvdgYzR65of6
	107Wrez7tn3AtU2EQHZkPmUbmmDfZPkIaErmU4IFHrUf3NPgJWvPPQ4MMDD8PJf5kXRzeL7vHrHTj
	vLTa52BwYHZS/rNdsuSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNJ-00000004mGC-2zZc;
	Tue, 13 Aug 2024 19:40:09 +0000
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdxNF-00000004mEw-2lRY
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 19:40:07 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 2D8EC138FCD2;
	Tue, 13 Aug 2024 15:40:02 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Tue, 13 Aug 2024 15:40:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm1; t=1723578002; x=1723664402; bh=EO
	9Tqzsuwl3wxc931KiR+Wfse5DDcRMICDxmR2dliRA=; b=CyJCNmmk72cnm64tdF
	aBdqCwEbJ5KEUuZwJK8NA7jV9M+Guy6h1mV2FQ7w4Em5ozWned2ng57Q6Xp+plb3
	M1/rg/Ix3no8fG7MjfqCBaI3nQJeIj4Q06/w6GYmeTrVT86ckAj6OCUcNzv0saMZ
	6CHKBDf9zIM5EAWWlcyOh2tys6pC3Jucy2K8i346d5huHm+FYRoK441tPqMly06c
	Nf03kQUUtXOdO6vVj0ooH+qKflnsJQT2+zeHLJRxkOx3lC49yhJU1YVnc0SMz2aM
	VhkNq0hkrHh5l2aUaQ3d6K6oivIRsLdlUN4w0MrYcJKw5DQ/PbdtOIQAEOoBkCt2
	mMcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1723578002; x=1723664402; bh=EO9Tqzsuwl3wx
	c931KiR+Wfse5DDcRMICDxmR2dliRA=; b=eRJFsJWAe3tmgpRmb/Z3a6Lll4H/l
	U04zqPZ2qLUNTTQq/Z/CGKPRh8+AmU5/B7Qmrm1T7RHHnLWFBIBK2dhgPB1VpJj2
	trgTEqSQ3/LxrYgFKJm/KVY0AqErQ1MofXplL1JtCZ6xVREMMUMnp0N2iU+PgBAJ
	/XdBXpI6c4VrdW+EH6urhVZ6MbO6+nRvN3kflx3V/9D2kT/t5Vk3lOFYrwa2hHdl
	aowjzs0NtDIvQXQpjzRZytMs0cHXIvWM0hGrWWkDPT5x8M8VpvxeWc1OH6Vx/wIv
	qVeNtfmeO8f9l2hMJ9WbkZAxaFq8AiMIkYHOn9Rywe7PYkBs9oAt4DHDw==
X-ME-Sender: <xms:kra7ZpOyJjHTJ69EUbtC16SrkTxZthGQCjU7qog0oCeJJeYv7VIQuA>
    <xme:kra7Zr82ZBOCm9sb-X-F-D2tl-ybAkAzVs2QHYePBKGczBf_Ud2dDROqvLUyXyVpc
    C7urnnVH3CZuoYpFmU>
X-ME-Received: <xmr:kra7ZoRBT1yWYGJLXk6Ik0wDvjfERXsX6XA-LMKYrl7PhDc-Kgatj3ZeqCUZz-wLXg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtvddgudeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhufffkfggtgfgvfevofesthejredtredtjeen
    ucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehflhihgh
    horghtrdgtohhmqeenucggtffrrghtthgvrhhnpefgveffjeetgeejfeelgfekteelkefh
    uefggedvueeujeekjeetkeekvdffffefudenucffohhmrghinhepkhgvrhhnvghlrdhorh
    hgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhi
    rgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomhdpnhgspghrtghpthhtohephedpmh
    houggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidqfihirhgvlhgvshhssehv
    ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhirgiguhhnrdihrghnghesfh
    hlhihgohgrthdrtghomhdprhgtphhtthhopeifvghnsheskhgvrhhnvghlrdhorhhgpdhr
    tghpthhtohepqhhuihgtpghjjhhohhhnshhonhesqhhuihgtihhntgdrtghomhdprhgtph
    htthhopeifihhrvghlvghsshdqrhgvghgusgeslhhishhtshdrihhnfhhrrgguvggrugdr
    ohhrgh
X-ME-Proxy: <xmx:kra7ZlvpLqUIHZ5f00IUZu1JGmgpwjKHG_Fc8GIhSo-WjImgXHrzRA>
    <xmx:kra7ZhfiyMD7OSIHgHr0t7zrj46MzKqnEAuFRDrE6KZ7xHSZr-ZZuA>
    <xmx:kra7Zh2Kw3CnxIccyEPQ-odUWJWC-aDtDrVoqTiiILgTupGqluG2Yg>
    <xmx:kra7Zt9tsZwmPuq5X3tfhIb3Um0YEZtaKQ-3F5HCa_K-Ja_NB7bfFQ>
    <xmx:kra7ZqELFKnzwIVwaTN1Bhu7au8z4mTlg3z9RvokXExfVm3gC5yMGM2P>
Feedback-ID: ifd894703:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Aug 2024 15:39:59 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 0/2] wireless-regdb: Workflow updates
Date: Tue, 13 Aug 2024 20:39:38 +0100
Message-Id: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHq2u2YC/23MQQ6CMBCF4auQWVszbdGAK+9hWDR0BhqRmpYUC
 endraxd/i8v3w6RgqMIt2qHQMlF5+cS6lRBP5p5IOFsaVCoamykFqsPT578KlppySJjY2sJ5f4
 OxO5zUI+u9Oji4sN2yEn+1j9IkgKF5qtmJNPaC9952gZvlnPvX9DlnL/1Lv8NogAAAA==
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 Jeff Johnson <quic_jjohnson@quicinc.com>, 
 Jiaxun Yang <jiaxun.yang@flygoat.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=750;
 i=jiaxun.yang@flygoat.com; h=from:subject:message-id;
 bh=6FMkLcJgd4R3Of9SC8fwtAlhSNaCakdLaQa3MK25a4w=;
 b=owGbwMvMwCXmXMhTe71c8zDjabUkhrTd2/pXOs95c/jdl1UyeWWn9E7dentQRjlnjt7zMNH3t
 2zWLON901HKwiDGxSArpsgSIqDUt6Hx4oLrD7L+wMxhZQIZwsDFKQAT0bVlZJh6wTnwRcKPytg6
 vprwGxvLDuhuXC2y/xdD9oqHz5btW7OD4b/DiZ/FK70NfmQurigr3B3sseAgx/H0I5pbPaS+hE7
 ews4JAA==
X-Developer-Key: i=jiaxun.yang@flygoat.com; a=openpgp;
 fpr=980379BEFEBFBF477EA04EF9C111949073FC0F67
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_124006_058198_48754D84 
X-CRM114-Status: UNSURE (   5.76  )
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

Hi all,

This series updated some workflow components to streamline
wireless-regdb contributor experiences.

Please review.

Thanks

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
Changes in v2:
- v2: Swap Cc and to, Cc wireless-regdb@lists.infradead.org (Jeff)
- Link to v1: https://lore.kernel.org/r/20240813-workflow-v1-0-3f63f0ea9d5f@flygoat.com

---
Jiaxun Yang (2):
      wireless-regdb: Update .gitignore
      wireless-regdb: Add .b4-config

 .b4-config |  5 +++++
 .gitignore | 11 +++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)
---
base-commit: 003c282a297f8cec06a576fe1434c94353d14610
change-id: 20240813-workflow-91ded0f08d41

Best regards,
-- 
Jiaxun Yang <jiaxun.yang@flygoat.com>


