Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=WsUDpXBxDuj+xNdM88CiF1kXsNLYxL6xH7bBJj3YmJE=;
 b=a2ePCiV8wvVF0P
 fJwBzQIQD8/Rnk5HtfN9RjyhfGqunjDejtG4gYDTFPfDUBgGAv7YNKa6ob2UTB8GtNFP38WTlPi5k
 rdkrec5MKvYtqOQoH83cwMCtvjobhltnW3FSDV2EGRdZx7w0T7RtMCHREwpAGdL/fMkH929+z4AMa
 I2EkId/cI9tQ8OoDhpQyQ92Eov+PF5P6yGZsx0XZAmI/R8ByVsejOTByQq1pEz40or6+33G7mpRCV
 mpbA+pUcsz8+km4BcBEey5AGLLxHMr1u5iZwCS5V9JLrhWHo6gH4juRk2+pbioJuQjU3Q2QDe5WwY
 5gVhDfNjwv/WMUYpoNqA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncpv2-0004bK-KB
 for wireless-regdb@lists.infradead.org; Fri, 08 Apr 2022 14:49:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 859B061E12 for <wireless-regdb@lists.infradead.org>; Fri,  8 Apr 2022
 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649429338;
 bh=UCw9lJ89gM1G47+6jUvUy042yvVjuZPlcFqVj9h7QeA=;
 h=Date:From:To:Cc:Subject:From;
 b=jXfP84rW3WbgHLhiwuZG4Z6xn89VZ1TYhECvBcX9bEE8C54mkY40zBftXPo5n16zc
 2zJVQVamh4NYhaQ5+Sp3aPI0Y9U8FzYoRSkxa2dB4Yrydagf/oWNOeBc2zzrEYghyz
 EGpkt/oj0DDt7QHy+sK+8K8UvA5og2HBL2KzcaePEp7RiszrTddBMn50FhNvIwYkdq
 mIn6nYGk9N25sL4Z9ep0Z5IElQ9JplJ7fkvb4B4UJ3Q6sP7+qHYiM+b6GitGtk0vkn
 2hZj7HANB2H9V+13613ONjgbzB/43wsakDRRAYvavYB0IVG5fS6//mZZE3t8MA/SDg
 LtV6MHu+x8kGw==
Date: Fri, 8 Apr 2022 09:48:58 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YlBLWuf0eKyS1HL0@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2022-04-08
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

A new release of wireless-regdb (master-2022-04-08) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.04.08.tar.xz

The short log of changes since the master-2022-02-18 release is below.

Thanks,
Seth

---

Richard Huynh (1):
      wireless-regdb: Update regulatory rules for Australia (AU)

Roman Kunzman (1):
      wireless-regdb: Update regulatory rules for Israel (IL)

Seth Forshee (2):
      wireless-regdb: add missing spaces for US S1G rules
      wireless-regdb: update regulatory database based on preceding changes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

