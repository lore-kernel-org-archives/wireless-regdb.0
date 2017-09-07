Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=iLNq9tpodLqjVTxZil/tlX2IB8V38/DzQ/OTodqG3rs=;
 b=td8nBct46HCXNA
 UmQbTa/387GV4dAPAerHAh14QNbmqenDokhzA3b6Z4pBNprUlPlQhy8THvsly7x7RkFObNI8K8hbo
 D88KaKufzKwO/Mubu5S5h5wHh1oSX45LzPsrd5qzSBh8qMjbNB2+5SI5J6Jf+ZrTXSNmL9MyXvtMB
 5mTQM34tHMM3IXM873f1dBY/EIKZArrmFWMe/uV9hbY0Yz4JI81OvuykIC7udtbPGu4HB8czNH8f7
 xNtkbt+sAnIhmzcfvLcCsX+fHdUTQbbzV1QSn2sI43PMq7xOn+gNc4y5fAgXx0+vIRyw40taKhfB9
 YY+qsNYnUPwQC111SXaA==;
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpw53-0003iq-SD
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 12:38:52 +0000
Received: by mail-pf0-x242.google.com with SMTP id f84so2556383pfj.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 05:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=M6fhFQLUNfAhVqyAeY+m8wM5SyF9NChyTodAikIoGjs=;
 b=QPZOAkx7bLUR0MY7M8AuiOHE5PyjiNNP3lc6d+hTAAamrybOTKqtpZWcUR4i+l1EME
 mQJP2IbXuuLyDc7gG3772UdWbWrjtoCtcJCgqAMFO5ZzKhhA9y2jWdc0nydvZQ2s2GX/
 OFIABZ5tTafw+957gCGhFKmXdVrc2Sg74HfqShs0D7/7xVFB1ZSGRqHt032EBv23/AoB
 7FFsyBYGhib19WqZx5F5Jvo4p22g4AE/wGIRtqJz1w5PJLfpDF8WNJ6OP4MORfCR99Wz
 uRYvSFYMFjJlNDF/Rlzqz1v+t20G++AVtUEB5nM8kPoKpLvpNfAf59p81j/NPExNb+Ki
 XhxA==
MIME-Version: 1.0
In-Reply-To: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Thu, 7 Sep 2017 22:08:13 +0930
Message-ID: <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
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
To: =?UTF-8?Q?Mathieu_Peyr=C3=A9ga?= <mathieu.peyrega@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Mathieu,

The permitted power within 5725-5875 MHz is only 25mW / 14dBm EIRP, as
far as I am aware this was also the case prior to 2014. This rule does
exist in the regdb for Bulgaria / BG, which is technically correct
however in my opinion should be removed for consistency.

I think the problem with 14dBm being such a low power level is that
its useful range is very limited. There is also the fear that client
devices designed for use outside the EU and not complying with 802.11d
will transmit far beyond the permissible power level in this range
upon associating with even a compliant AP.

Whether for these reasons or others, the convention appears to be to
simply disable this frequency range altogether for EU countries.

Regards,
Ryan Mounce

On 7 September 2017 at 21:49, Mathieu Peyréga <mathieu.peyrega@gmail.com> wrote:
> Hello,
>
> I'm wondering if the regulatory DB is up to date for France, especially
> regarding channels in band 5725-5875 MHz
>
> in
> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
>
> I can found (07/09/2017) :
>
> country FR: DFS-ETSI
>     (2402 - 2482 @ 40), (20)
>     (5170 - 5250 @ 80), (20), AUTO-BW
>     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>     (5490 - 5710 @ 160), (27), DFS
>     # 60 GHz band channels 1-4, ref: Etsi En 302 567
>     (57000 - 66000 @ 2160), (40)
>
> which as far as I understands it prevents those frequencies being used.
>
> The European Union have taken the following decision :
>
> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
> (or in French :
> http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)
>
> where (p14/20, line 61 of the frequencies table) it shoul be allowed in E.U.
> and the last column states that member countries should reflect thie E.U.
> decision at national levels regulations before 2014 July 1st.
> I don't know for other countries, but it seems that France as complied with
> this, regarding the document from our national agency (ARCEP) :
>
> https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
>
> on page 23/35, the table gives the exact same condition as the E.U. rules. I
> believe those frequencies should now be allowed in FR regdomain.
>
> Also, I own a Synology RT2600AC routeur, and the regional settigns pages
> allows to set "European Union" which result in the access point broadcastin
> a "EU" regdom that I can not find in the wireless-regdb
>
> Shouldn't it be added in the database ?
>
> regards,
>
> Mathieu Peyréga
> --
> tel : +33 (0)6 87 30 83 59
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
