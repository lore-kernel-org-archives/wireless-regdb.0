Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=aiTWsjxobvI/yB5TV7fkfj2DbqK6OCXBci3WSytqnwg=;
 b=CBDZJdtnOrpjFt
 ZwVfqtHcrAkgnQFMw4PQOh6IQLbUYMexKLDe+563aeocBxM9ZZoQTpSi6SbohLYnHHn2lrvpxo80R
 k6E+dMp4MeNkjK9pVF7Z5DKuAgzO50Iv5nbSPsK71b8gJigaX9yov/Fz2X3dKsyWEbKkrQaP5c2pq
 Wlc2gdHpoQguGDYS4rkeAV+b+u3H2Ze9rGfmeJo0i+o92nc8Xah2+UMT+drn4aT4VlRZVKWYLXUjk
 nN0XHjP5521BNb3vWHWpBtYAvKIMXvkokKLlWjO1ckXCV3zsBXC9dOyItkGEkRoC4J3jJygCwWeG5
 TgaYNpBJ7yozlFNraYQQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209;
 h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TJnf8ObeYiMIiLPLUYW157E1c7XzShErI48mUo2IBw=;
 b=XprQobJVfLvMXobAtOgZgEloI
 GF344NV5EtsABl3lpVOYy9W8HTemgimW+Dwc4lZBuJgNPu5j07PgwFrZwzx8lfdF0fyqBLNjiSiml
 CUOcUBMllhYhudTcKaO8DnDpjbRzlKBgRkFKFtvuo2NvgMUwbE+jhZYzL5Zh9T9OOJUStoEXNqJpO
 +nspF/yrF6aTiidcaECJsyFMGBzpCpm6+dl30kwIdeAajQ+wIC65NtWn+2r56Q4elnOLgOX+K/wWa
 pzkbH90BOL3LXI2FUH91n2y/vWMzh1llr/bRo80xeLkX/18mlF37DFd/jTpZS5Ohil3gNGoaWdHEJ
 ieONMnSwg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f1twC-0001dA-78
 for wireless-regdb@lists.infradead.org; Fri, 30 Mar 2018 13:19:25 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1f1tte-00052O-NI
 for wireless-regdb@lists.infradead.org; Fri, 30 Mar 2018 13:16:46 +0000
Received: by mail-io0-f200.google.com with SMTP id n7so7812605ioc.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Mar 2018 06:16:46 -0700 (PDT)
Date: Fri, 30 Mar 2018 08:14:33 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180330131433.GQ18469@ubuntu-xps13>
References: <bdfcead51b64e05f867ba5fe273c196edea35ddd.1517700836.git.mschiffer@universe-factory.net>
 <d79709a55ccea63af94e61a0c1c00aeedff265ca.1517700836.git.mschiffer@universe-factory.net>
 <20180322140544.GD3467@ubuntu-xps13>
 <3a370649-9417-47d0-49c0-544f99a22306@universe-factory.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a370649-9417-47d0-49c0-544f99a22306@universe-factory.net>
Subject: Re: [wireless-regdb] [PATCH v2 2/2] wireless-regdb: make scripts
 compatible with Python 3
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
To: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 22, 2018 at 03:44:00PM +0100, Matthias Schiffer wrote:
> On 03/22/2018 03:05 PM, Seth Forshee wrote:
> > On Sun, Feb 04, 2018 at 12:36:54AM +0100, Matthias Schiffer wrote:
> >> When playing with the generation scripts for OpenWrt development, I noticed
> >> that these scripts still required Python 2. Future-proof them by replacing
> >> deprecated functions with new Python 3 compatible variants. The result
> >> works with both Python 2.7 and Python 3.x; older Python 2.x releases are
> >> not supported anymore.
> >>
> >> regulatory.db and regulatory.bin are unchanged and reproducible across
> >> Python versions. Note that there is no stable release of m2crypto for
> >> Python 3 yet; I used the current development branch for testing.
> > 
> > I can't say I'm all that knowledgable about Python 2 to Python 3
> > conversion, but as far as I can tell this looks okay. It does seem to
> > work for me running with both Python 2 and Python 3.
> > 
> > One question below though, mostly just to satisfy my curiousity.
> > 
> >> Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
> >> ---
> >>
> >> v2: explicitly open input file with UTF-8 encoding; otherwise the scripts
> >> will fail without a UTF-8 locale set in the environment
> >>
> >>
> >>  db2bin.py  | 22 ++++++++---------
> >>  db2fw.py   | 28 +++++++++++-----------
> >>  dbparse.py | 81 +++++++++++++++++++++++++++++++++++++-------------------------
> >>  3 files changed, 74 insertions(+), 57 deletions(-)
> >>
> >> diff --git a/db2bin.py b/db2bin.py
> >> index ae5f064..28cd7d2 100755
> >> --- a/db2bin.py
> >> +++ b/db2bin.py
> >> @@ -1,6 +1,6 @@
> >>  #!/usr/bin/env python
> >>  
> >> -from cStringIO import StringIO
> >> +from io import BytesIO, open
> >>  import struct
> >>  import hashlib
> >>  from dbparse import DBParser
> >> @@ -10,21 +10,21 @@ MAGIC = 0x52474442
> >>  VERSION = 19
> >>  
> >>  if len(sys.argv) < 3:
> >> -    print 'Usage: %s output-file input-file [key-file]' % sys.argv[0]
> >> +    print('Usage: %s output-file input-file [key-file]' % sys.argv[0])
> >>      sys.exit(2)
> >>  
> >>  def create_rules(countries):
> >>      result = {}
> >> -    for c in countries.itervalues():
> >> +    for c in countries.values():
> >>          for rule in c.permissions:
> >>              result[rule] = 1
> >> -    return result.keys()
> >> +    return list(result)
> > 
> > Here and elsewhere, to get a list of the keys from a dictionary, we use
> > list(dict). Experimentally I find this works, but I haven't been able to
> > find anything which actually tells me that this is the defined behavior,
> > and examples seem to prefer list(dict.keys()). I'm curious why this is
> > guaranteed to provide a lsit of dictionary keys, and why you've done
> > that rather than list(dict.keys()) (I'll grant that the scripts
> > elsewhere use list(dict), so maybe you were just being consistent with
> > that).
> 
> list(dict) is the recommended syntax in
> http://python-future.org/compatible_idioms.html#dict-keys-values-items-as-a-list

Thanks for the explanation. I've applied both patches.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

