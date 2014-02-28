Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJOEB-00061b-UJ
 for wireless-regdb@lists.infradead.org; Fri, 28 Feb 2014 14:15:52 +0000
Date: Fri, 28 Feb 2014 09:13:56 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140228141355.GA30876@tuxdriver.com>
References: <530F6027.9010608@raritan.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <530F6027.9010608@raritan.com>
Subject: Re: [wireless-regdb] differing world regulary domain (linux kernel
 builtin vs. crda)
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
To: Ronald Wahl <ronald.wahl@raritan.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 27, 2014 at 04:56:23PM +0100, Ronald Wahl wrote:
> Hi,
> 
> on "Thu May 16 17:06:52 EDT 2013" Johannes Berg posted a message on
> that list with the subject "[PATCH] regulatory: enable channels
> 52-64 and 100-144 for world roaming" which has been later applied to
> the kernel but not in the official regdb. Now the sitiuation is this
> that the built-in world regulatory domain has a greater frequency
> range than the world regulatory domain installed by crda (albeit for
> passive scanning only). Unfortunately the built-in is not used when
> crda is installed. I'm very much interested in getting this change
> into the official regdb as it allows finding and accessing wireless
> networks with unprovisioned wireless devices that are otherwise not
> detected. Is there any reason why the additional channels cannot be
> added for regdomain 00 in the official regdb?
> 
> thx,
> ron
> 
> PS: Please keep me in Cc:!

Someone needs to post a patch...

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

