Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
 List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
 Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=ip2a/rzmGyWivagqb4jc3p4KNB7YbHukUxKY27OwSRE=;
 b=Trv75Y+Sxq5A+6FHuYjomVstJ
 1YhsTZi7oH4syRg0/lXnx4FGiq0JLgjhQlWx/DFOwC0j0ikaZvH/rJImsyGLFSEPa9TAz5M8/yJB5
 xHcq8TkEfwR8EaxQ/hYVNhD5wR6l/AHNWfy84bhpfkBce8cbe8oIaZngq80oRSKaJjzzeeNJ8VoJ6
 4JrTKbuI5Nzl33Hrw+DSO+9wHpXNJId22MXs02yRx81xAj6k9IQ1YvjHDz/b+CuqgKX+z1YnZA+/U
 J1DPddTxJvomYPHdYBr3qTL+qxPJEGkkz17ceOF8Q8jzM9y+UN7DXNsKw+4aRMbs44I3dhX7SJLGU
 RDZ58f/aw==;
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ez1Rw-0000Bp-Su
 for wireless-regdb@lists.infradead.org; Thu, 22 Mar 2018 14:44:19 +0000
References: <bdfcead51b64e05f867ba5fe273c196edea35ddd.1517700836.git.mschiffer@universe-factory.net>
 <d79709a55ccea63af94e61a0c1c00aeedff265ca.1517700836.git.mschiffer@universe-factory.net>
 <20180322140544.GD3467@ubuntu-xps13>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <3a370649-9417-47d0-49c0-544f99a22306@universe-factory.net>
Date: Thu, 22 Mar 2018 15:44:00 +0100
MIME-Version: 1.0
In-Reply-To: <20180322140544.GD3467@ubuntu-xps13>
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
Content-Type: multipart/mixed; boundary="===============8806294974558850936=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8806294974558850936==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="jFY4UWxOqBTpLhDygD2MQXJBd3p3hAG9a"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--jFY4UWxOqBTpLhDygD2MQXJBd3p3hAG9a
Content-Type: multipart/mixed; boundary="OyXpnNnRRY5TuJZVFgShOHHLOsCS2uCre";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Message-ID: <3a370649-9417-47d0-49c0-544f99a22306@universe-factory.net>
Subject: Re: [PATCH v2 2/2] wireless-regdb: make scripts compatible with
 Python 3
References: <bdfcead51b64e05f867ba5fe273c196edea35ddd.1517700836.git.mschiffer@universe-factory.net>
 <d79709a55ccea63af94e61a0c1c00aeedff265ca.1517700836.git.mschiffer@universe-factory.net>
 <20180322140544.GD3467@ubuntu-xps13>
In-Reply-To: <20180322140544.GD3467@ubuntu-xps13>

--OyXpnNnRRY5TuJZVFgShOHHLOsCS2uCre
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 03/22/2018 03:05 PM, Seth Forshee wrote:
> On Sun, Feb 04, 2018 at 12:36:54AM +0100, Matthias Schiffer wrote:
>> When playing with the generation scripts for OpenWrt development, I no=
ticed
>> that these scripts still required Python 2. Future-proof them by repla=
cing
>> deprecated functions with new Python 3 compatible variants. The result=

>> works with both Python 2.7 and Python 3.x; older Python 2.x releases a=
re
>> not supported anymore.
>>
>> regulatory.db and regulatory.bin are unchanged and reproducible across=

>> Python versions. Note that there is no stable release of m2crypto for
>> Python 3 yet; I used the current development branch for testing.
>=20
> I can't say I'm all that knowledgable about Python 2 to Python 3
> conversion, but as far as I can tell this looks okay. It does seem to
> work for me running with both Python 2 and Python 3.
>=20
> One question below though, mostly just to satisfy my curiousity.
>=20
>> Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
>> ---
>>
>> v2: explicitly open input file with UTF-8 encoding; otherwise the scri=
pts
>> will fail without a UTF-8 locale set in the environment
>>
>>
>>  db2bin.py  | 22 ++++++++---------
>>  db2fw.py   | 28 +++++++++++-----------
>>  dbparse.py | 81 +++++++++++++++++++++++++++++++++++++----------------=
---------
>>  3 files changed, 74 insertions(+), 57 deletions(-)
>>
>> diff --git a/db2bin.py b/db2bin.py
>> index ae5f064..28cd7d2 100755
>> --- a/db2bin.py
>> +++ b/db2bin.py
>> @@ -1,6 +1,6 @@
>>  #!/usr/bin/env python
>> =20
>> -from cStringIO import StringIO
>> +from io import BytesIO, open
>>  import struct
>>  import hashlib
>>  from dbparse import DBParser
>> @@ -10,21 +10,21 @@ MAGIC =3D 0x52474442
>>  VERSION =3D 19
>> =20
>>  if len(sys.argv) < 3:
>> -    print 'Usage: %s output-file input-file [key-file]' % sys.argv[0]=

>> +    print('Usage: %s output-file input-file [key-file]' % sys.argv[0]=
)
>>      sys.exit(2)
>> =20
>>  def create_rules(countries):
>>      result =3D {}
>> -    for c in countries.itervalues():
>> +    for c in countries.values():
>>          for rule in c.permissions:
>>              result[rule] =3D 1
>> -    return result.keys()
>> +    return list(result)
>=20
> Here and elsewhere, to get a list of the keys from a dictionary, we use=

> list(dict). Experimentally I find this works, but I haven't been able t=
o
> find anything which actually tells me that this is the defined behavior=
,
> and examples seem to prefer list(dict.keys()). I'm curious why this is
> guaranteed to provide a lsit of dictionary keys, and why you've done
> that rather than list(dict.keys()) (I'll grant that the scripts
> elsewhere use list(dict), so maybe you were just being consistent with
> that).

list(dict) is the recommended syntax in
http://python-future.org/compatible_idioms.html#dict-keys-values-items-as=
-a-list
=2E

Regards,
Matthias



>=20
>>  def create_collections(countries):
>>      result =3D {}
>> -    for c in countries.itervalues():
>> +    for c in countries.values():
>>          result[c.permissions] =3D 1
>> -    return result.keys()
>> +    return list(result)
>> =20
>> =20
>>  def be32(output, val):
>> @@ -49,9 +49,9 @@ class PTR(object):
>>          return self._offset
>> =20
>>  p =3D DBParser()
>> -countries =3D p.parse(file(sys.argv[2]))
>> +countries =3D p.parse(open(sys.argv[2], 'r', encoding=3D'utf-8'))
>> =20
>> -countrynames =3D countries.keys()
>> +countrynames =3D list(countries)
>>  countrynames.sort()
>> =20
>>  power =3D []
>> @@ -67,7 +67,7 @@ rules.sort()
>>  collections =3D create_collections(countries)
>>  collections.sort()
>> =20
>> -output =3D StringIO()
>> +output =3D BytesIO()
>> =20
>>  # struct regdb_file_header
>>  be32(output, MAGIC)
>> @@ -118,7 +118,7 @@ reg_country_ptr.set()
>>  for alpha2 in countrynames:
>>      coll =3D countries[alpha2]
>>      # struct regdb_file_reg_country
>> -    output.write(struct.pack('>ccxBI', str(alpha2[0]), str(alpha2[1])=
, coll.dfs_region, reg_rules_collections[coll.permissions]))
>> +    output.write(struct.pack('>BBxBI', alpha2[0], alpha2[1], coll.dfs=
_region, reg_rules_collections[coll.permissions]))
>> =20
>> =20
>>  if len(sys.argv) > 3:
>> @@ -143,5 +143,5 @@ if len(sys.argv) > 3:
>>  else:
>>      siglen.set(0)
>> =20
>> -outfile =3D open(sys.argv[1], 'w')
>> +outfile =3D open(sys.argv[1], 'wb')
>>  outfile.write(output.getvalue())
>> diff --git a/db2fw.py b/db2fw.py
>> index 630e4d6..91b88d3 100755
>> --- a/db2fw.py
>> +++ b/db2fw.py
>> @@ -1,6 +1,6 @@
>>  #!/usr/bin/env python
>> =20
>> -from cStringIO import StringIO
>> +from io import BytesIO, open
>>  import struct
>>  import hashlib
>>  from dbparse import DBParser
>> @@ -10,21 +10,21 @@ MAGIC =3D 0x52474442
>>  VERSION =3D 20
>> =20
>>  if len(sys.argv) < 3:
>> -    print 'Usage: %s output-file input-file' % sys.argv[0]
>> +    print('Usage: %s output-file input-file' % sys.argv[0])
>>      sys.exit(2)
>> =20
>>  def create_rules(countries):
>>      result =3D {}
>> -    for c in countries.itervalues():
>> +    for c in countries.values():
>>          for rule in c.permissions:
>>              result[rule] =3D 1
>> -    return result.keys()
>> +    return list(result)
>> =20
>>  def create_collections(countries):
>>      result =3D {}
>> -    for c in countries.itervalues():
>> +    for c in countries.values():
>>          result[(c.permissions, c.dfs_region)] =3D 1
>> -    return result.keys()
>> +    return list(result)
>> =20
>> =20
>>  def be32(output, val):
>> @@ -58,26 +58,26 @@ class PTR(object):
>>          return self._written
>> =20
>>  p =3D DBParser()
>> -countries =3D p.parse(file(sys.argv[2]))
>> +countries =3D p.parse(open(sys.argv[2], 'r', encoding=3D'utf-8'))
>>  rules =3D create_rules(countries)
>>  rules.sort()
>>  collections =3D create_collections(countries)
>>  collections.sort()
>> =20
>> -output =3D StringIO()
>> +output =3D BytesIO()
>> =20
>>  # struct regdb_file_header
>>  be32(output, MAGIC)
>>  be32(output, VERSION)
>> =20
>>  country_ptrs =3D {}
>> -countrynames =3D countries.keys()
>> +countrynames =3D list(countries)
>>  countrynames.sort()
>>  for alpha2 in countrynames:
>>      coll =3D countries[alpha2]
>> -    output.write(struct.pack('>cc', str(alpha2[0]), str(alpha2[1])))
>> +    output.write(struct.pack('>BB', alpha2[0], alpha2[1]))
>>      country_ptrs[alpha2] =3D PTR(output)
>> -output.write('\x00' * 4)
>> +output.write(b'\x00' * 4)
>> =20
>>  reg_rules =3D {}
>>  flags =3D 0
>> @@ -104,8 +104,8 @@ for reg_rule in rules:
>>          cac_timeout =3D 0
>>      if cac_timeout:
>>          rule_len +=3D 2
>> -    output.write(struct.pack('>BBHIII', rule_len, flags, power_rule.m=
ax_eirp * 100,
>> -                             freq_range.start * 1000, freq_range.end =
* 1000, freq_range.maxbw * 1000,
>> +    output.write(struct.pack('>BBHIII', rule_len, flags, int(power_ru=
le.max_eirp * 100),
>> +                             int(freq_range.start * 1000), int(freq_r=
ange.end * 1000), int(freq_range.maxbw * 1000),
>>                               ))
>>      if cac_timeout:
>>          output.write(struct.pack('>H', cac_timeout))
>> @@ -129,5 +129,5 @@ for coll in collections:
>>  for alpha2 in countrynames:
>>      assert country_ptrs[alpha2].written
>> =20
>> -outfile =3D open(sys.argv[1], 'w')
>> +outfile =3D open(sys.argv[1], 'wb')
>>  outfile.write(output.getvalue())
>> diff --git a/dbparse.py b/dbparse.py
>> index b735b6a..d73d1bd 100755
>> --- a/dbparse.py
>> +++ b/dbparse.py
>> @@ -1,5 +1,7 @@
>>  #!/usr/bin/env python
>> =20
>> +from builtins import bytes
>> +from functools import total_ordering
>>  import sys, math
>> =20
>>  # must match <linux/nl80211.h> enum nl80211_reg_rule_flags
>> @@ -25,6 +27,7 @@ dfs_regions =3D {
>>      'DFS-JP':		3,
>>  }
>> =20
>> +@total_ordering
>>  class FreqBand(object):
>>      def __init__(self, start, end, bw, comments=3DNone):
>>          self.start =3D start
>> @@ -32,41 +35,49 @@ class FreqBand(object):
>>          self.maxbw =3D bw
>>          self.comments =3D comments or []
>> =20
>> -    def __cmp__(self, other):
>> -        s =3D self
>> -        o =3D other
>> -        if not isinstance(o, FreqBand):
>> -            return False
>> -        return cmp((s.start, s.end, s.maxbw), (o.start, o.end, o.maxb=
w))
>> +    def _as_tuple(self):
>> +        return (self.start, self.end, self.maxbw)
>> +
>> +    def __eq__(self, other):
>> +        return (self._as_tuple() =3D=3D other._as_tuple())
>> +
>> +    def __ne__(self, other):
>> +        return not (self =3D=3D other)
>> +
>> +    def __lt__(self, other):
>> +        return (self._as_tuple() < other._as_tuple())
>> =20
>>      def __hash__(self):
>> -        s =3D self
>> -        return hash((s.start, s.end, s.maxbw))
>> +        return hash(self._as_tuple())
>> =20
>>      def __str__(self):
>>          return '<FreqBand %.3f - %.3f @ %.3f>' % (
>>                    self.start, self.end, self.maxbw)
>> =20
>> +@total_ordering
>>  class PowerRestriction(object):
>>      def __init__(self, max_ant_gain, max_eirp, comments =3D None):
>>          self.max_ant_gain =3D max_ant_gain
>>          self.max_eirp =3D max_eirp
>>          self.comments =3D comments or []
>> =20
>> -    def __cmp__(self, other):
>> -        s =3D self
>> -        o =3D other
>> -        if not isinstance(o, PowerRestriction):
>> -            return False
>> -        return cmp((s.max_ant_gain, s.max_eirp),
>> -                   (o.max_ant_gain, o.max_eirp))
>> +    def _as_tuple(self):
>> +        return (self.max_ant_gain, self.max_eirp)
>> =20
>> -    def __str__(self):
>> -        return '<PowerRestriction ...>'
>> +    def __eq__(self, other):
>> +        return (self._as_tuple() =3D=3D other._as_tuple())
>> +
>> +    def __ne__(self, other):
>> +        return not (self =3D=3D other)
>> +
>> +    def __lt__(self, other):
>> +        return (self._as_tuple() < other._as_tuple())
>> =20
>>      def __hash__(self):
>> -        s =3D self
>> -        return hash((s.max_ant_gain, s.max_eirp))
>> +        return hash(self._as_tuple())
>> +
>> +    def __str__(self):
>> +        return '<PowerRestriction ...>'
>> =20
>>  class DFSRegionError(Exception):
>>      def __init__(self, dfs_region):
>> @@ -76,6 +87,7 @@ class FlagError(Exception):
>>      def __init__(self, flag):
>>          self.flag =3D flag
>> =20
>> +@total_ordering
>>  class Permission(object):
>>      def __init__(self, freqband, power, flags):
>>          assert isinstance(freqband, FreqBand)
>> @@ -92,10 +104,14 @@ class Permission(object):
>>      def _as_tuple(self):
>>          return (self.freqband, self.power, self.flags)
>> =20
>> -    def __cmp__(self, other):
>> -        if not isinstance(other, Permission):
>> -            return False
>> -        return cmp(self._as_tuple(), other._as_tuple())
>> +    def __eq__(self, other):
>> +        return (self._as_tuple() =3D=3D other._as_tuple())
>> +
>> +    def __ne__(self, other):
>> +        return not (self =3D=3D other)
>> +
>> +    def __lt__(self, other):
>> +        return (self._as_tuple() < other._as_tuple())
>> =20
>>      def __hash__(self):
>>          return hash(self._as_tuple())
>> @@ -104,12 +120,12 @@ class Country(object):
>>      def __init__(self, dfs_region, permissions=3DNone, comments=3DNon=
e):
>>          self._permissions =3D permissions or []
>>          self.comments =3D comments or []
>> -	self.dfs_region =3D 0
>> +        self.dfs_region =3D 0
>> =20
>> -	if dfs_region:
>> -		if not dfs_region in dfs_regions:
>> -		    raise DFSRegionError(dfs_region)
>> -		self.dfs_region =3D dfs_regions[dfs_region]
>> +        if dfs_region:
>> +            if not dfs_region in dfs_regions:
>> +                raise DFSRegionError(dfs_region)
>> +            self.dfs_region =3D dfs_regions[dfs_region]
>> =20
>>      def add(self, perm):
>>          assert isinstance(perm, Permission)
>> @@ -248,6 +264,7 @@ class DBParser(object):
>>          for cname in cnames:
>>              if len(cname) !=3D 2:
>>                  self._warn("country '%s' not alpha2" % cname)
>> +            cname =3D bytes(cname, 'ascii')
>>              if not cname in self._countries:
>>                  self._countries[cname] =3D Country(dfs_region, commen=
ts=3Dself._comments)
>>              self._current_countries[cname] =3D self._countries[cname]=

>> @@ -304,9 +321,9 @@ class DBParser(object):
>>          p =3D self._power[pname]
>>          try:
>>              perm =3D Permission(b, p, flags)
>> -        except FlagError, e:
>> +        except FlagError as e:
>>              self._syntax_error("Invalid flag '%s'" % e.flag)
>> -        for cname, c in self._current_countries.iteritems():
>> +        for cname, c in self._current_countries.items():
>>              if perm in c:
>>                  self._warn('Rule "%s, %s" added to "%s" twice' % (
>>                                bname, pname, cname))
>> @@ -360,7 +377,7 @@ class DBParser(object):
>> =20
>>          countries =3D self._countries
>>          bands =3D {}
>> -        for k, v in self._bands.iteritems():
>> +        for k, v in self._bands.items():
>>              if k in self._bands_used:
>>                  bands[self._banddup[k]] =3D v
>>                  continue
>> @@ -369,7 +386,7 @@ class DBParser(object):
>>                  self._lineno =3D self._bandline[k]
>>                  self._warn('Unused band definition "%s"' % k)
>>          power =3D {}
>> -        for k, v in self._power.iteritems():
>> +        for k, v in self._power.items():
>>              if k in self._power_used:
>>                  power[self._powerdup[k]] =3D v
>>                  continue
>> --=20
>> 2.16.1
>>



--OyXpnNnRRY5TuJZVFgShOHHLOsCS2uCre--

--jFY4UWxOqBTpLhDygD2MQXJBd3p3hAG9a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAlqzwTAACgkQFu8/ZMsg
HZydIg//f8LUDwZiFvAjDerfAEstUoWXlFOMGoRugg36/MY9In86sX6gvyicXiHX
63OLbaWuMkVDWadLi+cMRD+ZmmCVs8Gf0STj+QT/STjffP4mjqM3AGkpHfqulihS
xRF0XX1q2ea0CxNRjMQnXcAoUf6DD//7QGIDYZsEaGJXjdPYO2dD13M7Cqleo8+W
YLlsKvbvTHIhrUr2mVLz7SijHpI4uXLOd4Vepn08D7PFF3M9LweQpt077H7rIiyy
ThKUQ0+QPCU4MTSREoAgGpwRrrT2IMKRa4n/nFuCYammIz+4j/q3jzHP747G8Ztn
+RS6ldIVR+2LXU4b4HDU/4E2XdeuLMv//SeFXzwfCDYIe9QsL2Y5CiVtQISqt1O0
+aFuqZ8k8drnxi8DRQ5rhT3jxOpSdfwF4GOIl+KYhVq5x1D+96l9CDq953Ksmd+S
kCfeSN6hpRkTndRAkmaWjqbN9KFErT0ykFZziG7QBvfasHZ/FCO/BMJR/J1hl6TH
Q0O9oImb5IwDWUD58JvjLVf5dqY83YEvoYYU2L01DwK+8/85y5QM44s5pIaFghci
H0e04HnhR2VFmlQTaPbOVnuLnSBVe7fPcdHUgsobCbrZoXPTAaszlxKdsTcK+G7k
uowOY4KXKoX6VY0AY35rgaQM1kOsTi35Zk+MHm4y10hb/hunkDk=
=cTCH
-----END PGP SIGNATURE-----

--jFY4UWxOqBTpLhDygD2MQXJBd3p3hAG9a--


--===============8806294974558850936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============8806294974558850936==--


