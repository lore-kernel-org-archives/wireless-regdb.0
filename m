Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=4h5UwNaU7LSW5F/yUVVFcaxSBJjJ3TMPSE2zuXrFaDE=;
 b=nkeDurzPqna1To
 8Fwxo9tlmJ2cLZFnyp8tM3GTnH1j7MC2/xa/k7OQlKnhc/b6yUhlPQXd+TWwxhLAGHcTLjRTlhWb+
 Y4uuOWi3beaGQF4HKWgc2+preFvB82R0x4ICPBTsHsEoa6nGdD5w8JhME9HenbIjkqrPyA3rCRWH8
 qb3Zp4h8QbP/PlCReBKAjAT51qPhmdCgyT+1DpeFdOpOP00OMIxQloJ9Jx01cqiA25nXypJpOBrpe
 dPg95R7sfswI53jWrG/fJm9czWe2cPRNrI4MC8ZG9SQ0/0J1Dp7pWGf9ge2w8yNSk9UAzCGQFhYAz
 KAWr6hOV2JXHSMS3Hs7g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIefo-00076d-Oc
 for wireless-regdb@lists.infradead.org; Tue, 15 May 2018 18:27:46 +0000
Received: from mail-it0-f72.google.com ([209.85.214.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fIefb-0000Mt-FD
 for wireless-regdb@lists.infradead.org; Tue, 15 May 2018 18:27:31 +0000
Received: by mail-it0-f72.google.com with SMTP id n83-v6so3381216itg.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 May 2018 11:27:31 -0700 (PDT)
Date: Tue, 15 May 2018 13:27:27 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180515182727.GC5093@ubuntu-xps13>
References: <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
 <20180330135934.GR18469@ubuntu-xps13>
 <CAD7otF5kDtQR+fddfKBwCCMqeQ4kdWRmT2dLPy6uwLOZr0RJpg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD7otF5kDtQR+fddfKBwCCMqeQ4kdWRmT2dLPy6uwLOZr0RJpg@mail.gmail.com>
Subject: Re: [wireless-regdb] Update regulatory rules for Panama (PA) on
 2.4 and 5 GHz
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
To: Michael Chen <michaelchentejada@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, May 14, 2018 at 11:50:15AM -0500, Michael Chen wrote:
> Neither TPC nor DFS are currently required in Panama. I verified this via emails
> with the relevant authority. The Eng. Rene E. Piper from Tv, Radio, and Spectrum
> Administration Department of the National Authority of Public Services (ASEP)
> has confirmed me that the current code does not require radar detection.
> 
> That being said, he has informed me that although the current code does not
> require TPC or DFS, the department is strongly considering adding the
> requirement
> on future versions of the National Plan of Frequency Allocations(PNAF).

Great, thanks.

I'm having trouble getting a good translation of the document, but it
looks like there may be some restrictions on outdoor use in sections
11.5.2 and 11.5.4. Can you help me understand what if any restrictions
apply?

Thanks,
Seth

> 
> 2018-03-30 8:59 GMT-05:00 Seth Forshee <seth.forshee@canonical.com>:
> > On Fri, Feb 16, 2018 at 02:33:25PM -0500, Michael Chen wrote:
> >> Hi,
> >>
> >> I've been researching which frequencies are allowed for WiFi in Panama since I
> >> noticed that WiFi channels 12 and 13 are currently not accesible. After some
> >> research, I found that there are a few discrepancies that can be corrected in
> >> the 2.4ghz and 5 ghz band. Furthermore, the 5470-5725 band and the 57-64 Ghz
> >> band were recently added to the regulation.
> >>
> >> Source: http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
> >>
> >> Go to article 11.5 (pages 18, 19, and 20) for the WiFi frequencies.
> >>
> >> Allowed frequencies:
> >> 2400 - 2483.5 MHz 30dbm - 36dbm EIRP (See article 11.5.1)
> >> 5150 - 5250 MHz - 1W transmission - 4W EIRP (See article 11.5.2)
> >> 5250 - 5350 MHz - .250W transmission - 1W EIRP
> >> 5470 - 5725 MHz - .250W transmission - 1W EIRP
> >> 5725 - 5850 MHz - 1W transmission - 4W EIRP
> >> 57 - 64 Ghz - 27dbm transmission - 43dbm EIRP (See article 11.5.4)
> >
> > Based on reading a translation of the document, these limits look right.
> > What I can't find is any indication of whether TPC or DFS is required in
> > any of these ranges (based on the existing rules there seems to be a
> > requirement for DFS at least). Possibly it's just not coming across in
> > the translation; could you check whether there's any information about
> > TPC or DFS, and if not see if that information is perhaps found
> > elsewhere?
> >
> > Thanks,
> > Seth
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

