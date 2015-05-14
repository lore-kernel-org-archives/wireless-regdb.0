Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yt0Lc-00071S-UV
 for wireless-regdb@lists.infradead.org; Thu, 14 May 2015 21:07:17 +0000
Received: by wgin8 with SMTP id n8so89220436wgi.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 14 May 2015 14:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-type:mime-version:content-transfer-encoding;
 bh=lr+cBfRlv++kzQXRYMqnw4oyD24HKunauTRoe1aZaBU=;
 b=I6KH7RQiwDMav9xz48foJGw7ecCRCljspjIktE0PZkYkm4TYamvMLD0AKWf1YpP08b
 zEdo9kMJi9oaoiOp2t/HgZVQewLvynDI8JqYjZtnqvWfHNQnhioeTO5HRhJcQ64X4yqo
 PEOypnLw+/cGme/Nlbpn5YNur19Was+/osh7cebsGRMP2ai8k8FsHc9pUpum+tM5EV1q
 CTGrcV4TgBeZYMkUd9HTX2k4wTPbjz6J+7NxnwbW6bvj0wy4vuWrXWGl+aZBi1agk2AC
 e/hBfTGNS/1yPZmKtrjpr5G/XwpZN3sHRO9wzQHGKGVMwHOrg7Qf+wBXadttKKnovClh AM9A==
Message-ID: <1431637612.7419.33.camel@gmail.com>
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Fri, 15 May 2015 00:06:52 +0300
In-Reply-To: <20150514175649.GB29739@ubuntu-hedt>
References: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
 <20150514175649.GB29739@ubuntu-hedt>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update BG rules for
 5725 - 5875 mHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello Seth,

Sorry for not including a translation. Here are the relevant parts of
the Bulgarian documents and their rough translations:

[1] LIST OF THE RADIO DEVICES THAT USE HARMONISED WITHIN THE CONFINES
OF THE EU RADIO FREQUENCY BANDS, AND THE ELECTRONIC COMMUNICATIONS
TERMINAL EQUIPMENT


---- Page 2:
43. Non-specific devices with short range of action - 5725 - 5875 MHz


---- Page 44:
43. Non-specific devices with short range of action:

...
7. Transmit power / power density: 25 mW e.i.r.p.
...
13. References: Harmonized standards: БДС EN 300 440-2, БДС EN 300
    674-2-2. Decision of the European commission 2006/77/EO
...
15. Note: This category encompasses all types of radio devices 
    independently of their application or purpose that comply with the
    technical requirements determined for the specified frequency band.
    They are mostly used for ..., transmission of general data, and
    others.
----

[2] RULES FOR CARRYING OUT ELECTRONIC MESSAGES THROUGH RADIO DEVICES
THAT USE THE RADIO FREQUENCY SPECTRE THAT IS NOT NECESSARY TO BE
INDIVIDUALLY DEFINED /* as in assigned to a specific person */

---- Page 1
Section I

Article 2. (1) Electronic messages for personal needs through radio
devices that use radio frequency spectre that that is not necessary to
be individually defined, can be carried out freely.

           (2) Public electronic messages by the means of radio devices
that make use of the radio frequency spectre that is not necessary to
be individually defined, can be carried out after submitting a
notification to the Communications Regulation Commission.


---- Page 2
Section II
...

Article 11. (1) Electronic messages under article 2 are carried out by
the means of the following radio devices:
        1. Short range radio devices.
        ...
----


About the EU standards, 300 440-1 seems to NOT be harmonized (I found
the e.i.r.p. in it) and 300 440-2 is listed as harmonized (it lists the
frequency band).

Reference:
http://webapp.etsi.org/workprogram/Report_WorkItem.asp?WKI_ID=33512
http://webapp.etsi.org/workprogram/Report_WorkItem.asp?WKI_ID=33513

Cheers,
Petko

On чт, 2015-05-14 at 12:56 -0500, Seth Forshee wrote:
> On Fri, May 08, 2015 at 02:36:05AM +0300, Petko Bordjukov wrote:
> > The ETSI EN 300 440-1 and EN 300 440-2 standards mandate the use of 
> > the
> > 5725mHz - 5875mHz band as follows:
> > 
> > Application - Generic use
> > Maximum Radiated Power - 25mW
> > 
> > The Bulgarian Communications Regulations Commission has made the
> > decision to harmonise its regulations for this band with the EU
> > regulations [1], [2].
> > 
> > Based on this data, introduce the 5725mHz - 5875mHz band for the BG
> > regulatory domain.
> > 
> > [1] http://crc.bg/files/_bg/Spisak_2015.pdf
> > [2] http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
> > 
> > Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>
> 
> What I find odd here is that none of the other EU contries in the
> database that I looked at include this range. Based on the google
> translation of [1] above (I can't find any reference to this range 
> for
> SRDs in [2] above) and the ETSI standards it references it looks like 
> it
> should be okay. So I'm not sure whether I'm missing something or 
> those
> countries have additional rules against that range, or if other EU
> contries could be updated similarly.
> 
> I'm going to leave this on the list for a bit longer to see if 
> someone
> with more expertise can provide clarity about this range in the EU.
> 
> > ---
> >  db.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/db.txt b/db.txt
> > index ad2acf5..daa84f9 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -141,6 +141,12 @@ country BG: DFS-ETSI
> >     (5170 - 5250 @ 80), (20), AUTO-BW
> >     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >     (5490 - 5710 @ 160), (27), DFS
> > +        # 5 gHz Short Range Devices, ref:
> > +        # Etsi EN 300 440-1
> > +        # Etsi EN 300 440-2
> > +        # http://crc.bg/files/_bg/Spisak_2015.pdf
> > +        # http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
> > +        (5725 - 5875 @ 80), (14)
> 
> Please use a tab to indent rather than spaces.
> 
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
