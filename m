Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=diHybkqoDy5hWlMzctHQvcBqpzdWkcCzcBj3ow0BFPE=;
 b=zP99AvhZshpwqD
 16g4Rp/sZagYCiI2Zyl3iYC2rEqOQjJSf9QReOYfRmSPcH09u8rIFplMdBlCTg8DBnXQvKg794wt3
 rVGqYS3wR54EpRzzdIsC9fKx+1w16RWXlZPTZOG/0Wd5b99+Lk36zSVLbenx1eMiLuzo7fVhweR7y
 JAuEK2siyt20D2j8tMmb8JlyXhokbfH8476pp9J2QJB6mmy9K7tKB4e5lL05BH7KuGs6ikrbpGfct
 1fny9Ig2kOU0ADC8lSk+QUtgRogMEovKZVZ3gdDKvMSdLV/hnGMC3H/3F0IbD8Xl7kudGL84WhOiG
 2kMHS+V9VNf6us9Vii2A==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxZ2T-0041FA-2Z
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Oct 2023 20:39:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by dfw.source.kernel.org (Postfix) with ESMTP id 66F8660AD8
 for <wireless-regdb@lists.infradead.org>; Mon, 30 Oct 2023 20:39:08 +0000
 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698698348;
	bh=3P2qlkX+DrVyadaT90jeCX8ol+J/3yj2L/wdhbe9yzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lmgo8NhNPupJ0NhOoB4yZewAcFFr6Aji12DHSPpOsGQsHpeObSWOSpLm4jfsbFhBB
	 5ZoI4gFSUd/F0/AqaDXqEAzn/Abno6fD2nZi0ycY1l1+Y4Xfz/LpxdHuvMxbMAuu16
	 ZQ7YMEH06xRjdig2grPmPPn9SOZVcVGvOUGBFQInZrCGfYnGBrigyTjuGYKY/R8hpN
	 gyuaGCIlyjLVAKD5DurRLo7ypcRkgls15PHIPNXO4v3myJoRxT/w2c5WTpXQj99eKW
	 ZjOGQLxxM/ZCXxcAqPHj9rbChH5lV13DdLhF5msft7KKLecLMfmWKV+TWdqTv0bn04
	 1IPtrWxOTxnRA==
Date: Mon, 30 Oct 2023 15:39:06 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZUAUahZakEvOXpip@do-x1extreme>
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
 <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2023-09-01
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
To: Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 24, 2023 at 02:23:26PM +0800, Chen-Yu Tsai wrote:
> I'd like to take up maintainership.

Thanks for volunteering! Sorry I didn't get respond sooner, this thread
was buried kinda deep in my inbox so I didn't notice your message right
away.

> As far as I know, I would need to:
> 
> 1. Make a clone of the repository on git.kernel.org under my own namespace.
> 2. Generate a key pair and certificate
> 3. Put the certificate into the kernel tree
> 4. Update the docs to point to the new repository and certificate
> 5. Review incoming patches and apply them
> 6. Tag releases timely
> 
> I'm not sure if I missed anything.

That's the bulk of it. Most of the time is spend validating proposed
changes against the government documents. There's also maintaining the
tools to build the database and moderating the mailing list, but neither
of those are much effort.

Johannes will be the one who needs to accept your key into the kernel,
so we should wait for a +1 from him at least before we really get the
ball rolling.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

