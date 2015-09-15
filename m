Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f180.google.com ([209.85.223.180])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZbtLW-0005V5-0v
 for wireless-regdb@lists.infradead.org; Tue, 15 Sep 2015 16:44:42 +0000
Received: by iofb144 with SMTP id b144so206058259iof.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 Sep 2015 09:44:20 -0700 (PDT)
Date: Tue, 15 Sep 2015 11:43:46 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150915164346.GC146373@ubuntu-hedt>
References: 
	 <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
Subject: Re: [wireless-regdb] Regulatory Domain for Hong Kong
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
To: Atul Joshi <atul.suresh.joshi@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 15, 2015 at 04:11:27PM +0530, Atul Joshi wrote:
> Hello,
> 
> We are trying to find out which regulatory domain HK falls under.
> 
> From db.txt
> 
> country HK:
> 
>                 (2402 - 2482 @ 40), (20)
> 
>                 (5170 - 5250 @ 80), (17)
> 
>                 (5250 - 5330 @ 80), (24), DFS
> 
>                 (5490 - 5710 @ 80), (24), DFS
> 
>                 (5735 - 5835 @ 80), (30)
> 
> 
> 
> So the DFS regulatory domain is not specified hence We will not be
> able to start the AP on the DFS channel.
> 
> Can somebody please clarify?
> 
> In other cases e.g. GB
> 
> country GB: DFS-ETSI
> 
>                 (2402 - 2482 @ 40), (20)
> 
>                 (5170 - 5250 @ 80), (20)
> 
>                 (5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR
> 
>                 (5490 - 5710 @ 80), (27), DFS
> 
>                 # 60 gHz band channels 1-4, ref: Etsi En 302 567
> 
>                 (57240 - 65880 @ 2160), (40), NO-OUTDOOR
> 
> 
> 
> The regulatory domain is specified.
> 
> So does HK fall under DFS-FCC or DFS-ETSI?

Based on [1] it sounds like it should be DFS-ETSI. Do you want to send a
patch? Otherwise I can update the database.

Thanks,
Seth

[1] http://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkta1039.pdf

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

