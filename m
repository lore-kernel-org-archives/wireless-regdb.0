Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZnBYU-0000bE-7F
 for wireless-regdb@lists.infradead.org; Fri, 16 Oct 2015 20:24:47 +0000
Message-ID: <1445027060.2370.25.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 16 Oct 2015 22:24:20 +0200
In-Reply-To: <87h9lqeplf.fsf@steelpick.2x.cz>
References: <1444994885-21825-1-git-send-email-kaisrja1@fel.cvut.cz>
 <1444997197.2370.22.camel@sipsolutions.net>
 <87h9lqeplf.fsf@steelpick.2x.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [RFC PATCH 1/2] cfg80211: Add support for
	ITS-G5 band (5.9 GHz)
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
To: Michal Sojka <sojkam1@fel.cvut.cz>, Jan Kaisrlik <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org
Cc: jan-niklas.meier@volkswagen.de, linux-wireless@vger.kernel.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

> I thought that the regdb is for unlicensed bands with unrestricted use.
> The 5.9 GHz band is not licensed but it is restricted for ITS
> applications. 

It kind of is, at least the current one is.

> In http://marc.info/?l=linux-wireless&m=140183393707445&w=2
> Luis Rodriguez suggested that having a Kconfig option may be the way to
> go, but we may misread what he was saying.

I didn't really follow this.

> I assume that if this band will be in regdb, it will be too easy to use
> this band (e.g. by mistake) for non-ITS applications.

Does the *regulatory* actually prohibit that anyway though?

> Our goal is to make it easier for people to experiment with ITS in
> controlled environment (e.g. in a university lab). So you suggest that
> this should be enabled by providing custom regdb rather than recompiling
> the kernel with CFG80211_CERTIFICATION_ONUS?

Yes, that was exactly my thought.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

