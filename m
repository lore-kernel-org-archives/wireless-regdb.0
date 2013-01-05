Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ia0-f173.google.com ([209.85.210.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TrNeW-0001Bb-Hg
 for wireless-regdb@lists.infradead.org; Sat, 05 Jan 2013 06:54:45 +0000
Received: by mail-ia0-f173.google.com with SMTP id w21so14525911iac.32 for
 <wireless-regdb@lists.infradead.org>; Fri, 04 Jan 2013 22:54:42 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 5 Jan 2013 19:54:42 +1300
Message-ID: <CAOE46e7Bg=7ow33GAr0R-Zd1SCzR31ukVZ3fyb2y6LV6w=1tJw@mail.gmail.com>
From: Dean Armstrong <dean.armstrong@virscient.com>
Subject: [wireless-regdb] Understanding power rules where a max antenna
 gain is specified
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

Hello All,

I'm trying to understand the Linux wireless regulatory framework but
am having trouble figuring out how the regulatory database is derived
from the actual regulations. I think I've read the relevant
documentation, and have been looking at various bits of source code,
but I am still at a loss and was hoping that someone might be generous
enough to answer a question or two on how it is all supposed to work.

In particular, I am looking at the version of db.txt that is visible
at [1] (this being the head of that branch as I write). For the
example I want to query I'm contemplating the following two lines
(and, specifically, the power rule - "(3, 27)" on the second line).

country US: DFS-FCC
	(2402 - 2472 @ 40), (3, 27)

After reading [2], I interpret this rule as defining an EIRP limit of
27 dBm and a "maximum antenna gain" of 3 dBi.

The confusion I have is over how this reconciles with the actual FCC
regulations for this band. The concise description at [3] tallies with
my understanding (but, of course, this may be where I'm mistaken), and
I paraphrase it thus for non-"fixed point-to-point links" (which, I
assume, is what we are talking about):

 - Total Power Output (TPO) limit of 30 dBm
 - Effective Isotropic Radiated Power (EIRP) limit of 36 dBm

The first point of confusion for me is the "maximum antenna gain"
number in the regulatory database (the "3" in "(3, 27)"). I wasn't
aware that FCC imposed an explicit limit on the gain of antennas used
in this band (and certainly not a limit of 3 dBi as db.txt suggests),
so I don't understand why this is named what it is in the
documentation. I'm therefore left wondering whether the "maximum
antenna gain" number (where) specified in db.txt is actually giving a
conversion from the EIRP limit given, to a TPO limit.

If this were true it would make some sense to me, but even if I assume
this the numbers still don't reconcile with FCC. Basically, given the
30 dBm TPO limit and 36 dBm EIRP limit of FCC for 2.4-2.5 GHz ISM, I
would have expected to see a rule like:

country US: DFS-FCC
        (2402 - 2472 @ 40), (6, 36)

i.e., a 36 dBm EIRP limit, with TPO limit 6 dB below this.

Obviously I am grossly misunderstanding something and I would very
much appreciate it if someone on this list could enlighten me.

Many thanks,
Dean.

References
---
[1] http://git.kernel.org/?p=linux/kernel/git/linville/wireless-regdb.git;a=blob_plain;f=db.txt;hb=1e7bf666e34e30e13238879ee76b58449be2f9fd
[2] http://wireless.kernel.org/en/developers/Regulatory/processing_rules
[3] http://www.afar.net/tutorials/fcc-rules/

-- 
Dean Armstrong | Virscient Limited | www.virscient.com

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

