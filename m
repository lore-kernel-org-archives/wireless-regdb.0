Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=qT8KAnGazV7tvaZYZ10yJHXmeBmX0zvEU9LCOFEv9yg=;
 b=CVs45JxnaShklV
 DhDqmAraXZHTRzu1Hwa87elvFKHph4cUtDtOomKXovnPboSUZqPmpq9fnGX6Cet9Iyh2CgPYozqGD
 czgnna0C6x9NXdl1zEouaGmoYjLX0FIMXeSjB5il2Pu/3ldkLF6HLK6QjXa3xkpi42vdxp/Z+HUEY
 44/UMd4fD452QxUgFoG4pzwC7QxO8y8RC17VBUd8mk8CW3ItazysJ3cMC/SfDUe9wNjzLe+hDeULG
 idSWnOFHnzgJgjY6qOQw2R3jURVEPKaE27tQiK7G3QSsqe5rIQHNI9smYQkiLz/odvtpxYLzjeqCK
 QDHn+la7WYnybsH8Fw0g==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myLJN-00CVAO-9J
 for wireless-regdb@lists.infradead.org; Fri, 17 Dec 2021 22:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639778562;
 bh=P0TnB0kDykwRRWMRFMst20dm5CBDqBM0RDMlHX4bydY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EoiY//Q9pk19B4dJEjQWFK4RTRr9SnDpAoqXCayk0RqISznsKtjsJ8lM0jhDZ60cL
 7AsddbnM1GzXoJiMwHxSFHzFSszjF9fmFXjknqtWyY8rOGwVKlworuTkc6RtF2T4jg
 JnQpqEjI8PRm/mLTAHPT+thZ2nKSO6pKYXfMZDhOYhfwawp0rwIQxfI9k3A1Qz+wgT
 XCS/cUG4EtnSp/0hHSurgS8G5uoCq2kQJKG7UOUe3DywNmAU4o01oFQr+bZg4HMqIl
 FhhQ03lZCrEBuAVNmTJ5J2mdWlLZhmj4vkBXWBrmQMyRbJPb3ay2HbTCC16c65Z4jK
 /swjR1MQvjgiQ==
Date: Fri, 17 Dec 2021 16:02:41 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yb0JAXsCnjnIQ9c9@ubuntu-x1>
References: <20210929172728.7512-1-mans0n@gorani.run>
 <20211024113821.51538-1-mans0n@gorani.run>
 <YXmVLUzVEgrAMLwL@ubuntu-x1>
 <4f05b6b1-084d-9046-4c63-6975c25d7615@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f05b6b1-084d-9046-4c63-6975c25d7615@gorani.run>
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

On Sat, Oct 30, 2021 at 01:12:08AM +0900, Sungbo Eo wrote:
> On 2021-10-28 03:06, Seth Forshee wrote:
> > On Sun, Oct 24, 2021 at 08:38:21PM +0900, Sungbo Eo wrote:
> > > This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
> > > Equipment Established Without Notice"), officially announced on 2021-01-06.
> > > 
> > > The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
> > > part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
> > > This leads to the following:
> > > * 5230-5250 @ 20 -> 17 dBm
> > > * 5210-5250 @ 40 -> 20 dBm
> > > Here the power limits for 80/160 MHz bandwidth are also lowered to 17 dBm,
> > > as it's not possible to set different power limits for different bandwidths
> > > at the moment.
> > > 
> > > Extend the last 5 GHz frequency range to 5850 MHz.
> > > 
> > > WiFi 6E is now allowed with the following restrictions:
> > > * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
> > > * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
> > > Here only the former entry is added.
> > > 
> > > And also update the regulatory source links.
> > > 
> > > Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> > > ---
> > > v2:
> > > * split 5150-5250 MHz band rule to accommodate the PSD limit
> > > * remove AUTO-BW flag from 6 GHz band rule
> > > ---
> > >   db.txt | 17 ++++++++++++-----
> > >   1 file changed, 12 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/db.txt b/db.txt
> > > index 6e8dbef..387ac93 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -862,15 +862,22 @@ country KP: DFS-JP
> > >   	(5490 - 5630 @ 20), (30), DFS
> > >   	(5735 - 5815 @ 20), (30)
> > > +# Source:
> > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196972
> > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196973
> > > +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196974
> > >   country KR: DFS-JP
> > > -	# ref: https://www.rra.go.kr
> > >   	(2400 - 2483.5 @ 40), (23)
> > > -	(5150 - 5250 @ 80), (23), AUTO-BW
> > > +	(5150 - 5210 @ 40), (23), AUTO-BW
> > > +	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
> > > +	(5210 - 5230 @ 20), (20), AUTO-BW
> > > +	(5230 - 5250 @ 20), (17), AUTO-BW
> > 
> > Even with 5210-5230 split out like this, 5210-5250 @ 40 still gets
> > limited to 17 dBm by the 5230-5250 rule. So why do we need to split out
> > 5210-5230 separate from 5150-5210?
> 
> I did some tests with regdb and I found out that the rule to be applied
> depends on the main 20 MHz channel. With the rules above, if I select
> channel 48 (5230-5250) and enable VHT40, then the TX power is set to 17 dBm.
> OTOH if I select channel 44 (5210–5230) and enable VHT40, then the TX power
> is set to 20 dBm. I'm not sure whether my result is really correct, though.

I'm sorry, when I saw the v3 patch I realized that I forgot to reply to
this email. I had wanted to take a look at the kernel source to try and
understand the behavior you described.

I took a quick look, and from what I'm seeing the minimum of the power
limits for the two ranges should be used. This is the behavior I expect.
Can you provide more detail about how you're getting that result?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
