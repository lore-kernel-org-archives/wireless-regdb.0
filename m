Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-f169.google.com ([209.85.213.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgayW-0007kg-5D
 for wireless-regdb@lists.infradead.org; Mon, 28 Sep 2015 16:08:24 +0000
Received: by igbni9 with SMTP id ni9so53504729igb.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 28 Sep 2015 09:08:01 -0700 (PDT)
Date: Mon, 28 Sep 2015 11:07:41 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150928160741.GA25936@ubuntu-hedt>
References: <9BEBB87E-EA6D-4219-ADC5-40C1E19DA5DA@excors.net>
 <1443426260.2401.2.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443426260.2401.2.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 South Africa (ZA) on 5GHz
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
To: Johannes Berg <johannes@sipsolutions.net>, Karl =?utf-8?Q?M=C3=B6ller?= <karl@excors.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Sep 28, 2015 at 09:44:20AM +0200, Johannes Berg wrote:
> 
> > The bands don’t quite match up and DFS/TPC is (apparently) not 
> > required for 5470 - 5725. More importantly, the max transmitted power
> > seems to be 1W/30dBm e.i.r.p and not 27dBm.
> 
> Without checking now, just a note: we sometimes have lower limits here
> due to spectral power density, indoor/outdoor or TPC requirements.

One of the documents says that the TPC requirement for that range was
lifted in March 2015, so if it was lowered for TPC then we may be able
to bump it up to 30 dBm.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
