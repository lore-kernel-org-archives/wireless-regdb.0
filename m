Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-Id:
 References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=pQHhj24i5F9EnfWusU31z9oFPKGdTHwF4SIxlztNYnc=;
 b=gjYz56G5+YcdQL
 WOEF17QPU/6IK7vmqUPJNlZSlSQg9GZ6cldQxh1UlNpLCCr+pGrDbfTkfxpjIPXdXUpvKb73ahsZZ
 9hD+SBNYadmwBgZCbosYDF/9mbpD1YK52oyxBdcnHdAayx0mFftBPC00jDIROSlY6i1bsiGjHuNEg
 gx90UQNztB0f/aNCjq6bnJB1t9Wb41oOWw1piLvyaMUlgsI31qfNipcfS/DRBQs3jiR9TTeYpkrbq
 jNwnaTmZ1yX/VD/cN7/aFc2mm0sTVFrGfWccmJNO9pdFiyI6sA4XjUveER4CyHQwohSswKPSeeUu6
 h14rG25QPxu/w4JcxqXw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rARSa-006kfa-3B
	for wireless-regdb@lists.infradead.org;
	Tue, 05 Dec 2023 09:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701767480;
	bh=QMDREhFQs+Cx0qGLE9136SPqX1lANODyvOE4w3ZTV8g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kJL0n1adXyd+4aJbqeG0PPvNud7n72mRjjBl6faIYVwurj4dd0xsn4RrZmY9vCOAn
	 un8OgChvpwhvciYmoDaIHSyFcAuTJ/EjMNmTt3hJHnXDaG2A7oAoDXNAMu92IK+KB1
	 dcCXpCB+OFMdstC4JazUdfUjnlQRusUSvmC3kSdtOeHWr8MpKnRGCvfxkyhJDlLBLH
	 94VbMyYan9zgCJkfu/HkEYxami6G+J8BwngjzXkuFx8Cx69b35EZIZohYV6X50+Jqt
	 HUL1VpcuqyA4dPfnTmHKjWTg16r8uDVLUjfQVz4y2sveyhk7zVyvEFqFVgW9bLey5d
	 R9TNtyleHYJ9g==
From: Chen-Yu Tsai <wens@kernel.org>
In-Reply-To: <20231119182401.7630-1-jiaxun.yang@flygoat.com>
References: <20231119182401.7630-1-jiaxun.yang@flygoat.com>
Message-Id: <170176747748.1180638.6206522543570761190.b4-ty@kernel.org>
Date: Tue, 05 Dec 2023 17:11:17 +0800
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for China (CN)
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
To: linux-wireless@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>


On Sun, 19 Nov 2023 18:24:01 +0000, Jiaxun Yang wrote:
> China had updated regulations on 5150 MHz to 5350 MHz by
> "中华人民共和国工业和信息化部令（第54号）", which released
> an update to "中华人民共和国无线电频率划分规定".
> 
> The new regulation effectives from 1 July 2023.
> 
> In updated regulation, footnote "CHN44" had restricted 5150 MHz to
> 5350 MHz as in door only for Broadband Wireless Access systems.
> 
> [...]

Applied, thanks!

[1/1] wireless-regdb: Update regulatory rules for China (CN)
      commit: 8c784a10448e36dc387fe02ae6bf69f4ae0208d2

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
