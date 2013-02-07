Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3NlV-0005rH-In
 for wireless-regdb@lists.infradead.org; Thu, 07 Feb 2013 09:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1360227280; x=1391763280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VhCHAWeDaWNlscWZRaeJ56wBxopUCfgkAGjdUUpG4nU=;
 b=Iam5VzivqYUje4ZPDFoA0SkzuksE7Opj4h2qKgz54Ot0B5lYp7SbUU6m
 qpBSScgRr2Po0/32L7+59Fn13OVUTcyhzbFVcRUcsu4eK9Ee7VjBIfMLJ
 uWRMnReISr3Zeq1n+1v6g9N3zZYtfMpb9uQY3E68Pdw++NAMfDvIOQFRp 0=;
From: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Date: Thu, 7 Feb 2013 11:27:28 +0200
Message-ID: <4125342.NcrOy0nJDp@lx-vladimir>
In-Reply-To: <20130206183940.GG2148@tuxdriver.com>
References: <8774585.BvFN3Opv12@lx-vladimir> <2028055.RB8DPWJWyd@lx-vladimir>
 <20130206183940.GG2148@tuxdriver.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: add regulatory
 rule for ETSI members on 60gHz band
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, robertbasic.com@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

On Wednesday, February 06, 2013 01:39:41 PM John W. Linville wrote:
> On Mon, Dec 10, 2012 at 05:48:24PM +0200, Vladimir Kondratiev wrote:
> > 
> > For the 60GHz band, regulation defined in the "Etsi En 302 567"
> > http://docsfiles.com/pdf_final_draft_etsi_en_302_567.html
> > 
> > It defines for the frequency range 57 GHz to 66 GHz,
> > Max. power level (EIRP) for
> > indoor only: 40 dBm, and indoor/outdoor: 25 dBm
> > Also, there is spectral power density limit
> > 13 dBm/MHz for indoor and -2 dBm/MHz indoor/outdoor
> > 
> > Only indoor part specified, as kernel can't use multiple
> > rules per frequency at the moment. Also, standard do not set bandwidth limitation;
> > for purpose of 802.11ad this patch specifies bandwidth 2160 MHz,
> > in this case gross EIRP limit applies. Frequency limits also set accordingly
> > to the 802.11ad channel allocation.
> > 
> > This patch apply this to the full ETSI member countries:
> > 
> > The EU member states:
> > Austria, Belgium, Bulgaria, Cyprus, Czech Republic, Denmark,
> > Estonia, Finland, France, Germany, Greece, Hungary, Ireland,
> > Italy, Latvia, Lithuania, Luxembourg, Malta, Netherlands,
> > Poland, Portugal, Romania, Slovakia, Slovenia, Spain, Sweden,
> > United Kingdom
> > 
> > plus:
> > Andorra, Iceland, Norway, Switzerland, Croatia,
> > Bosnia and Herzegovina, Serbia, Macedonia,
> > Ukraine, Turkey, Georgia
> > 
<snip>
> > +
> > +country RS:
> > +        # 60 gHz band channels 1-4, ref: Etsi En 302 567
> > +        (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
> >  
> >  country RU:
> >  	(2402 - 2482 @ 40), (N/A, 20)
> 
> Is this really the correct rule for RS (Serbia)?  Only 60 GHz is allowed there?

Sure it is not! Problem is, entry for Serbia was not exist in original db.txt

I added 60G data as per regulatory document; but then missed data
for 2.4/5 bands leads to this problem...

By the way, same problem is for AD (Andorra)

Correct solution would be, as you mentioned below, to add data for Serbia.
I'm not sure what is correct rule set.
Most of ETSI countries (but not all!) have rule set like this:

country AT: DFS-ETSI
	(2402 - 2482 @ 40), (N/A, 20)
	(5170 - 5250 @ 40), (N/A, 20)
	(5250 - 5330 @ 40), (N/A, 20), DFS
	(5490 - 5710 @ 40), (N/A, 27), DFS
        # 60 gHz band channels 1-4, ref: Etsi En 302 567
        (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

I am not sure we can apply this for Andorra and Serbia since I see exceptions -
some ETSI countries have different rules. See BG, CZ, DE, GE, NL, TR, UA.

> 
> The bug reporter here seems to disagree...
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=908267
> 
> What should the rules really be for Serbia?
> 
> John
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

