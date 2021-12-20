Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=MDMNya4RJmYy3O3tuJNENDgxKURH28O11vuobNuebMg=;
 b=H+8IXFT5HZDrcw
 b9GO+afRVNQf3h2/XnjEfNw20BywieEVVgoP5VWWJ9gGmk0y1sohpCZwdJLyOM9hqq5Q5Ai069d46
 S2/rPvu/apDmm1Rn+LnfUzTUKchcXRb5KCEcU+sxNzeWJlZEcVRcwYlQQ7roNk3HORoYjeZCOtc50
 Tm8x0hv3SvwDNVvLcYIrOUen4kCnqOyuhNlARDuI5AsNrYKxbd6IawDUkaAJXR2pc8NW6xIBSEUAI
 uh3Sqb0PIHNxTfHQm2r7CXP2uMUPV6TFHY10ieVfbtJDWZlqL/eKgFU/pVFJRdL5Swax2EIwfdBWB
 qh5onWgIv8sWaWRQmZeA==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzPvD-004Nik-8F
 for wireless-regdb@lists.infradead.org; Mon, 20 Dec 2021 21:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640034613;
 bh=5x+FQ1aO8YPF7t2PWyJ2Jw5PJnSHa/jn0DG8tuZPOqQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E7jkvDi0DVPS0gVaSvLxtLWsZ24mcA6eVXphLtTMqjIyDmywBOJegKj9Wq/h8B227
 RCrg8Q91lKX3Oqx+erEJrADONs6GUufn7LXD0BTqpESrUuuKz5XDL41fREbluKsmV6
 JBLmG9R6YYx08NfDp4ytVfMJCNgDw50PhCPqQcNrKS+d2m9NbPEDuT9djEiMhUMBhO
 Ro1udz4hiNV1tJUZTAwF2DCNj6gXdB8n5q3kVTauBAxwhNf9mjVJLrDDrjZIyU0fY9
 bGc4IU0qWzrY82IL8vDBFjn9iw210asf3PFRYOvvvfsviQiedZOcprbqrw3+TgMF4y
 7d5e49X76LBdQ==
Date: Mon, 20 Dec 2021 15:10:12 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YcDxNCSoQh2XejK8@ubuntu-x1>
References: <20210929172728.7512-1-mans0n@gorani.run>
 <20211024113821.51538-1-mans0n@gorani.run>
 <YXmVLUzVEgrAMLwL@ubuntu-x1>
 <4f05b6b1-084d-9046-4c63-6975c25d7615@gorani.run>
 <Yb0JAXsCnjnIQ9c9@ubuntu-x1>
 <b2288492-cdbd-0310-0951-cdee77fc3a79@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2288492-cdbd-0310-0951-cdee77fc3a79@gorani.run>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Sungbo Eo <mans0n@gorani.run>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Dec 18, 2021 at 04:31:17PM +0900, Sungbo Eo wrote:
> On 2021-12-18 07:02, Seth Forshee wrote:
> > On Sat, Oct 30, 2021 at 01:12:08AM +0900, Sungbo Eo wrote:
> > > On 2021-10-28 03:06, Seth Forshee wrote:
> > > > On Sun, Oct 24, 2021 at 08:38:21PM +0900, Sungbo Eo wrote:
> > > > > This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
> > > > > Equipment Established Without Notice"), officially announced on 2021-01-06.
> > > > > 
> > > > > The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
> > > > > part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
> > > > > This leads to the following:
> > > > > * 5230-5250 @ 20 -> 17 dBm
> > > > > * 5210-5250 @ 40 -> 20 dBm
> > > > > Here the power limits for 80/160 MHz bandwidth are also lowered to 17 dBm,
> > > > > as it's not possible to set different power limits for different bandwidths
> > > > > at the moment.
> > > > > 
> > > > > Extend the last 5 GHz frequency range to 5850 MHz.
> > > > > 
> > > > > WiFi 6E is now allowed with the following restrictions:
> > > > > * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
> > > > > * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
> > > > > Here only the former entry is added.
> > > > > 
> > > > > And also update the regulatory source links.
> > > > > 
> > > > > Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> > > > > ---
> > > > > v2:
> > > > > * split 5150-5250 MHz band rule to accommodate the PSD limit
> > > > > * remove AUTO-BW flag from 6 GHz band rule
> > > > > ---
> > > > >    db.txt | 17 ++++++++++++-----
> > > > >    1 file changed, 12 insertions(+), 5 deletions(-)
> > > > > 
> > > > > diff --git a/db.txt b/db.txt
> > > > > index 6e8dbef..387ac93 100644
> > > > > --- a/db.txt
> > > > > +++ b/db.txt
> > > > > @@ -862,15 +862,22 @@ country KP: DFS-JP
> > > > >    	(5490 - 5630 @ 20), (30), DFS
> > > > >    	(5735 - 5815 @ 20), (30)
> > > > > +# Source:
> > > > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196972
> > > > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196973
> > > > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196974
> > > > >    country KR: DFS-JP
> > > > > -	# ref: https://www.rra.go.kr
> > > > >    	(2400 - 2483.5 @ 40), (23)
> > > > > -	(5150 - 5250 @ 80), (23), AUTO-BW
> > > > > +	(5150 - 5210 @ 40), (23), AUTO-BW
> > > > > +	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
> > > > > +	(5210 - 5230 @ 20), (20), AUTO-BW
> > > > > +	(5230 - 5250 @ 20), (17), AUTO-BW
> > > > 
> > > > Even with 5210-5230 split out like this, 5210-5250 @ 40 still gets
> > > > limited to 17 dBm by the 5230-5250 rule. So why do we need to split out
> > > > 5210-5230 separate from 5150-5210?
> > > 
> > > I did some tests with regdb and I found out that the rule to be applied
> > > depends on the main 20 MHz channel. With the rules above, if I select
> > > channel 48 (5230-5250) and enable VHT40, then the TX power is set to 17 dBm.
> > > OTOH if I select channel 44 (5210–5230) and enable VHT40, then the TX power
> > > is set to 20 dBm. I'm not sure whether my result is really correct, though.
> > 
> > I'm sorry, when I saw the v3 patch I realized that I forgot to reply to
> > this email. I had wanted to take a look at the kernel source to try and
> > understand the behavior you described.
> > 
> > I took a quick look, and from what I'm seeing the minimum of the power
> > limits for the two ranges should be used. This is the behavior I expect.
> > Can you provide more detail about how you're getting that result?
> > 
> > Thanks,
> > Seth
> 
> I've got the result on MT7623+MT7615N AP with OpenWrt installed. (kernel
> 5.10)
> I set the channel and bandwidth in /etc/config/wireless (in OpenWrt-standard
> way) and checked the tx power with `iw dev wlan0 info` and Android WiFi
> Analyzer app.
> 
> # channel 48, htmode VHT40
> type AP
> channel 48 (5240 MHz), width: 40 MHz, center1: 5230 MHz
> txpower 17.00 dBm
> 
> # channel 44, htmode VHT40
> type AP
> channel 44 (5220 MHz), width: 40 MHz, center1: 5230 MHz
> txpower 20.00 dBm
> 
> The WiFi Analyzer app also reported higher RSSI for the channel 44 case.
> 
> I also had a quick look at net/wireless/reg.c and it seems you're right.
> Perhaps my tests were bad, I do believe your comments more than my result.
> ;)

That definitely seems odd. I'll try to have another look and see if I
can figure out why that's happening. I'd have suspected that what's
displayed by iw might just be a result of how the information is
reported or displayed, but the higher RSSI argues against that.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
