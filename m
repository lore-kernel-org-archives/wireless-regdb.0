Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuB6M-0006Rb-Tm
 for wireless-regdb@lists.infradead.org; Wed, 03 Jul 2013 00:39:19 +0000
Received: by mail-la0-f50.google.com with SMTP id dy20so6153798lab.37 for
 <wireless-regdb@lists.infradead.org>; Tue, 02 Jul 2013 17:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:from:date:x-google-sender-auth:message-id
 :subject:to:content-type; bh=ssgwtStS9WGeBhBvJf6skVqHLj8fhHt3dSSArC2pHzI=;
 b=iZQimPMjeItXSMyErTGblf9x5hhenPtFthGJlTIAP5+m6m16Kn/a0H2Uqh3OmQQ1yy
 RnCgN9S5u8YCFSLNUbt433ASQZoULXg54rDk24UCzDD3/3F+8QaKeWGsf7c/bZxoUs5X
 LyszHfaoXZxMJ9aPQ1GaqejuNRJuyzZl4NEF3/SBgYw+Ncv262BR5y4VPCcIzM/D8TLK
 OsBjHjaOZ1bNQreyb4W2BO0Egl6kkC2CvUZmIwxTkRfRsIuO79ov+JO+3wIIgXbfemiy
 03FtGizMsqnsU3OfejsCi3NbvhhjUQFpMQ+9AajywJ3oFTWKozkLARjpNGhitcx/92+z 97ug==
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 2 Jul 2013 17:38:32 -0700
Message-ID: <CAB=NE6V_PKG2UBSLPRhziUDcFzFi8uOJNiNzoPNaK0oU7rmZuQ@mail.gmail.com>
Subject: [wireless-regdb] Updates to wireless-regdb review - vendor
	namespaces and VHT80
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
To: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Folks,

we have 802.11ac and 802.11ad now and I have a few pending patches
that I'd like to submit but unfortunately the requirements that we
have discussed for accepting patches do not meet the criteria we have
set in the community [0] for all the documentation. Additionally
getting all that documentation has proven quite difficult and at this
point I do not think we can easily get these upstream without making
an exception.

I'd like to propose a middle ground to also address another issue I've
noticed. Vendors can disagree and in order to give vendors a warm
fuzzy on ability to ensure their data is interpreted and provide the
ability to offload down to wireless-regdb even more interpretations
I'd like to propose the idea of embracing vendor namespaces within
wireless-regdb / crda / the kernel. The way I'd envision this is
'/sbin/crda US OUI' is passed upon a regulatory hint and in turn CRDA
will read the namespace for the OUI passed in regulatory.bin. Then at
our wireless summit kumbaya and with the development / enhancements of
intersect.c and union.c (not yet developed) we'd work on generalizing
the data. This would also allow vendors to supply their own rules
without the high bar that we are setting which so far has proven very
difficult to met.

In the meantime, while that gets developed, I'd still like to supply
patches to enable VHT80 for a few countries without hopefully such
high bar for documentation as I cannot get this information.

Let me know if this sounds reasonable.

[0] http://marc.info/?l=linux-wireless&m=128414096127554&w=2

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

