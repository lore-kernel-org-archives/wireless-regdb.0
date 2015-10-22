Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpHML-0005Pw-Qr
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 15:00:54 +0000
Received: by iodv82 with SMTP id v82so93799794iod.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 08:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical_com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=uAhTG6U+wHKAfMRiSKOvhfZVlg41WHTj2PKHHkqJxww=;
 b=Llh3Hn8NLjwLlmj/+yYhqDLWheZ7bO0wrDowaawebOp6p24RkRUVfTnQd+LbKs4/lf
 FAQ+cxFIeZHOmOFhSL7CQ4jQaVeqP9UQsrIywPRhGyGaFJSw5p7QGuN1TNSJQwPBY1vl
 jn6X4yXvedCDsb4zVIuYu1cNgXZ8Oj3LkacXxmo7zXhaXn/ZDg03EGlK8jKe/is3lZ7f
 XCPJjayqhLgpqQQR05CLmJykrErjsrwFsyHraiR2b8g42HRDHk9Gyv+VAW7+hHXnucbC
 blmmfy1g4qHr5ztP0c4ocarlPJdQQ+sHU7ARNTun6PoGFBfQqt8fHH5ropeyEz9gkCh9
 7ZLA==
Date: Thu, 22 Oct 2015 10:00:09 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151022150009.GA116932@ubuntu-hedt>
References: <1444761084-4399-1-git-send-email-andrej.vlasic0@gmail.com>
 <20151015180408.GA31612@ubuntu-hedt>
 <CAAudh+8q-7-Wz5B5hZ+hePJ-7=QNbbpVoc7Xpf4jsmKBqvkXfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAudh+8q-7-Wz5B5hZ+hePJ-7=QNbbpVoc7Xpf4jsmKBqvkXfQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
	rules for Croatia (HR)
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
To: Andrej =?utf-8?B?VmxhxaFpxIc=?= <andrej.vlasic0@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Oct 18, 2015 at 09:44:19PM +0200, Andrej Vlašić wrote:
> On 15 October 2015 at 20:04, Seth Forshee <seth.forshee@canonical.com> wrote:
> > On Tue, Oct 13, 2015 at 08:31:24PM +0200, Andrej Vlasic wrote:
> >> Update frequency allocation rules to mach data from table [1].
> >>
> >> Also increase allowed power limit for range 5150-5250 Mhz to 200mW.
> >>
> >> [1] http://tablice.hakom.hr:8280/vis?lang=en
> >>
> >> Signed-off-by: Andrej Vlasic <andrej.vlasic0@gmail.com>
> >> ---
> >>  db.txt | 14 ++++++++++----
> >>  1 file changed, 10 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/db.txt b/db.txt
> >> index d57ea84..3b36616 100644
> >> --- a/db.txt
> >> +++ b/db.txt
> >> @@ -504,11 +504,17 @@ country HN: DFS-FCC
> >>       (5490 - 5730 @ 160), (24), DFS
> >>       (5735 - 5835 @ 80), (30)
> >>
> >> +# Data from table of frequency allocations: http://tablice.hakom.hr:8280/vis?lang=en
> >> +# For 5ghz range see http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85.pdf
> >> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86.pdf
> >> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_87.pdf
> >> +# TPC devices on range 5250-5350 can use 200mW, and 1W on range 5470-5725.
> >> +
> >>  country HR: DFS-ETSI
> >> -     (2402 - 2482 @ 40), (20)
> >> -     (5170 - 5250 @ 80), (20), AUTO-BW
> >> -     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >> -     (5490 - 5710 @ 160), (27), DFS
> >> +     (2400 - 2483.5 @ 40), (100 mW)
> >> +     (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> >> +     (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> >> +     (5470 - 5725 @ 160), (500 mW), DFS
> >>       # 60 gHz band channels 1-4, ref: Etsi En 302 567
> >>       (57000 - 66000 @ 2160), (40)
> >
> > In general the changes look okay to me and in line with the published
> > regulations (I couldn't read some of the documents you linked to, but
> > the limits do look to be in line with ERC/DEC/(01)07 and ECC/DEC/(04)08
> > which are referenced by the frequency allocation table).
> >
> > It seems pretty arbitrary to change from dBm to mW however, especially
> > for those rules whose power limit isn't actually changing. I'd prefer we
> > leave them in dBm for consistency, in which case I think we end up with:
> >
> > country HR: DFS-ETSI
> >         (2400 - 2483.5 @ 40), (20)
> >         (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> >         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> >         (5470 - 5725 @ 160), (27), DFS
> >         # 60 gHz band channels 1-4, ref: Etsi En 302 567
> >         (57000 - 66000 @ 2160), (40)
> >
> > If that looks fine to you then I can fix it up when I apply the patch.
> 
> It's fine with me too like that.

Applied with the discussed changes. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
