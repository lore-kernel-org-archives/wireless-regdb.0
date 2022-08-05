Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=iY+yiJadTc6+adt3lC+rDNdmHCDLUo4no8rm7iJNTfQ=;
 b=LE8Mn/eY24W2rY
 1t4W3pKqA8cB7cIfLuQjR9PKXSFyXa8VMird97YUYK3BJN7692R3P/jyTAI4pqOzpuxP/n2nD1NG0
 4WmKwj1zt9LJHNT8EPeKtRPC09DhdJf4n0/heYdIsf+0PzRYncHpSW5L7lBF3FtG4LiO2T5+AX5W6
 Rd61mBctqP2xw3Rpx1ieHipyZ73Pg7PnkaQV70heFl7+dRrgdhY4/REMDI8w3cCkqnCsDyz1BV9Be
 cAM84hfIZZegPSkWTCx9PsuQ7CfDYKRntkHC2AxM9P8vpKBjSdoaF6KDYZoRCUjQhTfNgRpLaQgKh
 uQKhHa4l7mlCrFRC4vlA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJz62-00GDD5-Uj
	for wireless-regdb@lists.infradead.org; Fri, 05 Aug 2022 15:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659712721;
	bh=a3J98JmoOsmJUtPTXQWaXfCBE7p1487afXQtkt4+XQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G7PB2+KPZ/rqLxAWqGN5HBb/GNhgjNqx7B5XXJHOgbiUuKpefK10Z8jI/T3AVMlYV
	 dN2xCBLsja7SODoPuKaLmtcsMWSit9fZSsR8SiKqekl+IMV/X4nHnMIgz1ZmzlPqnE
	 Lqx/DGqOK+ZDtoq4bs8ZDjhOVTBNCs9MDbCgoLKSztcNly6pfTLQn2DYBnvmX3ITva
	 mvdhKSRbPNlEn1+OB6FTHRnpcxKTJYi6GkBK0lV0POoYK9WzIZJkTe4XWqJ/qv3j3U
	 UY61P9MoGqpCCbD83DgWbpyrsGR3E4vk37QwJ0fykUyrOQID0APXOJXvC+7n7LzfnK
	 6E94/IQ/ZWA6w==
Date: Fri, 5 Aug 2022 10:18:40 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yu000DvbyViZPeC+@ubuntu-x1>
References: 
	 <CAATNLbwMFDj0UrG1PBNh-dj7GT+GJ2Ud38TzHL=FmMG7wgNNbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAATNLbwMFDj0UrG1PBNh-dj7GT+GJ2Ud38TzHL=FmMG7wgNNbQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Pakistan (PK) on 5GHz
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
To: Murtaza Saeed <mnk.saeed@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Aug 05, 2022 at 06:01:43PM +0500, Murtaza Saeed wrote:
> Hi,
> 
> The current regulatory rules for Pakistan (PK) for 5 GHz channels in
> wireless-regdb are out of date and have been recently updated by the
> Pakistan Telecommunication Authority (PTA) in June 2022.
> 
> PTA has allowed the use of additional 5 GHz channels which were
> previously restricted for use in Pakistan.
> 
> (5150 - 5350) at ≤ 200 mW EIRP (23 dBm)
> (5470 - 5725) at ≤ 200 mW EIRP (23 dBm)
> 
> The current channels (5725 - 5875) remain allowed at a higher power of 1W.
> 
> (5725 - 5875) at ≤ 1W EIRP (30 dBm)
> 
> The updated regulatory framework from PTA can be found at the link
> below and the relevant information is available on Page 10.
> 
> https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> 
> If I am correct, the listing for PK in the database should show as follows:
> 
> country PK: DFS-JP
> # https://fab.gov.pk/type-approval/
> # https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
> # https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> (2402 - 2482 @ 40), (20)
> (5150 - 5350 @ 80), (23)
> (5470 - 5725 @ 80), (23)
> (5725 - 5875 @ 80), (30)

Thanks for the information! This isn't quite right though. Annex A1
includes additional restrictions which need to be accounted for in the
rules:

 - 5150-5610 GHz are restricted to indoor use.
 - 5270-5610 GHz requires DFS.
 - 5270-5610 GHz also requires TPC, but since Linux doesn't support TPC
   we have to lower the max EIRP by half.

It also looks like 60 GHz is allowed, so we can also add a rule for
that. So I think this is what we end up with for the new rules:

country PK: DFS-JP                                                                                                     
        # https://fab.gov.pk/type-approval/                                                                            
        # https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf                                         
        # https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf                              
        (2402 - 2482 @ 40), (100 mW)                                                                                   
        (5150 - 5270 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW                                                              
        (5270 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW                                                         
        (5470 - 5610 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW                                                         
        (5610 - 5725 @ 80), (200 mW), AUTO-BW                                                                          
        (5725 - 5875 @ 80), (1000 mW)                                                                                  
        (57000 - 66000 @ 2160), (40)                                                                                   

Note that I also changed the EIRP to mW to match what's in the document,
except for 60 GHz where it gives the limit in dBm. We generally try to
have the rules match the regulatory documents.

If this looks good to you, I can send a patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
