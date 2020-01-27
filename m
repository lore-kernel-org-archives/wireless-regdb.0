Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=xZRkYHDVwXKen8ki+0udjjZQDhhiUzyjd690X5KKRro=;
 b=TNCW9mzAFj7Jck
 cn8e/0sfd90GIakKW5E1McB3mJx3AuvGtCIxKf9vX3CYOHTJMcYTbCvtkKsj5jPFqdrIIHT/BGEs1
 FuJJnhF7bW2AoIwGXsAPVoIytDOV0lsusEtOzVl0dNTVioHNzUXPpiYGXfzTRS124fQ7Fnzx2lThM
 8rOWd835gl4nh11S0tZiEIz/LcjRlmxocswKNCgKQeKt01MJ/fLAhb5342iP3oURxaYwxURMo8AJi
 v6McckbwD5FUghK2n+il6sCvHKs53FRzn5l5BLDUEFCzNsfwRSZKfGEenM51j9og2Wnug4P1cYPFn
 lXVvNoh+ZLhlrO41Ni3A==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivvxQ-0006IQ-Vl
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:25:07 +0000
Received: from mail-yb1-f200.google.com ([209.85.219.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1ivvxP-0001W7-KC
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 04:25:03 +0000
Received: by mail-yb1-f200.google.com with SMTP id g136so6808407ybf.20 for
 <wireless-regdb@lists.infradead.org>; Sun, 26 Jan 2020 20:25:03 -0800 (PST)
Date: Sun, 26 Jan 2020 22:25:00 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200127042500.GE3730@ubuntu-xps13>
References: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
 <20191029144815.GR30813@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029144815.GR30813@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Kazakhstan (KZ)
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
To: Dmitry Tunin <hanipouspilot@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 29, 2019 at 09:48:15AM -0500, Seth Forshee wrote:
> On Fri, Aug 30, 2019 at 09:24:44PM +0300, Dmitry Tunin wrote:
> > Update according to the regulatory rule of January 21, 2015
> > 
> > http://egov.kz/cms/ru/law/list/V1500010730
> > https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/
> > 
> > No DFS or TPC is mentioned in the document. Neither is 80 MHz channel width.
> > 
> > Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
> 
> Thanks for the patch. I don't agree with all of your changes though,
> please see details below.

Hi Dmitry - it's been a while since I sent this last email. I wanted to
check if you had any responses to my comments below, or if you intend to
send a v3 patch.

Thanks,
Seth

> 
> > ---
> >  db.txt | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/db.txt b/db.txt
> > index 37393e6..491598e 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -717,13 +717,13 @@ country KY: DFS-FCC
> >  	(5735 - 5835 @ 80), (30)
> >  
> >  # Source:
> > -# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> > -# http://adilet.zan.kz/rus/docs/P000001379_
> > -country KZ: DFS-ETSI
> > -	(2402 - 2482 @ 40), (20)
> > -	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > -	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> > -	(5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
> > +# http://egov.kz/cms/ru/law/list/V1500010730
> > +# https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/
> > +country KZ:
> > +	(2400 - 2483.5 @ 40), (20)
> > +	(5150 - 5350 @ 160), (23), NO-OUTDOOR
> > +	(5470 - 5850 @ 160), (20), NO-OUTDOOR
> 
> The documents you provided reference this document:
> 
> https://egov.kz/wps/poc?uri=mjnpa:document&language=ru&documentId=V1500010375#z7
> 
> Which says that bands 5150-5350 MHz and 5470-5725 MHz should conform to
> WRC-12 resolution 229:
> 
> https://www.itu.int/dms_pub/itu-r/opb/act/R-ACT-WRC.9-2012-PDF-E.pdf
> 
> This indicates that 5250-5350 MHz and 5470-5725 MHz must either have TPC
> or reduce the maximum EIRP by 3 dBm, which for this database means
> reducing the maximum power by 3 dBm for these bands. It also states that
> these bands must implement the mitigation measures from ITU-R M.1652-1
> in these bands, i.e. DFS.
> 
> So it appears to me that the existing DFS requirements are correct.
> I think 5150-5250 MHz can be raised to 23 dBm, and 5250-5350 MHz needs
> to remain at 20 dBm due to the TPC requirement. WRC-12 does mandate TCP
> for 5470-5725 MHz, but also a maximum EIRP of 1W, so since 100 mW is far
> less than half of that I suspect we can leave that at 20 dBm.
> 
> > +	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
> 
> This addition looks fine to me.
> 
> Thanks,
> Seth
> 
> >  
> >  country LB: DFS-FCC
> >  	(2402 - 2482 @ 40), (20)
> > -- 
> > 2.7.4
> > 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

