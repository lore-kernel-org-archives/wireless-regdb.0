Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=cJG83I60iqRDRRSGsR5TNRHY/j+UFlkD6jRZ1a3eK9A=;
 b=HnUVP2gNyEshiR
 EUiPts6JiyKteDIX1uni1u/NXk9ybb4OR1NHLo2nc3HA5pj1KiX/Q4hg2+J+TvVFNUmkCJHajY7BX
 b/rO3awww5F1IdaBs9W9dBCMNTf5y8DRlBE2NerTvUrwJPceqzBLEppzVNvc40js2PZU0vZR0Eezk
 63oVTzgNh1k35d25dOLAKkX32h2iw26b0QutycywoqC2frUWi2oddb+cPTpwFMf5tdLeokwVhwq1L
 IXC/TqEEO+a7Z+0BO7cGtvqj4uNQMQ8u9TgKcaodzjQJI6yF1EfLnF1dRVW+atkZCIHeJ97uHexe5
 ImrJ1+DIFEkmJRekeZ9A==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJNIP-00CcJg-RD
 for wireless-regdb@lists.infradead.org; Sun, 13 Feb 2022 22:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644791076;
 bh=rD6gVRjTus8UCiZIuVKbJoQ0i+qpSAAMv7dNa3mNSxg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NK0ggFltQo9R710DUZ4PMXjRto5pxSBB3H+Q3IZR3zgSXbnqhaw5oBHsPSQ8Lch8c
 XBrXC4GZds/vdYPAB3qEFGSl0r0WTu1VtolafQFwbC6m1bNKdEAQv6jkp2f01w54hy
 za4+trtM9P6v98kOJbLpQTGMAeIqyo14CZ0TdgHEd1BPippUSF2Um803HIjJoFNLnT
 ogKf4RcnPUwesGacAFzLGixPoRIwis5+xteTiSxU+a3HVUZ+ANNv5nu26TqwcngaGC
 TvC0TSEDGU+omtBZSwjde3RkfUW36XFu3zNmSYwn22pbJc/B+zPTNsaejxcPuJreDP
 RN20mOLf4mIag==
Date: Sun, 13 Feb 2022 16:24:35 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgmFI3MrtZl3jSa9@ubuntu-x1>
References: <20211212152050.25962-1-mans0n@gorani.run>
 <20220130124907.39224-1-mans0n@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220130124907.39224-1-mans0n@gorani.run>
Subject: Re: [wireless-regdb] [PATCH v4] wireless-regdb: Update regulatory
 rules for South Korea (KR)
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
To: Sungbo Eo <mans0n@gorani.run>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jan 30, 2022 at 09:49:07PM +0900, Sungbo Eo wrote:
> This patch is based on MSIT Public Notification 2021-86 ("Unlicensed Radio
> Equipment Established Without Notice"), officially announced on 2021-11-29.
> 
> The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
> part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
> This leads to the following:
> * 5230-5250 @ 20 -> 17 dBm
> * 5210-5250 @ 40 -> 20 dBm
> Here the power limit for >20 MHz bandwidth is also lowered to 17 dBm, as
> it's not possible to set different power limits for different bandwidths
> at the moment.
> 
> Extend the last 5 GHz frequency range to 5850 MHz.
> 
> Wi-Fi 6E is now allowed with the following restrictions:
> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 2 dBm/MHz PSD
> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25 mW EIRP
> Here only the former entry is added.
> 
> And also update the regulatory source links.
> 
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

