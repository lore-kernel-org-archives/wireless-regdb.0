Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=vzdVlRvrENTJ3M7n+WmVPofSvvGRDxHcOHujA5DRsrI=;
 b=bmgg2eFMeXaS3x
 vSZbILnxvulgMpeYvOfWbNDBfkL06SbE7S+NK72SciTOld4YDXifdIqHasJNlwd4IYBLb9lDi2XrG
 GcW/Yj6/RYNwxeYNcbMu00jVOAL4YJNid0cy0EWOj8spnKYc2fjUfK0CFRSVAqymyim2uHQtLMw59
 LNtDMmIwT5C4pfQQGk6bW4UcknUSswPH8K1aRmEEFX33ScEB2LAP+LMYmn4aZUmi2DMA3DevADVQf
 L2YqE7EwuIMUtJ3gHwMGFqMcWynCHLiT+GB4e7sTP3W1I1H6jWHJYao5wQhkv/cOvY3WmonsS2tCa
 hFAvJwMWq4q27ABEByNg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mK1Yf-00EWBV-00
 for wireless-regdb@lists.infradead.org; Sat, 28 Aug 2021 16:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630169512;
 bh=w8yxTDhsyatj2HXWsKunsFutrJSQY73FBUubuWhLb7Q=;
 h=Date:From:To:Cc:Subject:From;
 b=CBKG4DhrGMnb6NdF4T64ymUCl3zzDEa/VPvypctTS8izfv3djiNQsQAPnnpPj5G1g
 rtUwxO3IqiUkXO5GgDnRwk3dkWGYCc6YC+yWuOxB3sOeBFCtiHiSwSug6+4tozci0N
 j/zo67XZHltZoL96q4nWVTSqVPQsMvpIPJcYjoCmK2/QjWl3VGE3u5iXXVK/Rqihuo
 ELFQfC+JV1PIUmqXdC+Y7QPpne6RkW1vvqgFwTrbGMelEPf/9c4dANC/sXLAYS9QhS
 4Z6PFPvxdkC09dWz8g1r3EdhDD4BCWHRYbhUqUbfXYz1+ePQlO+VWza/P2pxFl5MJn
 p4KsjlbnRMw+Q==
Date: Sat, 28 Aug 2021 11:51:51 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YSppp88rcmotF5Bs@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2021-08-28
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

A new release of wireless-regdb (master-2021-08-28) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2021.08.28.tar.xz

The short log of changes since the master-2021-07-14 release is below.

Thanks,
Seth

---

Bjørn Mork (1):
      wireless-regdb: Update regulatory rules for Norway (NO) on 6 and 60 GHz

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes

Timo Witte (1):
      wireless-regdb: Update regulatory rules for Germany (DE) on 6GHz

Victor Bayas (1):
      Update regulatory rules for Ecuador (EC)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
