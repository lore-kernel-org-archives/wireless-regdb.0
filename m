Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=AR7zU9PXZ5zqq+EjYec+T12PPvjEFNCpcdLvPxpKppg=;
 b=gljkJQhqm3LXtg
 Hbh1oO1IuTQ0Y3bSdm3VCBoGIj7+P+h/0IahF3AmXRLpm26g5rAzuKLpfaV0CwyEI8Yda0XeW35gj
 ps8pckH58070LcBdNPwNiTDw7dT/QgzUILZGgvStuqzOw/Iw6r0OxHYre4bE2ZaAtYf2uLxgkPows
 iri5NpAJwVMIqTDJX0hFPXpNR+3TP/z/G4we8YjLRPPPI2IsEF/UTkCzSEPeBhyGxThWoUjh9L0pF
 SJ2yuRLjbFULoli4AmwAyECdbx+ilj/E27PH30PfRAixmarPcqySnnPHfqXJiz+hp44F8JM44D4R+
 z6nRTGvPBO9gxNaI9d+A==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puHgL-005WAa-0e
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 18:58:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 A4D3262CF9 for <wireless-regdb@lists.infradead.org>; Wed,  3 May 2023
 18:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683140308;
	bh=R4CXytM9cVjSES51qcpD+483W4CGe7M2BDfNBzpEwak=;
	h=Date:From:To:Cc:Subject:List-Id:From;
	b=IhkXKcIyfUTH1LDOoYryy6dazofT5tB4/5FY2F+dThYKzRK/s3Uy2uRnRdiVSytxP
	 We2YOgo0T8GIZ1Sv3oXRlOjnEhwOHJuGs/XoGOocelmqRy8V8oGrPDTqpjiGsIWFAS
	 XMGE76hgkr0LTEYbKgcWxrMIws4pyaFYkG0k5TUr4l+NGcqh/TujLj8rGh01ig8HFe
	 gITN6mhqaIiKTWuB0y83iwWg/GOpwYvjwQQ3+1QNai2yvaAozY4kT8o6Bd36K22h8x
	 ATZGzNCgWmnqEp0G9qD9pVV2NAdeEWzOYX8CGV65r7w5Vnm45DmKT6VPeyO4p1Dwe4
	 SHthdYMwdzWng==
Date: Wed, 3 May 2023 13:58:26 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFKu0udQp/M8CoRp@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2023-05-03
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2023-05-03) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2023.05.03.tar.xz

The short log of changes since the master-2023-02-13 release is below.

Thanks,
Seth

---

Dmitry Tunin (1):
      wireless-regdb: Update regulatory rules for Russia (RU). Remove DFS requirement.

Kirill (1):
      Update regulatory info for Russia (RU) on 6GHz

Seth Forshee (2):
      wireless-regdb: update regulatory rules for India (IN)
      wireless-regdb: update regulatory database based on preceding changes

Tavio Wong (1):
      wireless-regdb: Update regulatory rules for Hong Kong (HK)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

