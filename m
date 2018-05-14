Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=3/0Wix0pxiGDlIG+4h416TAgAx766VD4Qg8vJ2Dk9aQ=;
 b=d+gwsvN0R+L1Er
 l0gkcCugSK1MYgwL+LIXzzY7eM0GOpCrQOXsgBWFMjl8A05mnsZz8ZegGvJodyskWx+aYHcE0nDCN
 CQedhelipnQU8CFy6fVk/tYNzoDXaE5iPDLB3np0UMgj8bw4sgNYxmL94TP5KOE++vl9jHmWN9/IB
 1aeumgexo19t+cXJtzkSYrNmEuS58MTc6CDe9mRl8h5b4RwuIHaHPjv8jbfEHMestDPqixHCGzAlI
 wosMQf/Nb9/7uB3iDHjak0qlANeZl+ypAFcemX2FJKH21nsPZ+11R5FhPRYeRbIClBHXzHi09u6vD
 WO4iej7ynjTnfV/ee2HA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIDas-00047q-5s
 for wireless-regdb@lists.infradead.org; Mon, 14 May 2018 13:32:57 +0000
Received: from mail-it0-f71.google.com ([209.85.214.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fIDad-0006DU-H1
 for wireless-regdb@lists.infradead.org; Mon, 14 May 2018 13:32:35 +0000
Received: by mail-it0-f71.google.com with SMTP id o8-v6so8386742itf.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 14 May 2018 06:32:35 -0700 (PDT)
Date: Mon, 14 May 2018 08:32:31 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180514133231.GA5093@ubuntu-xps13>
References: <20180509142022.GB3375@ubuntu-xps13>
 <e44ee7f1-e2fd-01e2-a0cf-1404010e13fd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e44ee7f1-e2fd-01e2-a0cf-1404010e13fd@gmail.com>
Subject: [wireless-regdb] 5725-5875 MHz in France (was: Re: [ANN]
 wireless-regdb: master-2018-05-09)
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
To: Mathieu =?utf-8?Q?Peyr=C3=A9ga?= <mathieu.peyrega@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 10, 2018 at 06:33:16PM +0200, Mathieu Peyréga wrote:
> Hello,
> 
> I'm wondering if the regulatory DB is up to date for France, especially
> regarding channels in band 5725-5875 MHz

It's certainly possible that it is not.

> in
> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
> 
> I can find :
> 
> |country FR: DFS-ETSI (2402 - 2482 @ 40), (20) (5170 - 5250 @ 80), (20),
> AUTO-BW, wmmrule=ETSI (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI # 60 GHz band channels 1-4,
> ref: Etsi En 302 567 (57000 - 66000 @ 2160), (40)|
> 
> which as far as I understands it prevents top of 5.8GHz band channels from being used.
> 
> The European Union have taken the following decision :
> 
> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
> (or in French :
> http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)
> 
> where (p14/20, line 61 of the frequencies table) it should be allowed in E.U.
> and the last column states that member countries should reflect thie E.U.
> decision at national levels regulations before 2014 July 1st.
> I don't know for other countries, but it seems that France as complied with
> this, regarding the document from our national agency (ARCEP) :
> 
> https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> 
> on page 23/35, the table gives the exact same condition as the E.U. rules. I
> believe those frequencies should now be allowed in FR regdomain.

Based on what I'm seeing it likely can be added. I'll send a patch a bit
later, or else you can go ahead and send one.

> Also, I own a Synology RT2600AC routeur, and the regional settigns pages
> allows to set "European Union" which result in the access point broadcastin
> a "EU" regdom that I can not find in the wireless-regdb
> 
> Shouldn't it be added in the database ?

I'm not completely sure ... my initial reaction is no as EU is not a ISO
3116 country code, but if this is common then perhaps it should be
added.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
