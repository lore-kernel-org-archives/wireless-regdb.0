Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YT91o-0003Rt-1V
 for wireless-regdb@lists.infradead.org; Wed, 04 Mar 2015 13:07:56 +0000
From: "Mishol, Guy" <guym@ti.com>
Date: Wed, 4 Mar 2015 13:07:30 +0000
Message-ID: <97207D90F0289D498537011312FCAD11263401C8@DFRE01.ent.ti.com>
References: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
 <20150302223824.GB11245@ubuntu-hedt>
 <97207D90F0289D498537011312FCAD112633EAB3@DFRE01.ent.ti.com>
 <20150303151421.GB58396@ubuntu-hedt>
In-Reply-To: <20150303151421.GB58396@ubuntu-hedt>
Content-Language: en-US
Content-Type: multipart/mixed;
 boundary="_002_97207D90F0289D498537011312FCAD11263401C8DFRE01entticom_"
MIME-Version: 1.0
Subject: Re: [wireless-regdb] TDWR Channels are not prohibited anymore in
 FCC
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <seth.forshee@canonical.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Machani, Yaniv" <yanivma@ti.com>
List-ID: <wireless-regdb@lists.infradead.org>

--_002_97207D90F0289D498537011312FCAD11263401C8DFRE01entticom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit

Hi,

I checked all FCC countries and apparently most of them already has these TDWR channels enabled.
The only FCC countries without TDWR channels enabled in the db.txt:
BB  CN  DM  DO  GT  MY  PA  SV  US  VE

Attached is a patch enabling TDWR for the above countries.

Note: This patch is based only on the below knowledge.

OLD FCC rules:
https://apps.fcc.gov/kdb/GetAttachment.html?id=6ykM4HwIF0kSnjYKSFkk8Q%3D%3D&desc=905462%20D05%20802.11%20Channel%20Plans%20%20Old%20Rules%20v01&tracking_number=27155

NEW FCC rules:
https://apps.fcc.gov/kdb/GetAttachment.html?id=lp4w3WTVG9PReWNFG0ckTg%3D%3D&desc=905462%20D06%20802.11%20Channel%20Plans%20%20New%20Rules%20v01&tracking_number=27155

Guy Mishol


-----Original Message-----
From: Seth Forshee [mailto:seth.forshee@canonical.com] 
Sent: Tuesday, March 03, 2015 17:14
To: Mishol, Guy
Cc: wireless-regdb@lists.infradead.org; Machani, Yaniv
Subject: Re: TDWR Channels are not prohibited anymore in FCC

On Tue, Mar 03, 2015 at 03:05:18PM +0000, Mishol, Guy wrote:
> Hi,
> If I understand correctly these changes should be applied not only for US but all FCC countries.

Likely so. I don't know the list of countries off the top of my head though. Feel free to send a patch with the changes you think should be made, otherwise I'll put something together when I have time (which likely won't be until late this week).

Seth

--_002_97207D90F0289D498537011312FCAD11263401C8DFRE01entticom_
Content-Type: application/octet-stream;
	name="0001-wireless-regdb-Add-TDWR-channels-to-FCC-countries.patch"
Content-Description: 
 0001-wireless-regdb-Add-TDWR-channels-to-FCC-countries.patch
Content-Disposition: attachment;
	filename="0001-wireless-regdb-Add-TDWR-channels-to-FCC-countries.patch";
	size=2996; creation-date="Wed, 04 Mar 2015 13:04:02 GMT";
	modification-date="Wed, 04 Mar 2015 13:01:42 GMT"
Content-Transfer-Encoding: base64

RnJvbSA3YWZkOGE5NTM3ZWExYTI3MTZkNmVmZmJlZWJhNDhhYzg5MjkwNmY4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBHdXkgTWlzaG9sIDxndXltQHRpLmNvbT4KRGF0ZTogV2VkLCA0
IE1hciAyMDE1IDE0OjU1OjQ4ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gd2lyZWxlc3MtcmVnZGI6
IEFkZCBURFdSIGNoYW5uZWxzIHRvIEZDQyBjb3VudHJpZXMKClREV1IgY2hhbm5lbHMgKDU2MDAt
NTY1MCkgaXMgbm90IHByb2hpYmV0ZWQgYW55bW9yZQphY2NvcmRpbmcgdG8gRkNDIGVmZmVjdGl2
ZSA2LzIvMjAxNAoKU2lnbmVkLW9mZi1ieTogR3V5IE1pc2hvbCA8Z3V5bUB0aS5jb20+Ci0tLQog
ZGIudHh0IHwgICAxMiArKysrKysrKysrLS0KIDEgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kYi50eHQgYi9kYi50eHQKaW5kZXgg
N2M2Y2E1ZC4uMzRkYTAyYiAxMDA2NDQKLS0tIGEvZGIudHh0CisrKyBiL2RiLnR4dApAQCAtMTE1
LDYgKzExNSw3IEBAIGNvdW50cnkgQkI6IERGUy1GQ0MKIAkoMjQwMiAtIDI0ODIgQCA0MCksICgy
MCkKIAkoNTE3MCAtIDUyNTAgQCA4MCksICgyMyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4
MCksICgyMyksIERGUywgQVVUTy1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJ
KDU3MzUgLSA1ODM1IEAgODApLCAoMzApCiAKIGNvdW50cnkgQkQ6IERGUy1KUApAQCAtMjQ3LDYg
KzI0OCw3IEBAIGNvdW50cnkgQ046IERGUy1GQ0MKIAkoMjQwMiAtIDI0ODIgQCA0MCksICgyMCkK
IAkoNTE3MCAtIDUyNTAgQCA4MCksICgyMyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCks
ICgyMyksIERGUywgQVVUTy1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3
MzUgLSA1ODM1IEAgODApLCAoMzApCiAJIyA2MCBnSHogYmFuZCBjaGFubmVscyAxLDQ6IDI4ZEJt
LCBjaGFubmVscyAyLDM6IDQ0ZEJtCiAJIyByZWY6IGh0dHA6Ly93d3cubWlpdC5nb3YuY24vbjEx
MjkzNDcyL24xMTUwNTYyOS9uMTE1MDY1OTMvbjExOTYwMjUwL24xMTk2MDYwNi9uMTE5NjA3MDAv
bjEyMzMwNzkxLmZpbGVzL24xMjMzMDc5MC5wZGYKQEAgLTMzMywxMiArMzM1LDE0IEBAIGNvdW50
cnkgRE06IERGUy1GQ0MKIAkoMjQwMiAtIDI0NzIgQCA0MCksICgzMCkKIAkoNTE3MCAtIDUyNTAg
QCA4MCksICgxNyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCksICgyMyksIERGUywgQVVU
Ty1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3MzUgLSA1ODM1IEAgODAp
LCAoMzApCiAKIGNvdW50cnkgRE86IERGUy1GQ0MKIAkoMjQwMiAtIDI0NzIgQCA0MCksICgzMCkK
IAkoNTE3MCAtIDUyNTAgQCA4MCksICgxNyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCks
ICgyMyksIERGUywgQVVUTy1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3
MzUgLSA1ODM1IEAgODApLCAoMzApCiAKIGNvdW50cnkgRFo6IERGUy1KUApAQCAtNDcwLDYgKzQ3
NCw3IEBAIGNvdW50cnkgR1Q6IERGUy1GQ0MKIAkoMjQwMiAtIDI0NzIgQCA0MCksICgzMCkKIAko
NTE3MCAtIDUyNTAgQCA4MCksICgxNyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCksICgy
MyksIERGUywgQVVUTy1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3MzUg
LSA1ODM1IEAgODApLCAoMzApCiAKIGNvdW50cnkgR1U6IERGUy1GQ0MKQEAgLTgxMCw2ICs4MTUs
NyBAQCBjb3VudHJ5IE1ZOiBERlMtRkNDCiAJKDI0MDIgLSAyNDgyIEAgNDApLCAoMjApCiAJKDUx
NzAgLSA1MjUwIEAgODApLCAoMTcpLCBBVVRPLUJXCiAJKDUyNTAgLSA1MzMwIEAgODApLCAoMjMp
LCBERlMsIEFVVE8tQlcKKwkoNTYwMCAtIDU2NTAgQCA0MCksICgyMyksIERGUwogCSg1NzM1IC0g
NTgzNSBAIDgwKSwgKDMwKQogCiBjb3VudHJ5IE5HOiBERlMtRVRTSQpAQCAtODcwLDYgKzg3Niw3
IEBAIGNvdW50cnkgUEE6IERGUy1GQ0MKIAkoMjQwMiAtIDI0NzIgQCA0MCksICgzMCkKIAkoNTE3
MCAtIDUyNTAgQCA4MCksICgxNyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCksICgyMyks
IERGUywgQVVUTy1CVworCSg1NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3MzUgLSA1
ODM1IEAgODApLCAoMzApCiAKIGNvdW50cnkgUEU6IERGUy1GQ0MKQEAgLTEwNDQsNiArMTA1MSw3
IEBAIGNvdW50cnkgU1Y6IERGUy1GQ0MKIAkoMjQwMiAtIDI0ODIgQCA0MCksICgyMCkKIAkoNTE3
MCAtIDUyNTAgQCAyMCksICgxNykKIAkoNTI1MCAtIDUzMzAgQCAyMCksICgyMyksIERGUworCSg1
NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3MzUgLSA1ODM1IEAgMjApLCAoMzApCiAK
IGNvdW50cnkgU1k6CkBAIC0xMTM0LDggKzExNDIsNyBAQCBjb3VudHJ5IFVTOiBERlMtRkNDCiAJ
KDI0MDIgLSAyNDcyIEAgNDApLCAoMzApCiAJKDUxNzAgLSA1MjUwIEAgODApLCAoMTcpLCBBVVRP
LUJXCiAJKDUyNTAgLSA1MzMwIEAgODApLCAoMjMpLCBERlMsIEFVVE8tQlcKLQkoNTQ5MCAtIDU2
MDAgQCA4MCksICgyMyksIERGUwotCSg1NjUwIC0gNTcxMCBAIDQwKSwgKDIzKSwgREZTCisJKDU0
OTAgLSA1NzMwIEAgMTYwKSwgKDIzKSwgREZTCiAJKDU3MzUgLSA1ODM1IEAgODApLCAoMzApCiAJ
IyA2MGcgYmFuZAogCSMgcmVmZXJlbmNlOiBodHRwOi8vY2ZyLnJlZ3N0b2RheS5jb20vNDdjZnIx
NS5hc3B4IzQ3X0NGUl8xNXAyNTUKQEAgLTExNzIsNiArMTE3OSw3IEBAIGNvdW50cnkgVkU6IERG
Uy1GQ0MKIAkoMjQwMiAtIDI0ODIgQCA0MCksICgzMCkKIAkoNTE3MCAtIDUyNTAgQCA4MCksICgy
MyksIEFVVE8tQlcKIAkoNTI1MCAtIDUzMzAgQCA4MCksICgyMyksIERGUywgQVVUTy1CVworCSg1
NjAwIC0gNTY1MCBAIDQwKSwgKDIzKSwgREZTCiAJKDU3MzUgLSA1ODM1IEAgODApLCAoMzApCiAK
IGNvdW50cnkgVkk6IERGUy1GQ0MKLS0gCjEuNy45Cgo=

--_002_97207D90F0289D498537011312FCAD11263401C8DFRE01entticom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--_002_97207D90F0289D498537011312FCAD11263401C8DFRE01entticom_--


