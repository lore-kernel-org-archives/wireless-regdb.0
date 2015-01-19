Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f170.google.com ([209.85.214.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YD2aC-0003TY-Qp
 for wireless-regdb@lists.infradead.org; Mon, 19 Jan 2015 03:00:53 +0000
Received: by mail-ob0-f170.google.com with SMTP id wp4so11314308obc.1 for
 <wireless-regdb@lists.infradead.org>; Sun, 18 Jan 2015 19:00:30 -0800 (PST)
Date: Sun, 18 Jan 2015 21:00:11 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150119030011.GA95848@ubuntu-hedt>
References: 
	 <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add back regulatory
 rules for US
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
To: Daiwei Li <daiweili@suitabletech.com>
Cc: Jouni Malinen <jouni@qca.qualcomm.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 16, 2015 at 07:42:12PM -0800, Daiwei Li wrote:
> Hello,
> 
> We've found that our devices can't seem to operate on certain
> frequencies (e.g. 5660MHz) being used by access points like the Apple
> Airport Extreme and Asus RT-AC68U. I did a git bisect and found that
> 31dc1c5eca29d039ac8f26340defe44bd7e497c1 removed that band amongst
> others. A more recent [1] FCC source implies that these frequencies
> should be usable with DFS.
> 
> Does anyone know the source for the commit that removed these frequencies from?

The patch came from QCA. I'm adding Jouni to the Cc. Jouni, any
comments?

> Below is a patch that adds back these frequencies:
> -------------------------------------------------------------------------------------
> wireless-regdb: Add back regulatory rules for US
> 
> The FCC approved UNII devices operating in the
> 5470 - 5725MHz range with radar detection and DFS
> capabilities. See the [1] source for details.
> 
> [1] https://apps.fcc.gov/oetcf/kdb/forms/FTSSearchResultPage.cfm?id=41732&switch=P
> 
> Signed-off-by: Daiwei Li <daiweili@suitabletech.com>

This looks reasonable based on the documentation you linked to. I'm not
certain about the EIRP values, but that's at least consistent with what
was there before (i.e. they match the EIRP for the first DFS frequency
range).

I'm going to wait a bit to see if anyone has any comments about the
patch, and if no one objects I'll apply it.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

