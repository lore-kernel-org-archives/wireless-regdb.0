Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from iron1.routit.net ([2a02:22a0:0:1:2::2])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJKFS-00058T-NO
 for wireless-regdb@lists.infradead.org; Fri, 28 Feb 2014 10:00:55 +0000
Resent-To: wireless-regdb@lists.infradead.org
Resent-Message-ID: <53105CF8.1050600@raritan.com>
Message-ID: <530F6027.9010608@raritan.com>
Date: Thu, 27 Feb 2014 16:56:23 +0100
From: Ronald Wahl <ronald.wahl@raritan.com>
MIME-Version: 1.0
Subject: [wireless-regdb] differing world regulary domain (linux kernel
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
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

on "Thu May 16 17:06:52 EDT 2013" Johannes Berg posted a message on that 
list with the subject "[PATCH] regulatory: enable channels 52-64 and 
100-144 for world roaming" which has been later applied to the kernel 
but not in the official regdb. Now the sitiuation is this that the 
built-in world regulatory domain has a greater frequency range than the 
world regulatory domain installed by crda (albeit for passive scanning 
only). Unfortunately the built-in is not used when crda is installed. 
I'm very much interested in getting this change into the official regdb 
as it allows finding and accessing wireless networks with unprovisioned 
wireless devices that are otherwise not detected. Is there any reason 
why the additional channels cannot be added for regdomain 00 in the 
official regdb?

thx,
ron

PS: Please keep me in Cc:!

-- 
Ronald Wahl - ronald.wahl@raritan.com - Phone +49 375271349-0 Fax -99
Raritan Deutschland GmbH, Kornmarkt 7, 08056 Zwickau, Germany
USt-IdNr. DE813094160, Steuer-Nr. 227/117/01749
Amtsgericht Chemnitz HRB 23605
Geschäftsführung: Stuart Hopper, Ralf Ploenes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
