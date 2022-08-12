Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=k/Sc8Z9tLZQHjK3S//HWY9nRKW4kjC+TCZNqHv5ySyo=;
 b=coZ0N1nTJf1HRp
 ImXlR8ECiQq7uC/7puylS4lrPYhwYD5G1Vd37QdIxBeDXVpK6oz1uhTmG7M+bKCoBWN4sSBKgFnua
 dc2aNiCzsnv3jMMYmCWoPHEoJh36scpwG3LkklhCpGbf6erk65i8ji+ZAOmWD/Ea5ywpnXSTKY8gj
 KQzcisSEdqfiskdVAnBD7tr1RuPq1Fl588D5Sw8f6RiVIBB+dDhxKj3AvkPMeoDnkRZBohMZ9V2H8
 l1Z0UEdRrc4KwpbR4jqen/1apjaOljdNrSL7s4+LRICbELpSfZ8+V4/2kbLI2Rv+pTUiLrWKori59
 tj/verpDd/oFLpWtKVJg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMWyJ-00AOLo-W5
	for wireless-regdb@lists.infradead.org; Fri, 12 Aug 2022 15:53:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 00CD661384 for <wireless-regdb@lists.infradead.org>; Fri, 12 Aug 2022
 15:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660319592;
	bh=T9WIs/bagbUtVe/9Si/wz7WQ4b6VmlL+WWKGdD4cZ4k=;
	h=Date:From:To:Cc:Subject:From;
	b=cJl0X18+0StIsvDvt2d3jxPR9DY2qaMMdJrlW4H5DcougncoqvV3ZyY5Nj9vILqpW
	 YPCF7Fv0a4Gw2mnpn+vaOHkZbo3HNtUgRQQRv5W2BgkfOsf+M1SC+A8Kb3qgTHBhs7
	 Ftug6cRKVhjNmA31Y1WSyTKiw/kKh6eySXf2nQOZRhku0PXeW8LrM+Mkpb0LDSJows
	 SAz1ipSzCcxe/RDnXsNFg19YPb2Jz8gEmyMUh8CLugyzFa7AD54n5GDYgsxuSjvv+3
	 ivyYeyOXWpmplVUQ72+8YNLTTGngFOHwsZYLj7NnjNNohEPc+CMPqyx/POptO85ehv
	 UfruTy85RFAGg==
Date: Fri, 12 Aug 2022 10:53:11 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YvZ3ZyPXvYdc8AYm@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2022-08-12
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

A new release of wireless-regdb (master-2022-08-12) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.08.12.tar.xz

The short log of changes since the master-2022-06-06 release is below.

Thanks,
Seth

---

Seth Forshee (3):
      wireless-regdb: add 5 GHz rules for GY
      wireless-regdb: update 5 GHz rules for PK and add 60 GHz rule
      wireless-regdb: update regulatory database based on preceding changes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

