Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1Wi3Zl-0004tR-Lw for
 wireless-regdb@lists.infradead.org; Wed, 07 May 2014 15:16:06 +0000
Date: Wed, 7 May 2014 11:00:33 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140507150032.GB20432@tuxdriver.com>
References: <1399410383.17354.50.camel@snkws.hfg-karlsruhe.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399410383.17354.50.camel@snkws.hfg-karlsruhe.de>
Subject: Re: [wireless-regdb] commit
 e56cd9618e3e5bf8ff96b799544b85170e34d9c3 erroneously removed channel flags
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
To: Christian =?iso-8859-1?Q?S=FCnkenberg?= <christian.suenkenberg@hfg-karlsruhe.de>
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 06, 2014 at 11:06:23PM +0200, Christian S=FCnkenberg wrote:
> Hi,
>=20
> commit e56cd9618e3e5bf8ff96b799544b85170e34d9c3 (wireless-regdb: remove
> antenna gain) stripped all channel definitions with multiple flags down
> to a single flag, e.g.:
> - (2474 - 2494 @ 20), (3, 20), NO-IR, NO-OFDM
> + (2474 - 2494 @ 20), (20), NO-IR
>=20
> This was most certainly unintended.
>=20
> Thanks,
> Christian S=FCnkenberg
>=20

It looks like you are correct.  I'll post a patch to correct that...

John
--=20
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

