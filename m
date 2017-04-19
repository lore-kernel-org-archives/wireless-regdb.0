Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=CddrATM/WJstLUQfMA5r8uUFKWOooy8OMtsNrzQkmLI=;
 b=OTQkMVX/J/RqRQ
 Kq2jtSit+bJuGlWuETPRITE7wLp2ofcxGiBqd9kbsvPF3xiYtNG2dWvUbeXxxJv5vEWh/1sksLyIz
 gDNruYS1IJ1Na5B/bZwDVkXOUh19s1cSQgP0m82dFseJaGp/ZpEomB6viTHBLO/JGx7tM0I9PeoI2
 gehwNikGf2wsyxWNor1HIBGKLNw4N6p9+HljrDfdKDxKOglzqQAaqorfMc1MaBNZx0G2FmKCACsUq
 E5y8S5nfy1uDvtztxIIcliOJVyk3l1JiuBqBq4c6+Hm1mMrgqfBCAJ1C0ZEbHf/j6XhA+y9d2thO/
 ArWBQF6NqgVfw9iLIeEQ==;
Received: from mail-io0-x22c.google.com ([2607:f8b0:4001:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0om3-0002kd-R6
 for wireless-regdb@lists.infradead.org; Wed, 19 Apr 2017 12:31:57 +0000
Received: by mail-io0-x22c.google.com with SMTP id k87so19990729ioi.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 19 Apr 2017 05:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5qXnT9YdKmLYFy4jAdaZbWvLmf1pV4mQIs6sOyvZfS0=;
 b=TGOFIGRumVdkP8rV0W5A4UbpMy+3rez3VwuDCqQBFrnEg1kiG1Ni2XKQV/r/RZxhiz
 YhU55lx2EQp76dEEVOIzPMNjEb+eAaujfBFoj0f/ljaSlePPa0jDOGZiut9vdtcxHKt+
 3YO0l6EP7CCNozAFGnz9OkeWZBGAoW9VxqZyPJoWyYTOWXwqD24+uDcMVot2miwTLm5o
 aZ6awKEsm30M+dQs/CATof/rIvp3cUMTgDrcLoOAh5JfGVNXGRMQcbn/Wy+9satrUugy
 fxqNtNFH+rsIQNicR/K6c2SPA5zepD1Wf4gPZgBx9Egx65q13/lcTr0eJVBULlWEVnBl
 YYPA==
Date: Wed, 19 Apr 2017 07:31:31 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170419123131.GD42038@ubuntu-hedt>
References: <CA+XFNZ4kkNyLOj=ER0MbN3s50_Jmn9nTzpJnKb6+gq5dXjg8pQ@mail.gmail.com>
 <8760i2doz6.wl-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8760i2doz6.wl-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Set NO-OUTDOOR Flag for EU Countries
 on 5150 to 5350
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
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: Aron Rosenberg <arosenberg@logitech.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Apr 18, 2017 at 12:50:05PM +0300, Petko Bordjukov wrote:
> Hello,
> 
> On Tue, 18 Apr 2017 02:52:15 +0300,
> Aron Rosenberg wrote:
> > According to [1] the EU now requires NO-OUTDOOR to be set
> > on all 5Ghz channels within 5150 to 5350 frequencies
> 
> The cited standard seems to be a draft and as far as I can see has not been
> approved yet[1]? And looking at the publication schedule it seems its publication
> date is currently February 2018[2].
> 
> I also could not find any mention of this draft in both Bulgaria's
> Communications Regulation Commission website, and the Bulgarian Institute for
> Standartization's website.
> 
> Maybe it's a bit too early to merge this PR?
> 
> [1] https://portal.etsi.org/webapp/workprogram/Report_WorkItem.asp?WKI_ID=52727
> [2] https://portal.etsi.org/webapp/workProgram/Report_Schedule.asp?WKI_ID=52727

I think these are more relevant:

 https://portal.etsi.org/webapp/WorkProgram/Report_WorkItem.asp?WKI_ID=46061
 https://portal.etsi.org/webapp/workProgram/Report_Schedule.asp?WKI_ID=46061

In which case publication of the final standard is planned for early
June. So unless there's a good reason to do it sooner, I'll plan on
applying this closer to that date.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

