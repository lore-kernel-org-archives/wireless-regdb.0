Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C5DAFCD0A1
	for <wireless-regdb@archiver.kernel.org>; Wed, 18 Mar 2026 03:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i4zfw9mgpguoMJmFC16BG/Q2Ng8wnz1ykqXIZYO7CcQ=; b=3l7fywmzkJJfLghoFMdO8NpnzK
	eWLkKyueOlkRb3iJHN4tbV7B+RCEoUT/FS8pJpT0lgqCllXdRnczSKQxbPaKq5+QPtDTWHDWDWHoP
	aEfgzMrKS3jKQO5PN5VIhF9SRuPPALCyfdJSMSEVW7aPuNpItIKtHLJ/Z7uTsPQSiAlPATLIiXYi4
	fyz2/h8t8hO/HrIfLx3WdOLjhSMTRSUxKnzJ+59hD39ViGxdobIWRIdicrnnqN0AyOEtkcXnzo7Cd
	w/oQntWmX5BieKVdkl5AybL3aCC+TfIWKEkdX5ARfRN5xqwE6tawW4YL+v5++oGJujvImsca6grea
	Os7L3LgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2i40-00000007joy-1OM9;
	Wed, 18 Mar 2026 03:59:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2i3z-00000007joq-3L8R
	for wireless-regdb@lists.infradead.org;
	Wed, 18 Mar 2026 03:59:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DBD93600AC
	for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 03:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD1DC19421;
	Wed, 18 Mar 2026 03:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773806358;
	bh=dSDrO0qq03ZQallHvVYCa/qVY9RPvxeAq076TjBwxJc=;
	h=Date:From:To:Subject:From;
	b=m5wnwF23AJO1GAT4hfAvXelpflT4bna0pyF9urcrWwyaCdE7DIFyHxNpmGIt64PHx
	 EsCvIGI7Hrk2FcZrLC9YN0H2yK6c4vHy60JSnYeDM3kUk1WdTUMFTdsxr8oAJZOrFb
	 6begW75AU0pZuKxMUzrP2b+yF2kJtMdl9HVkxjXikAkJwtY7ncXzYw2jvbpV+pQ2dM
	 OwAe8tofwjMUPZgk63UddOV/2H1zSGKLCHkZzMUk6HnVmVAvNjLvzsgfP+QclxU8kv
	 Yza7W+EkHN1Cbb94blPMdxn7q6SPfsQ4joJJu6RJIswIfjBP4144Cdwf+QnE6imrbk
	 NMtYULftfqhWQ==
Received: by wens.tw (Postfix, from userid 1000)
	id BD5195FCAC; Wed, 18 Mar 2026 11:59:15 +0800 (CST)
Date: Wed, 18 Mar 2026 11:59:15 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2026-03-18
Message-ID: <abojEyQYNTJM-v5u@wens.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

A new release of wireless-regdb (master-2026-03-18) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2026.03.18.tar.xz

The short log of changes since the master-2026-02-04 release is below.

--

Ben Hutchings (2):
      wireless-regdb: Fix regulatory.bin signing with new M2Crypto
      wireless-regdb: Replace M2Crypto with cryptography package

Chen-Yu Tsai (2):
      wireless-regdb: Update regulatory rules for India (IN) on 6GHz
      wireless-regdb: update regulatory database based on preceding changes

