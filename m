Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=s60MAp/E8t2lnjtP7hTUsJLcTmAAbFm9iuCF+Cyh5N4=;
 b=YGWrp+oAsE1ANW
 ZwXAF1S6sELLYJ0YUj/Q6gjFt0HqDoAwg2Jc6k69y7Jje+7rhaox0cnEZrnFIczdMxkVUn8iUol0A
 bk9Jnx8j7U7LNW9Z68Ssp06KrA98jIbIsDwGng1M581BZDH85YgnzN993ISTDiOEpKrFLviZG8FJT
 1dq6SSCvWuVcqBdbq5PAmAo4fGeSACWd8tXWizwdcMuY6y8Mccw/eI28a5TA28DCLef55MT2+ox3R
 Hd19KfQcfjkBseMNpCBMCK0EI/02R3z9k5cltWPIaTu4uwf2YSKCECwfiA00PWCokByf0HYaNg8Bj
 98n9nHkR9GIUk2ZTqlUg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaMR-00F6Vb-FG
	for wireless-regdb@lists.infradead.org; Mon, 13 Feb 2023 15:03:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by dfw.source.kernel.org (Postfix) with ESMTPS id
 F369761122 for <wireless-regdb@lists.infradead.org>; Mon, 13 Feb 2023
 15:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676300598;
	bh=+wHNNUbH6IacyvhR0YG0p1wvBG2pNhi5O0ky4wI6F/k=;
	h=Date:From:To:Cc:Subject:From;
	b=SBXo2NMq5NFdJU9rPiiAQ4ysm0+M437fuIcd9MdSA1kTc/9ipuhHK/ztE0VO1uEwu
	 y6djrgeF/w6jOpbpAoTILxku7wq6iCqOmzPaTL94u10uopXtH6ldghiIDAgt7qkwrC
	 K/gKEit9LePign373i05JqFnoqpGqJnToTeoWQr7DIwjgTAltp/wrKlPlbEyKXVy/b
	 /EP1XtT+4h+f6OCGVEaSOTM8aF1zRiCXQpEy1zrziDMIv5aEvpP6UIOuKPlHyoa1zV
	 34VgDy2X5gqaSqnH40xj4duHT3JrVqD2synObzbP0Cn+JPuOSiMEAotqymtdnIAns1
	 +tWjTQ0Jzp8Pg==
Date: Mon, 13 Feb 2023 09:03:17 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y+pRNR9Zl+vqiJQo@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2023-02-13
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

A new release of wireless-regdb (master-2023-02-13) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2023.02.13.tar.xz

The short log of changes since the master-2022-08-12 release is below.

Thanks,
Seth

---

CaffeeLake (2):
      wireless-regdb: Update regulatory rules for Japan (JP) on 5GHz
      wireless-regdb: Update regulatory rules for Japan (JP) on 6GHz

Cesar Eduardo Barros (1):
      wireless-regdb: Update regulatory rules for Brazil (BR)

Eugene Konev (1):
      wireless-regdb: Update regulatory info for Russia (RU) on 5GHz

Lorenz Brun (1):
      wireless-regdb: update regulatory rules for Switzerland (CH)

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

