Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp-out04.msg.oleane.net ([62.161.7.2])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YbC64-0002KE-Nk
 for wireless-regdb@lists.infradead.org; Thu, 26 Mar 2015 18:01:38 +0000
Received: from smtp06.msg.oleane.net (smtp06.mail.priv [172.17.20.115]) 
 by smtp-out04.msg.oleane.net with ESMTP id t2QHe2Ad021561
 for <wireless-regdb@lists.infradead.org>; Thu, 26 Mar 2015 18:40:03 +0100
Received: from acksys.fr ([195.6.104.67]) (authenticated)
 by smtp06.msg.oleane.net (MTA) with ESMTP id t2QHD0fp023726
 for <wireless-regdb@lists.infradead.org>; Thu, 26 Mar 2015 18:13:01 +0100
Content-class: urn:content-classes:message
Date: Thu, 26 Mar 2015 18:19:02 +0100
Message-ID: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
MIME-Version: 1.0
From: "Jean-Pierre TOSONI" <jp.tosoni@acksys.fr>
Subject: [wireless-regdb] CAC time syntax in regdb.txt
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi list,

I saw that the library in crda was updated to handle the CAC time.
AFAICT the format is
      (freq - freq @ bw), (eirp [mW]), [(CACtime)] [flags...]

but the conversion of the database from text format to bin format is
still using a python script that crashes with this format.
I used the
https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git
repo.

Is there an updated python script out there? Or a replacement tool? Or
am I missing a something?

Thanks

Jean-Pierre Tosoni

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

