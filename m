Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzErH-0004KN-Cp
 for wireless-regdb@lists.infradead.org; Tue, 24 Jun 2014 00:45:12 +0000
Received: by mail-pd0-f174.google.com with SMTP id y10so6301010pdj.33 for
 <wireless-regdb@lists.infradead.org>; Mon, 23 Jun 2014 17:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=1Fbw8ayUqIdfHs15knxCy0Mod5LwVGapJqEF0IAyD4U=;
 b=AZ4VylyzZ8Q6B42qIAqwgbNC2Q2FFnCRCU04Cjz39qQ2bqbPs2faH4lQR5UHfWccWB
 BuqM78pftf+lewPLBu/Zk9awI4CxVnrMBbnLC1QhXMNRqmClNEQvfMLkvtzOJOo8YyhI
 DqRfIiNoDdBMXD09OPdKxhyGbJnPhfi52q8A/K3d7vRkmQnbOn5eSxuXvIlIgA/Y4wUV
 ys5VNVA+v+LKp7dmkMw6rX9H2SCr3GOQ+GRwNR0klyUVFCDLCLpxkqVuqMdSNe5o+07L
 wCOBncLBtTBBiMTYuDUcG80PtvBSIdg5yKwlwhCFRtHyM0PZPG4emQmbfeoA6sC+lkNx v4mQ==
Date: Mon, 23 Jun 2014 17:44:43 -0700
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140624004442.GH1390@garbanzo.do-not-panic.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <20140623205451.GG1390@garbanzo.do-not-panic.com>
 <53A89A0F.9090509@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53A89A0F.9090509@candelatech.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
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
To: Ben Greear <greearb@candelatech.com>
Cc: wireless-regdb@lists.infradead.org, kvalo@qca.qualcomm.com, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jun 23, 2014 at 02:20:15PM -0700, Ben Greear wrote:
> On 06/23/2014 01:54 PM, Luis R. Rodriguez wrote:
> > On Mon, Jun 23, 2014 at 01:37:37PM -0700, Ben Greear wrote:
> >> On 06/23/2014 12:15 PM, Luis R. Rodriguez wrote:
> >>>
> >>> Adding wireless-regdb.
> >>>
> >>> Regulatory folks:
> >>>
> >>> if two cards are present on a system, in the worst case consider
> >>> two different cards for AP mode, and one has a DFS region set for the
> >>> country its on but the other does not, do we want to use the DFS region
> >>> for both? DFS would not be allowed on system unless the DFS region is
> >>> set. DFS operation requires a card to explicitly support DFS though so
> >>> even though it can be set as an intersection each card would still
> >>> require DFS suport for that region.
> >>>
> >>> As I see it this will depend on what we want cards to do if the DFS
> >>> region is unknown for a region. If the DFS region is not known can
> >>> we use any DFS algorithm? If we cannot then I think a DFS intersection
> >>> would require agreement on the DFS region. That would also mean though
> >>> that when shipping products if a system is built with one card that has
> >>> DFS for ETSI for example, and then a secondary card is present and its
> >>> regulatory domain does not have DFS then the first card would not be
> >>> able to operate on the DFS. I think this is reasonable given that 
> >>> the two cards must at least agree on the regulatory domain, otherwise
> >>> the folks doing system integration probably did a bad job at thinking
> >>> of things ahead of time. Even though this can be technically true I
> >>> foresee folks this misconfiguration happening in the future and folks
> >>> beingp puzzled by this as an issue. This means this should be documented
> >>> for folks selling devices in a combined wifi system.
> >>
> >> Maybe some stuff should be per-NIC instead of per OS instance.  It would
> >> suck if adding some ancient USB wifi NIC to a system disabled shiny new
> >> features on already-existing NICs.
> > 
> > That indeed is a good example corner case that is needs to be thought of
> > here. Say a system is designed that is DFS certified for DFS-ETSI and
> > then someone plugs in a card that had a regulatory domain for a a
> > country where the DFS region is not known -- what should we do with the
> > system in terms of DFS support? Disable DFS ? Or force the DFS-ETSI for
> > both devices? The safe thing IMHO is to disable DFS and ensure folks
> > are aware of this, and to help add a print to the system logs to ensure
> > its understood what just happened.
> 
> Why not let the DFS-ETSI NIC do DFS-ETSI, and let the other one not do
> DFS at all?

That would entail not intersecting but we do interesection so we need
to pick a suitable intersection algorithm. So since we are intersecting
we need to pick something, since not having a DFS region means not
allowing DFS the intersection currently does not allow DFS. Note that
the issue you originally reported is different though -- the world
regulatory domain does have no DFS region set so if the user did
request a regulatory change to a specific country that DFS region
should be used. A fix for that is addressed in another thread. Let's
keep this thread to address the case where an intersection is
required between two regulatory domains, one that does have a DFS
region and one that does not.

I'll let regulatory folks chime in on what they want to do. Right
now an intersection means in the above situatio means not allowing
DFS. Since I no longer work for a silicon company the regulatory folks
are hopefully going to be a bit more vocal about these types of things.
Possibly they won't address this question until the real world situation
happens and a customer demands a fix ;)

> As soon as you get two different NICS with different regulatory domains,
> you basically should assume that the regulatory info based on those
> NICs is close to worthless, so one shouldn't be able to impede the other.

You can always do what you want with your custom systems enable ONUS
thing, ATH_REG_DYNAMIC_USER_REG_HINTS, if you're really daring
ATH_REG_DYNAMIC_USER_CERT_TESTING and go take your systems to a lab,
ceritfy and good luck. By default upstream we'll be careful.

> Maybe just use time-zone or user hints in this case since NICs cannot
> be fully trusted.

WTF no, the regulatory hint stuff should all be automated and user input
should really only come from trusted sources, see the cell base station
hint as a good example use case. The NICs are trusted as that's what
regulatory bodies like folks to do. Hell even the country IEs are only
trusted for the alpha2, the actual contents are disregarded. Regular
user input should only help compliance further, that's it.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

