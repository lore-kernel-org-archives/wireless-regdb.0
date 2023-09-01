Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=K1ol3FkVejQE+/Inqh/rQDhLRvP72GJWJadSllTpp/0=;
 b=UB185E2Dvnxt7k
 j6+nd5OB/XV8vOVwFufMdyn3Krl9T1Dk8NkyCIRvSEGspg3vD5voyKfwC2Ifk2dEcgkd6q1ILivIh
 rnhqXAAoWVz56QqTc/UqEx5IkujQTADuX+zyZH1la/Mbxpl4jBHJ3zDo76H2cERA4tcxISNK80UZL
 oimG+/NeFeeuFFbltl7dKWCbRuiNi42LuE1uc2bNU80uoNHZgL0+eQcXHysZi2EX+8jg140HaUCi3
 KsarxPPmS9NcUEkeE/TMVrp1SMg9r47MRkrmqiVbX1Sv1kATE8EYJAemuSNGOtUxKLs+svE/H5vdv
 e8wCKNVJ1VnLN91F7hkw==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qcAW3-000Lyu-3B
	for wireless-regdb@lists.infradead.org;
	Fri, 01 Sep 2023 20:13:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits) key-exchange
 X25519 server-signature RSA-PSS (2048 bits)) (No client certificate
 requested) by ams.source.kernel.org (Postfix) with ESMTPS id 2F45EB825CC
 for <wireless-regdb@lists.infradead.org>; Fri,  1 Sep 2023 20:13:14 +0000
 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693599193;
	bh=w874aat6VlaOJyl5m9a9UVknPCXTGdGjPwhfrMlolNM=;
	h=Date:From:To:Cc:Subject:List-Id:From;
	b=QdIRgQGayJqHURSKZBS+GQUDHFYjZM7eoQvFymWgnSQarkjgfC1ccgAXOOe3lehBT
	 ejikugQlcpgCF9GB212jn7psICVlXkBrG0oEFHSVo+28wkZg9rnr0MEiXn8iBNqxw4
	 4rcy13WxdMGvuz3+8pcAS5+Q5g8I8xHeXlUVz8SObUgvZ4BlXm/WABAvFsIKAumWK3
	 uVGAlBGJoA9ly+BbwMwaXaIbKfeQUcqailaGjnbkCxDhtI5MhVsgDU0qDtigZoffdh
	 7PQPs6PN94RcE3jmOUBGZhq3BTNhlhb+4OA9wH5kFOpdFr3h7XjSrKidF26dkI22jm
	 tfPkllZoADccQ==
Date: Fri, 1 Sep 2023 15:13:11 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2023-09-01
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2023-09-01) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2023.09.01.tar.xz

The short log of changes since the master-2022-05-03 release is below.

As previously announced, I am stepping down as the maintainer of
wireless-regdb effective today. This is the last release I plan to do,
and currently there is no new maintainer for the project.

Thanks,
Seth

---

Adam Nielsen (1):
      wireless-regdb: Update regulatory rules for Australia (AU) for June 2023

Seth Forshee (3):
      wireless-regdb: Update regulatory rules for Egypt (EG) from March 2022 guidelines
      wireless-regdb: Update regulatory info for Türkiye (TR)
      wireless-regdb: update regulatory database based on preceding changes

kleo (1):
      wireless-regdb: Update regulatory rules for Philippines (PH)


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
