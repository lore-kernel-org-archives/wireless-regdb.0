Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-it0-f49.google.com ([209.85.214.49])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1caojm-0005en-JI
 for wireless-regdb@lists.infradead.org; Mon, 06 Feb 2017 19:14:08 +0000
Received: by mail-it0-f49.google.com with SMTP id r185so63905629ita.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Feb 2017 11:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=9A35nc9y5CAvA0PIljLy1ARj94D6sETG7L505dMX6ts=;
 b=cq6Z1HYaKMRQLxv3GdrX7XhL7x5cKnpDPh3ZarhrA3XR13GkJ/dXy5fpGlGrad29fV
 897DS+5GnCFKjiXr4AfiIXgjV9qIuXDC/IoTCkBSbSRUf9XRRjRXXzr3YuA9+hpTN0gV
 +hUNMi7KCuyQjSTTKZqHu49m54kV97Sw1ZUJ1NZvupN9YFzEjVV0HYrh+yBdDFJ/u3gl
 ZOxdMnGL34Y26Jz9kLkjfteqBbBdmL+4v16jjeTGFw/qhlIiRzn35jvf7xhUutsFVw8R
 ZZz4gnGPwj+iI/COXU2ZQqQgFVkafSc95bxbAi8w4IBn7i0nFf/XdCMaBuIabffJgoyf PfcA==
MIME-Version: 1.0
In-Reply-To: <CAPw1JcdLDkW9xEUfh-764kuC643DAJ+qWNf4RxmoyUXbpc-D5w@mail.gmail.com>
References: 
	 <CAPw1JcdLDkW9xEUfh-764kuC643DAJ+qWNf4RxmoyUXbpc-D5w@mail.gmail.com>
From: cory novak <cory.novak@gmail.com>
Date: Mon, 6 Feb 2017 11:12:45 -0800
Message-ID: <CAPw1Jcfg3r9ezm2b9cpXfouxzjPY1hDnWYO4J6Gm8yf6xWKweg@mail.gmail.com>
Subject: [wireless-regdb] Fwd: possible mismatch Canadian regulatory info
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

(sorry if this is a duplicate, got a 'we don't accept html mails' error back)
---------- Forwarded message ----------
From: cory novak <cory.novak@gmail.com>
Date: Mon, Feb 6, 2017 at 11:07 AM
Subject: possible mismatch Canadian regulatory info
To: wireless-regdb@lists.infradead.org


I really tried to use alternate mediums before bothering this list
with info that appears to me to be mismatched, but, could easily
simply be a result of my lack of knowledge.  Here's my info:


Canada values from this source:
http://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD

For Canada (5170 - 5250 is where I'm focusing):

country CA: DFS-FCC
(2402 - 2472 @ 40), (30)
(5170 - 5250 @ 80), (17), AUTO-BW
(5250 - 5330 @ 80), (24), DFS, AUTO-BW
(5490 - 5600 @ 80), (24), DFS
(5650 - 5730 @ 80), (24), DFS
(5735 - 5835 @ 80), (30)

*SEEM* to differ to my completely amateur eye vs industry canada
section 6.2 here:
http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2

This is the applicable text for that band:

"The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10B, dBm,
whichever power is less. B is the 99% emission bandwidth in megahertz.
The e.i.r.p. spectral density shall not exceed 10 dBm in any 1.0 MHz
band."

An easier source to parse for the IC data :
http://www.semfionetworks.com/blog/industry-canada-new-5ghz-band-regulations

This is the output from my Archer C2600:    * 5180 MHz [36] (17.0 dBm)
                        * 5200 MHz [40] (17.0 dBm)
                        * 5220 MHz [44] (17.0 dBm)
                        * 5240 MHz [48] (17.0 dBm)


It appears that the 5170-5250 band is way under spec at 17dbm instead of 23dbm.


thanks

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

