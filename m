Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WupLr-0002Sz-Jq
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 20:42:33 +0000
Date: Wed, 11 Jun 2014 22:42:07 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20140611204207.GD6042@wotan.suse.de>
References: <20140519185046.GH7650@tuxdriver.com>
 <CALhHN=pEo5H4AnWpOAhPs8LyK35wyhGJyvHTrh12nauQ-tOpDg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALhHN=pEo5H4AnWpOAhPs8LyK35wyhGJyvHTrh12nauQ-tOpDg@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2014-05-19
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless@vger.kernel.org, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 11, 2014 at 09:15:19PM +0200, Janusz Dziedzic wrote:
> On 19 May 2014 20:50, John W. Linville <linville@tuxdriver.com> wrote:
> > A new release of wireless-regdb (master-2014-05-19) is available at:
> >
> > http://www.kernel.org/pub/software/network/wireless-regdb/wireless-regd=
b-2014.05.19.tar.gz
> >
> > Here is the short log of the changes included since the 2013-11-27
> > release:
> >
> > Bj=F8rn Mork (1):
> >       wireless-regdb: update NO's regulatory rules
> >
> > Janusz Dziedzic (3):
> >       wireless-regdb: allow max bandwidth to be AUTO calculated
> >       wireless-regdb: set AUTO bandwidth for world regulatory
> This two above should not be merged. That was first version of auto
> bandwidth calculation, we skip :)

How about on CRDA? Can you check if I merged the wrong stuff as I already
pushed as well? This also currently breaks the parses are there is no
support for the auto stuff yet.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

