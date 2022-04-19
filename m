Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=9OLEiFN9LQqmUWPCihgmzAhKvwhpF+yZcIeayvKtlHM=;
 b=yNk7yhCFQUnUhb
 AT7ibfAGRyxwsFx7yrk6rhhikPNyl7wg4wBaSPdDA2Z7CSepcB/AQZf1bvGg8qQcXggCtAiBvhoR2
 ShIfiCLO/rGGsyCse2ABjqBZ11lI7UtXUk3B+f6G/SIY25w+rkTByI36+U2WSHIkC6RY4kZofcNwV
 WHPxbSiYSTQ6TV125trcZxkjFBPU5u6yIZev5/haxpWtbiVlmIxzHt+xqAc4Z9piqiZwQXWgzjGMF
 hcApz+z8VeYOfoBjzFywUeRgNu1/rpGMCtAb7X9FYgJByHHNuduhmwtX9fOjL8PGMpvVj6lurqFzB
 FzdkjHYGT/Uq7gNpIuPw==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngtue-0061aV-Gb
 for wireless-regdb@lists.infradead.org; Tue, 19 Apr 2022 19:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650398001;
 bh=gSYhEEFw/dWokPKKIYihyqoSBII+MVe4UXBFGuIueaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IgFKL+CRlIgph+/cwtYvCI1IWo0l0HzMndUOPEMrBz5w8kI9d9xx/BPywTIIFQtgk
 udYp08dCnCAU7zU2IoCXibgNfJWxijDCKTo5BLqiO8UwOaO7PvMFXvGudkdIdS17ST
 8oANUacgmNRAJ3Ja91VFdomhZe96UmkHZkBrzOS/YPjeESwBNFo95BPq3Yb8nnFa/H
 wCM05njsea2TLiD7app4PndePkac2w7T3kAaD666W9NNOhxA2vvVPXfBbUELVhthS5
 0F0ORkou0/842G23x9OkoHG5VLs029HYOQ2TXE2xpHglUcmYE2vmuWbpoB4u8NPWVx
 ZaIop2qfCJabQ==
Date: Tue, 19 Apr 2022 14:53:18 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yl8TLoePjb7eERvp@ubuntu-x1>
References: 
	 <CAPRryQo1mJLF0YkQH1j8N4POSyi0QzUJ=r_fedYHun_9fONyBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQo1mJLF0YkQH1j8N4POSyi0QzUJ=r_fedYHun_9fONyBw@mail.gmail.com>
Subject: Re: [wireless-regdb] Regulatory update for 6 GHz operation in
 Canada (CA)
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Apr 17, 2022 at 07:41:03PM -0600, Dennis Bland wrote:
> The technical/operational requirements have been available since November 2021:
> 
> https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11750.html
> 
> If this request is not already in the submission queue, I can look at
> submitting a patch.

We don't have any patches pending for this, so feel free to send one!

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

