Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=CK/ZmpS113I0qnFV0FtoXMGFzGp5Nwbn/Nh4FY5GSog=;
 b=ybCW3GX1pSmX+C
 IjAdajX9MES9Gnj2JFUn47dO/OnNPwnqpjofooKry6gbxy2vOO22jfxALG23bWp+H9WVRtS6yCc6W
 rwFjf6Y0zP/3LznoUxrAxYfqMSkWbSzuTgU6fw8EIjvz+3rkiMOC/KoSSpTyXEY04fFcRigtIeBm6
 fXHt+o6fGtZyvRf+QJWceROU3aVOBElJcF7FP7Y4R/RcdeCMq5hnBCkXLnN2BsSKNaNmGUUh7Tnr9
 +I5qgnPUcwBTXaWXxx1dJJiljlm39YKSLa8of7ATNUH7i6RS3wjIvgbRriyB0wEoLEsNMlBKkoB7B
 PK67nCkjK8djBtrCCxOw==;
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyDvd-001ZhH-H1
	for wireless-regdb@lists.infradead.org; Mon, 06 Jun 2022 14:42:03 +0000
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-f2bb84f9edso19357048fac.10 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Jun 2022 07:42:00 -0700 (PDT)
Date: Mon, 6 Jun 2022 09:41:58 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <Yp4SNofnJOeu/tB1@ubuntu-x1>
References: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
 <20201106214446.GG6125@ubuntu-x1>
 <2a710032-f2ec-d55b-5da4-d881089fe0cd@wildgooses.com>
 <20201120175444.GN5439@ubuntu-x1>
 <e7268989-03cf-ae7c-f3c6-b48fe679b790@wildgooses.com>
 <Yn7PFi556pM+r08j@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yn7PFi556pM+r08j@ubuntu-x1>
Subject: Re: [wireless-regdb] Correction of wireless-regdb for GB
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
To: Ed W <lists@wildgooses.com>
Cc: Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 13, 2022 at 04:35:18PM -0500, Seth Forshee wrote:
> On Mon, Apr 25, 2022 at 02:17:57PM +0100, Ed W wrote:
> > On 20/11/2020 17:54, Seth Forshee wrote:
> > >> Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
> > >> ---
> > >>  db.txt | 7 +++++--
> > >>  1 file changed, 5 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/db.txt b/db.txt
> > >> index ac32483..cc5ffd0 100644
> > >> --- a/db.txt
> > >> +++ b/db.txt
> > >> @@ -588,13 +588,16 @@ country FR: DFS-ETSI
> > >>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
> > >>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
> > >>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0013/126121/Statement_Implementing-Ofcoms-decision-on-the-57-71GHz-band.pdf
> > >> +# GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf
> > >>  country GB: DFS-ETSI
> > >>  	(2400 - 2483.5 @ 40), (100 mW)
> > >>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> > >>  	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> > >> -	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> > >> +	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
> > > This looks okay to me.
> > >
> > >>  	# short range devices (ETSI EN 300 440-1)
> > >> -	(5725 - 5875 @ 80), (25 mW)
> > >> +	# See UK specific notes in ir-2030.pdf, p47
> > >> +	(5725 - 5850 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
> > > To echo what I said above, I'm unclear whether this change is in effect
> > > yet, and based what I've seen so far I think it would need to include
> > > NO-OUTDOOR.
> > >
> > >> +	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> > > I'm also unclear on whether this change is in effect yet.
> > >
> > > Thanks,
> > > Seth
> > >
> > >>  	# 60 GHz band channels 1-6
> > >>  	(57000 - 71000 @ 2160), (40)
> > >>  
> > >> -- 
> > >> 2.26.2
> > >>
> > 
> > Hi all, I dropped off watching this for a while....
> > 
> > Seems like the update to IR2030 (GB country code regulations) was re-published last year, and the
> > relevant sections are in pages 32 + 34-36
> > 
> > My reading of this is:
> > 
> > - Other stuff we changed 2 years ago seems ok, caveat I'm unclear when we need to state half power
> > vs using mean EIRP?
> 
> We have to use half of the maximum EIRP in cases where TPC is required
> because Linux does not support TPC. This is why 5250-5350 and 5470-5730
> have lower limits than what is prescribed in IR 2030.
> 
> Note that many recent rules have also included power spectral density
> (PSD) limits, which can also limit the max EIRP in the database since
> there's currently no support for PSD limits in Linux or wireless-regdb.
> Where specified in IR 2030 they do not impose any limit beyond the max
> EIRP for the minimum relevant bandwidth for our purposes (20 MHz), so
> they don't end up making any difference here.
> 
> > - The 5.9-6.4Ghz range is now good for use (page 35 near the bottom), perhaps add something like:
> > 
> > +    (5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> 
> This looks about right. AUTO-BW isn't necessary since there are no
> adjacent rules. It looks like this was overlooked in the beginning, then
> the pattern was copied.

I've updated all rules for this range to remove AUTO-BW. I think the GB
rule is correct now.

I did a quick check of the other rules versus IR 2030, and they look
okay to me. Let me know if you see any issues I missed.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
