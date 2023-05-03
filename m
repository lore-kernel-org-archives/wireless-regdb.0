Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=eZbrMU2BvbCexZInSjPS9Jmvhj88qwQiUTGvFWvmNHU=;
 b=STOreafWoGAK/+
 91vdjYpA35Lqd96JJ5a02rcOF7WEKqQr5Fzk8WkjiNkAQ+kL9jdf7r0Udz7hOznuKFZXJhjPsjuN0
 ZuoAF3Ea5bPn0sEN0Ca9F4Zl0NdxSi/YbXXzKzxuflHkvBWGpIV73ZxbnYwVtl6Oy5QE4bZ622APH
 N8zGq22gdPv6ZX/+Tu5CnWiL8a9lJz4mELPZeE7+qnsq4GDeRkpA2rzNospVE+bkEyuFW0uB64VR0
 PxWiVFEClcmQXHsokSFE+3JhyCHAtJhtw1lTbJyMNGCrkW2uEkxXCifdGLy2WqllTxxXdIEAQeQYL
 y2xU5HjKJRSfqnlmA7EQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puIFL-005bRq-2V
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 19:34:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 528EB62F9B for <wireless-regdb@lists.infradead.org>; Wed,  3 May 2023
 19:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683142478;
	bh=EdwV+fT0zKSnHXXjSJtyx5FXeRs4OElY6yiqIYXFwX8=;
	h=Date:From:To:Subject:From;
	b=f58XxzMTkVjDAGo3mNAeFL3KS2pflbOx8BR2hMBUzOJiejY+BzGhlt9qt+M71KtWH
	 uJk2WknSM9dsPl0Jzz6ohs7kT+TnhQeMX3bmUFwU5yyZV52dxR7mEqsbtHbSvTMx0x
	 lwYVPaPma7TPsSYZvr+3Wzl9+ZNfIrhB+p5PjNa3kWlDgPya7NPpUt9hZ8R2sfFZQe
	 PbSM8FA+Vgn5m8i5fE50/J74sb+M6CJNbU6a6hU85n5YQ1q5ELSSA8D04Twy8XYC1m
	 FNVOLAWhnlxm/u7Y7wqelxTawhVfmeaFgfFBUGVSCnGBkuLzjiy2wndcHs3ifEV+WN
	 d4BFO4jNC+Elw==
Date: Wed, 3 May 2023 14:34:37 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFK3TQWDQMoH9obk@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] Stepping down as wireless-regdb maintainer
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

I started maintaining wireless-regdb over 8 years ago at a time when my
job responsibilities included investigating and working to fix reports
of wireless bugs in Linux. Not long after that my responsibilities
started shifting away from wireless work, and for the past several years
I've had no involvement in anything related to wireless beyond fairly
passive maintenance of wireless-regdb. Even in that role it's recently
been difficult to find time to validate proposed changes against the
source documents, which has frequently lead to slow response times.

As a result, I've decided that it is time for me to move on from
maintaining wireless-regdb. I won't step away immediately, but I plan to
stop applying patches and doing new releases around Sep 1 of this year.

If anyone is interested in taking over maintenance of this project,
please reach out and I'll be happy to discuss.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

