Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YcUfx-000278-65
 for wireless-regdb@lists.infradead.org; Mon, 30 Mar 2015 08:04:02 +0000
Message-ID: <1427702614.26117.1.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 30 Mar 2015 10:03:34 +0200
In-Reply-To: <20150326204221.GD5622@wotan.suse.de>
References: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
 <20150326192532.GB61113@ubuntu-hedt> <20150326204221.GD5622@wotan.suse.de>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] CAC time syntax in regdb.txt
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
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Cc: Seth Forshee <seth.forshee@canonical.com>, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, wireless-regdb@lists.infradead.org, Jean-Pierre TOSONI <jp.tosoni@acksys.fr>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, 2015-03-26 at 21:42 +0100, Luis R. Rodriguez wrote:

> This would require generating two binary files and supporting that.  This was
> never done. We could also try to somehow mesh both versions together with one
> larger file that has both and try to remain compatible. That's the ideal
> solution IMHO.

Given the file format, I don't think this will be possible.

> Instead of sticking to CRDA updates to rely on this for support what we really
> need to do is mesh in CRDA support upstream into the kernel since the kernel
> now supports the cryptographic needs that CRDA had. I was planning on doing
> this during the upcoming Hackweek at SUSE but if anyone else wants to try that
> before please feel free.

And given that we want this direction anyway, I'm not sure that the
multi-file-format CRDA solution will really be economical.

For the kernel, we should probably define an extensible file format
anyway, and then just do it once.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

