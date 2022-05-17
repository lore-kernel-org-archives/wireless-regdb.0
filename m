Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Lfoey5doAj8NI81CdvWobeDuKO9+kOHM9IuQsSbW5LE=;
 b=smS5c3AXnQGp2M
 4xAQn/WkJ8pDU/DrsWIXsRqRQhikDxP/OZ4vlv2WVorXhKUjZn7ZLIidzt14V0Md9JE23m7/AnfKe
 Xl/mImmbJASLCBknuJOMPv9peWwhBO9GOtFoTcbxOoT9NEdnmk5Jpua5Xx0V78Dmx++wLmnZGYKeO
 Okl+eAxKQrEjug7OQcR7zL2YCN46aZbO8QCqbLg6SbmDRHNfWqdMr5vL9VrAE1SqDDeKllSzhQADD
 IWHnHQ25IL59fo97+qsZ0Sl/UzgUt7gwUhT2sAnywExzxwHKclgVKLTwoZjlYoV517DtfMsnnrXCT
 GWimDlTuXhqBc6oRjVXA==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr5Bi-00G0ZI-3L
 for wireless-regdb@lists.infradead.org; Tue, 17 May 2022 21:57:08 +0000
Received: by mail-lj1-x234.google.com with SMTP id 16so375472lju.13 for
 <wireless-regdb@lists.infradead.org>; Tue, 17 May 2022 14:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8RT0g+CRyKjWNJt+QuAQjWHP+Ic1T4hoqf2FDtd5nw4=;
 b=C/ITfi731HWB+TFJSze3F/4GA0SrOgZfkBX501KG5lIP0xScDDlrXSUg2ec6HPzDQ/
 fCH4JNUL7RpgQxd6UGJytyGnR5Ps66VdqSadVDCQe4wFKojCo3EewAdHA03WbhdQOpVA
 PuSupohGOq1MaXntK1j0rAWsmc2W19UYJ+spvc7Md3CSNiR/M8+TVUSTcnJ14LQA6BUZ
 12y1YlX72N0nqsy1sfk3vFCTvXgtRBrvcECopgUUREEa4AoaUTCrCYaLy2LLZ525UlsS
 Yhg/QHZ43jj0c2/iafbpG92BYm2Xc9ml0bqiEINLNDl7z+VUcExZzGAqhkZr7wLlhipu
 6qtA==
MIME-Version: 1.0
References: <CAPRryQpwcb2B=4qbUqG8mXF_Cz3tUpESYYxvZbR60kBSbw2vsg@mail.gmail.com>
 <Yn7CVWzQ38CyyOw7@ubuntu-x1>
In-Reply-To: <Yn7CVWzQ38CyyOw7@ubuntu-x1>
From: Dennis Bland <dennis@dbperformance.com>
Date: Tue, 17 May 2022 14:56:46 -0700
Message-ID: <CAPRryQpMu5pnn-AFoV5iPakVFh+MNkQOvzACDjkw9qw6on60Vg@mail.gmail.com>
Subject: Re: [wireless-regdb] EU/CEPT Decision for 6 GHz usage
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Here is the current list of EU Member States:

https://european-union.europa.eu/principles-countries-history/country-profiles_en

The definition of an EU Member State is:

https://en.wikipedia.org/wiki/Member_state_of_the_European_Union

Article 3 of Decision 2021/1067 mentions the following:

"By 1 December 2021, Member States shall designate the 5 945-6 425 MHz
frequency band and make it available on a nonexclusive,
non-interference and non-protected basis, for the implementation of
WAS/RLANs in accordance with the technical conditions set out in the
Annex."

In other words, EU Member States are required to follow the harmonized
RF regulations defined by the European Commission.

Best regards,

Dennis


On Fri, May 13, 2022 at 1:40 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Fri, Apr 22, 2022 at 08:28:50AM -0600, Dennis Bland wrote:
> > All EU/CEPT member countries ratifying 6 GHz operation should include
> > this reference:
> >
> > https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> >
> > DE, ES, FR, HR, NL, NO already have 6 GHz band entries and local
> > country approval references, and should include the above reference
> > for completeness.  Note that the EU regulation specifies 23 dBm
> > instead of 200 mW, and also includes a VLP (Very Low Power) mode that
> > is permitted for outdoor and most mobile applications.
>
> Unifying the rules for countries which have adopted the directive seems
> like a good idea. I'm curious, are you inferring the countries which
> have approved the directive from the rules in the database, or is there
> some resource which shows the countries that have approved it?
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

