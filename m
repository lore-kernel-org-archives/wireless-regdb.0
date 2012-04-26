Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNOu3-0000EC-Th
 for wireless-regdb@lists.infradead.org; Thu, 26 Apr 2012 13:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=rmanohar@qca.qualcomm.com;
 q=dns/txt; s=qcdkim; t=1335447515; x=1366983515;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xmyPDiQJr+/JZ+DBQmWj+8VQu4CdiQufNN+hNjNP1x0=;
 b=s9fEecNyPsSW1E1E6pSpZxt9cG1vSJfzHX8jq10R57bg+WqwN/mmiPZu
 Y+vY7AQ9e5zYqGhEchFuTZFO0xXmxMtOSCGxWzWEBa1aCuq7/QVIe2zzr
 7x1DjJtGGfuLe59r8/cAWgaNwVUD5JJf52YA79cXq9S/6LLMKfqRyjpvi k=;
Date: Thu, 26 Apr 2012 19:09:27 +0530
From: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Message-ID: <20120426133925.GA7741@vmraj-lnx.users.atheros.com>
References: <1335437414-3421-1-git-send-email-rmanohar@qca.qualcomm.com>
 <CAB=NE6WSaoR+n3JUrZ+XRimHxLQa2ZU3nwKO+gcGFX-=k2o1zw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6WSaoR+n3JUrZ+XRimHxLQa2ZU3nwKO+gcGFX-=k2o1zw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add Rwanda (RW)
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Cc: wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 26, 2012 at 04:36:14AM -0700, Luis R. Rodriguez wrote:
> On Thu, Apr 26, 2012 at 3:50 AM, Rajkumar Manoharan
> <rmanohar@qca.qualcomm.com> wrote:
> > Add support to country Rwanda with APL1_WORLD.
> >
> > Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
> 
> We had decided a while ago the requirements of new patches to wireless-regdb:
> 
> http://marc.info/?l=linux-wireless&m=128414096127554&w=2
> 
> This patch does not provide any regulatory data. The APL1_WORLD name
> is only an Atheros reference and provides no data for anyone to
> review.
>
Thanks for the info. Im not aware of that. Will come up with more information.

-Rajkumar

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

