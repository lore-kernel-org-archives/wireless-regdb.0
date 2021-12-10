Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=XRYWEySAlCGZbl4y0i5G4hD3BftGGvbTOM8Cu7e2XrU=;
 b=xc8qkekX3TP7KY
 xMAjXD7my3M3H7qXCEP9HBFCtioaxuAFYKND1guIkx39RYH9G3h5FKx/fiFNJXpOUpJ/ucuHBGz5W
 FgIs84aZZuvScRtWqvWM8VYoV+gVlFqa5IvKSMqcr0rcKqev5uEHXGq9VOISQM7OU0yhC8NgpMaq7
 F6Wb4BdrvlhOdQ05C/QIlTEViKDD9Ei+3O1wliJFEyk5ZlBisA0DkinpnAVXMc+IT6UGcnE6om8x+
 S6AwCPziwK7qpNDCYLhfASSEohNr7mUn8lad2XZfEy+oJ9iqUom9wOksNl5q0h0eZLf+prFCXCUmk
 ivekbeSPBE7Vv8KiH2Jw==;
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvVwH-000gl1-MK
 for wireless-regdb@lists.infradead.org; Fri, 10 Dec 2021 02:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639104428;
 bh=h3kRVIWb4+T1yOuMZzsrfBPcunSuv9y36YP/NSEF9Y0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QkM0mDfslWQymBKRJqi/eHNDhuC14LLQL/Te22RnnCUh2OfNgPPSdwNcI20jTEa2O
 9dFgGsJ3zLHyPlBwoM0BBnuwp1aw5DpL0lS/MT+Glz2HxGhz+IYOrWvD5x4G2PK3S5
 yl1LxOKat//v6OrZ8cAm0Glxgr+WnrSqJb/qdZj4ZH9BwQjWRAyAvt0FQIizPBOIfW
 XrKRvF3aNymjkKoCUvyRBPWIPrFjeGjEzk02575u5ytdPMXjNmQ2tGiEuKxGAPKhF5
 IdhTzilIaFNf/Dbz4axFWRJI6Gw6nTLFPdOYUrAtNCCg+lKXrISybtCpbIjSpYyVlz
 oUW6z5x4M2mbg==
Date: Thu, 9 Dec 2021 20:47:07 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YbK/qyUTu5Mj4nrj@ubuntu-x1>
References: <20211206064520.11305-1-sultan@kerneltoast.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206064520.11305-1-sultan@kerneltoast.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Raise DFS TX power
 limit to 250 mW (24 dBm) for the US
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
To: Sultan Alsawaf <sultan@kerneltoast.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Dec 05, 2021 at 10:45:20PM -0800, Sultan Alsawaf wrote:
> From: Sultan Alsawaf <sultan@kerneltoast.com>
> 
> According to 47 CFR § 15.407(a)(2), the U-NII-2A (5.25-5.35 GHz) and
> U-NII-2C (5.47-5.725 GHz) DFS bands are subject to the following [1]:
> "For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
>  output power over the frequency bands of operation shall not exceed
>  the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
>  emission bandwidth in megahertz."
> 
> As such, increase the TX power limit for the U-NII-2A and U-NII-2C DFS
> bands to 250 mW (24 dBm) to match the FCC's current rules. These power
> limits have remained unchanged since the § 15.407 amendment by the FCC
> in 2014 [2].
> 
> [1] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E/section-15.407#p-15.407(a)(2)
> [2] https://www.federalregister.gov/d/2014-09279/p-131
> 
> Signed-off-by: Sultan Alsawaf <sultan@kerneltoast.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
