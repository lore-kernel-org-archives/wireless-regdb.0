Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=vwRZQlwD6Bc65yI00q9DwWOYKFmmnNzvMUFMHWYrLK8=;
 b=Ec0KSKMYGDDSj9
 LH0vdRsmWYFHGGteNINfSvy4uOzt20E4FnVxFlTLjKF0CHuaqDbUBJXrfVmlrf4WjKZ30SY6/sZhM
 skdOfnjBr+lXj8G2Dz/3GdhYU2F31Jho5CvwloajPWNa3NxS+ADL6qQQRySzKZrJkfsJfs7my0/GD
 Tx9WgxszCesnRVm1UFRKgOIJpNZKimAB/LVOh8277ebcjerGIIOqFio3NjOEKr5RxJhgPk44vgv/0
 fZAfeuV5awq39vb6aOAC32WCOxqhXamJ9EG9CLLmTAAIHNRvaTUDZsJE4CdWq4Eg6hb+32WRloUV7
 4PwbbcjVvZ9+PaGKbRZA==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piMQ1-008vyS-0Q
	for wireless-regdb@lists.infradead.org;
	Fri, 31 Mar 2023 21:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680298571;
	bh=W/MKwEVbnvkhNgMQungYqA/saSpihEpxVu6JYyl2oqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SFbjJ4DeMAG6uu5XcLKdEtMK0Aix/KD+2Kv5EHkOEIpz2X0bekojgVpgws/5MrrEY
	 xOes7cuwm7Fb4Lb303cvS5WuQxKiJ0mJKazXHrINYemEJayyP52PEyujUhDMSD6Tg5
	 Ik06sQcVVSAEdFWl2SqOSMabcUYXN3Vw1RGa/O6SkOdp117ohB4iiRE+0mVmVI1Jl1
	 bUPv6QRryT/LIgA/JsjdqYX6VFCzTBvl9BHlrVt9aMocrnPA4MhpKkWFEowmcWfi1j
	 xcTiWB6eTpEDwP7VbXrR6r/8Eu7dkjtMQa4kNtGjJUaMl+N2Rd/xiCmxfK1uqsZ974
	 Yd6bcixADE7kg==
Date: Fri, 31 Mar 2023 16:36:10 -0500
From: "sforshee@kernel.org" <sforshee@kernel.org>
Message-ID: <ZCdSShqbJQ43gZZR@do-x1extreme>
References: 
	 <SJ0PR22MB249552E61991E3B2FAC911978F8F9@SJ0PR22MB2495.namprd22.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ0PR22MB249552E61991E3B2FAC911978F8F9@SJ0PR22MB2495.namprd22.prod.outlook.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 USA on 5GHz
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
To: Eric Sellman <GAK_ACTION@live.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Mar 31, 2023 at 08:30:09PM +0000, Eric Sellman wrote:
> First, I would like to state that I live in the USA And that this is my first time submitting a correction to the wireless-regdb.
> 
> According to this list here >> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt#n1727
> 
> I only see VHT160 allowed to be utilized for 5500mhz to 5640mhz but there is no mention of VH160 being allowed for use with 5180 to 5320mhz.
> 
> And according to this presentation here > https://transition.fcc.gov/oet/ea/presentations/files/may17/31-Part-15-Panel-UNII-UpdatesDT.pdf
> 
> And this paragraph from this FCC document here > https://www.federalregister.gov/d/2014-09279/p-65
> 
> "Band Straddling" is allowed with U-NII-1 and U-NII-2A. 5150mhz to 5330mhz
> 
> Therefore, I would like you to add to the db that 5180 to 5320 can be used with vht160.

You are correct, however the kernel rejects the database if the max
bandwidth for a range exceeds the size of the range for a given rule. So
unfortunately we can't set the max bandwidth to 160 MHz.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
