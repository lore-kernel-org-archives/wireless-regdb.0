Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LxM79Mob0Xs/WpHgaoBJQrSgWcUSC72RTNwOY2mrV/E=;
 b=YiS42qkk+VZhID
 qgwwA7ohPXnpx/Km9eSXf+y/NNRqXMhDe84OJk3KB0e2JNIo1dAArSaR1jhdIcmi29Qfn7UHlhKXz
 dYEvPy4bRc79VZjS2PQdjjbTSfVilp2cCVhmotyWmxRA0tDNgeYL2O9q7Re/xG2Ago4RB6mgEkdoC
 lp3/v1QxHrkgAlPXlf5TL46V1q6b9pv7k/bAQdmF0uq4JMSWnXZCMkHbFKyYkmG+4VbUaj0QvLeEd
 VUjvjGLbdKtXZJandwdRyO81yJc2BiVRzl4Di7dpgJck2/OqjT/0sB3UCxuTHhsFnrJN5lIMGNN4d
 HQCyqPQp2C1Avpj85oJg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7aO-00EaDx-5o
 for wireless-regdb@lists.infradead.org; Wed, 06 Oct 2021 14:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633529275;
 bh=D95Vrcms+Yoi8Ioz1qWrqDjHU3r6PZ2x8C3FThMJW/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FNWLw7ACi2OM/iQJ4YFBH8CYm60tLB/vH1aNikY7bpvinMHzkfJMec1+VzYdzJRLx
 AR4ZADjQbRzp0LmWwEi7q13PS7KS5t0Hu4h4gm5A7FbHUf46Q0Amqxbz9jIuKziEPJ
 5bPirVlzYNRXnpZikK06ikx9OWXz7HzM/g2D9IpC+D8A8B/AVe/lPVHweaX0dMUEML
 b0U2VLK7kmM71KV3NMWMGYCNwg2pDYFFxWcC/NfhAY1aXHaHWb7tXV6TNAncjy4P1B
 0zIluUWCV5xZH+J/R850906AmPrvEyXDzXc+35eIq4JR0loHjSCBlW/km2SBRWQ5D6
 RL5xfMZ5/sDcA==
Date: Wed, 6 Oct 2021 09:07:54 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YV2tukujds7PodAf@ubuntu-x1>
References: <20210929172728.7512-1-mans0n@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929172728.7512-1-mans0n@gorani.run>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
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

On Thu, Sep 30, 2021 at 02:27:28AM +0900, Sungbo Eo wrote:
> This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
> Equipment Established Without Notice"), officially announced on 2021-01-06.
> 
> Extend the last 5 GHz frequency range to 5850 MHz.
> 
> WiFi 6E is now allowed with the following restrictions:
> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
> Here only the former entry is added.
> 
> And also update the regulatory source links.
> 
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> ---
> I have two questions.
> 
> The regulation has one more restriction:
>   The TX power should not exceed 2.5 mW/MHz
>   when the frequency range includes the whole or a part of 5230-5250 MHz
>   and the bandwidth is equal to or less than 40 MHz.
> That leads to the followings:
>   5230-5250 @ 20 -> 17 dBm
>   5210-5250 @ 40 -> 20 dBm
>   5170-5250 @ 80 -> 23 dBm
> Is it possible to add this rule without lowering the TX power for 80 MHz bandwidth?

I've tried to look at the documents, but much of the information appears
to be in images where machine translation doesn't work, and I haven't
been able to find English versions.

Taking the above at face value, I actually get slightly lower EIRP
values for a PSD of 2.5 mW/MHz (EIRP = PSD + 10 * log(bandwidth)): 16
dBm for 20 MHz and 19 dBm for 40 MHz. We don't currently have any way to
express PSD limits in the database nor a way to express different power
limits for different bandwidths, so it's not possible to comply with the
PSD limits for 20/40 MHz without also lowering the EIRP for 80 MHz.

> And do we need AUTO-BW for 6E channels? I thought it is for merging adjacent frequency ranges.

That is correct. Since there are no adjacent rules, AUTO-BW doesn't make
sense.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

