Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwJaA-0004Ey-2h
 for wireless-regdb@lists.infradead.org; Fri, 18 Jan 2013 21:34:39 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1TwJZ2-0004I3-RQ
 for wireless-regdb@lists.infradead.org; Fri, 18 Jan 2013 22:33:29 +0100
Message-ID: <1358544834.7922.30.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 18 Jan 2013 22:33:54 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [Fwd: [ANN] crda: v1.1.3]
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

-------- Forwarded Message --------
> From: wireless@sipsolutions.net
> To: linux-wireless@vger.kernel.org
> Subject: [ANN] crda: v1.1.3
> Date: Fri, 18 Jan 2013 21:44:01 +0100
> 
> A new release of crda (v1.1.3) is available at:
> 
> http://wireless.kernel.org/download/crda/crda-1.1.3.tar.bz2
> 
> SHA1 sum: 6e0adbfc0f5418a03d7d708bd39d52cd1325b511
> 
> Here is the short log of the changes (since v1.1.2)
> included in this release:
> 
> Luis R. Rodriguez (15):
>       crda: synch up nl80211.h
>       crda: fix null string assumption for alpha2
>       crda: add support to send DFS master region
>       crda: use stdint.h instead of linux/types.h
>       crda: move country2rd() and its helper to reglib.c
>       crda: add a reglib iterator reglib_for_each_country()
>       crda: make intersect.c use reglib_for_each_country()
>       crda: close fd upon leaving
>       crda: add new reglib_get_country_alpha2()
>       crda: add dfs_region to the ieee80211_regdomain data structure
>       crda: make crda use reglib_get_country_alpha2()
>       crda: clean header files
>       crda: make country2rd() static
>       crda: make usage of regdb.h exclusive to reglib.c
>       crda: rename reglib_get_*() routines
> 
> Stefan Lippers-Hollmann (1):
>       crda: add nested support for libnl-3.2
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

