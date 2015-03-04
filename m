Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTGq8-0004Tq-BM
 for wireless-regdb@lists.infradead.org; Wed, 04 Mar 2015 21:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1425504504; x=1457040504;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CJmkMCbtydjOqb7EN58EVg2xuHzsXLjsCVGRLBshT3w=;
 b=yw4lK+LXfE/YgQed/3UFw5bplkt78XAoBDepWJSe4JKkpIgs4pSYdWEA
 ZMA2iJPQjpkUuw5XR5zWS/D7vToHytFmzXIJoiC9FzJpCtMEDCUxhGhZ1
 xJOmdmGVn5aDJdZPy3Y47fB9gpr8cl3qQpx3C9YwKHXg5n4yu3Uuj40Tx k=;
Date: Wed, 4 Mar 2015 23:27:52 +0200
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20150304212752.GA17395@jouni.qca.qualcomm.com>
References: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
 <20150302223824.GB11245@ubuntu-hedt>
 <97207D90F0289D498537011312FCAD112633EAB3@DFRE01.ent.ti.com>
 <20150303151421.GB58396@ubuntu-hedt>
 <97207D90F0289D498537011312FCAD11263401C8@DFRE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97207D90F0289D498537011312FCAD11263401C8@DFRE01.ent.ti.com>
Subject: Re: [wireless-regdb] TDWR Channels are not prohibited anymore in
 FCC
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
To: "Mishol, Guy" <guym@ti.com>
Cc: Seth Forshee <seth.forshee@canonical.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Machani, Yaniv" <yanivma@ti.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Mar 04, 2015 at 01:07:30PM +0000, Mishol, Guy wrote:
> I checked all FCC countries and apparently most of them already has these TDWR channels enabled.
> The only FCC countries without TDWR channels enabled in the db.txt:
> BB  CN  DM  DO  GT  MY  PA  SV  US  VE
> 

What is this list based on? What are these "FCC countries"? If that is
based on the DFS region, it is not appropriate to use that information
for determining which channels may or may not be allowed in the country
(it only controls the radar detection rules). In any case, this list is
not correct and the proposed patch should not be applied.

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

