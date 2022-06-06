Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=9BPNL1V3cnhydEsct1Sv2rvtHCJec9QFm5jdpCo2Nck=;
 b=SI5+Ah/fEbpFW8
 thztTeMQR93HsktmatpyIVKaDPBxUZZrEnoflgMvU/VfszsrpTljyttxU0QAPZI3BE2sqWEOfFpgn
 hxONGprxO5YkY+lG0oc1rf3sHWwN1dI815o+1z4yQXYoPwaLIm/o6RJ/T1ta7i0ljQXHXQ/Aa4MxF
 YJvF3sVoUlTGTN9MIxxhcpzNlUwerFGJQ7M+l96vIPVC071dlNHYBQu5kw51SjirYEB2rW9VYmVUu
 eCdfEQMTBG617/ifCr6MF2xha2eNQSAwlqBMYCxAjnubnDKm2vG+YfG2g2X1wmmV1HpvV+zjyIpQV
 4CaZ0Rftb3JoBcLynSPQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEDE-001dub-J3
	for wireless-regdb@lists.infradead.org; Mon, 06 Jun 2022 15:00:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by ams.source.kernel.org (Postfix) with ESMTPS id
 8558DB819F9 for <wireless-regdb@lists.infradead.org>; Mon,  6 Jun 2022
 15:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654527609;
	bh=XTQKOOWd0hG8eIEvTECrPdRIqbMHxT5jlZDE4jyUDaM=;
	h=Date:From:To:Cc:Subject:From;
	b=GLS7SYRUVTxCkwb9Twjj+iK+DqtopInVX65M2SIs4gQMT9yfgNFlWkCf7whiUsfaV
	 wfB/oXIeEfmMbhcMxNK1Y7txte7g7B6WUX0wgBJ4+4qa8mMaiC1LPTTEtfyXV4DOTs
	 6Xek108I1FXvG+D1XbhB41r1Qt8BtUECBMGlN/WziRc2IUHm1x5MghNWaP6YtPFzSa
	 +tfnhOKxlOiVZ7s65ZGyevSy7j6Yi7qXi5SBHHauucX03PB+F5qvr8e89zAE6jGTBe
	 kZgRZHHSue6hWWXBVPtV9I588DK/DD6zggB/8Yfr2Z97pM8bjmzQnnPr9FB7k/h5lb
	 1Bxcw3DAHdzig==
Date: Mon, 6 Jun 2022 10:00:07 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yp4Wd4NDdCaGb9d/@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2022-06-06
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

A new release of wireless-regdb (master-2022-06-06) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.06.06.tar.xz

The short log of changes since the master-2022-04-08 release is below.

Thanks,
Seth

---

Dennis Bland (3):
      Regulatory update for 6 GHz operation in Canada (CA)
      Regulatory update for 6 GHz operation in United States (US)
      Regulatory update for 6 GHz operation in FI

Seth Forshee (3):
      wireless-regdb: Remove AUTO-BW from 6 GHz rules
      wireless-regdb: Unify 6 GHz rules for EU contries
      wireless-regdb: update regulatory database based on preceding changes

Stijn Tintel (1):
      wireless-regdb: update regulatory rules for Bulgaria (BG) on 6GHz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

