Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTYDk-0001wR-7x
 for wireless-regdb@lists.infradead.org; Thu, 05 Mar 2015 16:02:00 +0000
From: "Mishol, Guy" <guym@ti.com>
Date: Thu, 5 Mar 2015 16:01:28 +0000
Message-ID: <97207D90F0289D498537011312FCAD112634171E@DFRE01.ent.ti.com>
References: <97207D90F0289D498537011312FCAD112633720F@DFRE01.ent.ti.com>
 <20150302223824.GB11245@ubuntu-hedt>
 <97207D90F0289D498537011312FCAD112633EAB3@DFRE01.ent.ti.com>
 <20150303151421.GB58396@ubuntu-hedt>
 <97207D90F0289D498537011312FCAD11263401C8@DFRE01.ent.ti.com>
 <20150304212752.GA17395@jouni.qca.qualcomm.com>
 <BE284773-9F4F-4429-B1E7-602B5800D457@ti.com>
 <20150304223959.GC4506@ubuntu-hedt>
In-Reply-To: <20150304223959.GC4506@ubuntu-hedt>
Content-Language: en-US
Content-Type: multipart/mixed;
 boundary="_002_97207D90F0289D498537011312FCAD112634171EDFRE01entticom_"
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
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Jouni Malinen <jouni@qca.qualcomm.com>, "Machani, Yaniv" <yanivma@ti.com>
List-ID: <wireless-regdb@lists.infradead.org>

--_002_97207D90F0289D498537011312FCAD112634171EDFRE01entticom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit

Understood.
I limited the patch to US only (basically just like Seth sent few days ago).
Thanks!

Guy Mishol


-----Original Message-----
From: Seth Forshee [mailto:seth.forshee@canonical.com] 
Sent: Thursday, March 05, 2015 00:40
To: Mishol, Guy
Cc: Jouni Malinen; wireless-regdb@lists.infradead.org; Machani, Yaniv
Subject: Re: [wireless-regdb] TDWR Channels are not prohibited anymore in FCC

On Wed, Mar 04, 2015 at 09:41:58PM +0000, Mishol, Guy wrote:
> Thanks for the feedback.
> How can I know which countries should have the TDWR channels enabled?

Assuming your only goal is to reflect the change in FCC rules that you pointed out, the changes should be limited to the US and its territories.

--_002_97207D90F0289D498537011312FCAD112634171EDFRE01entticom_
Content-Type: application/octet-stream;
	name="0001-wireless-regdb-Add-regulatory-rules-for-US.patch"
Content-Description: 0001-wireless-regdb-Add-regulatory-rules-for-US.patch
Content-Disposition: attachment;
	filename="0001-wireless-regdb-Add-regulatory-rules-for-US.patch"; size=900;
	creation-date="Thu, 05 Mar 2015 09:17:23 GMT";
	modification-date="Thu, 05 Mar 2015 09:17:00 GMT"
Content-Transfer-Encoding: base64

RnJvbSBhYmQxOGE5ZmNmNDcwMzIzNDExY2VjZWZjNTIwZWMzNzM2MDg4YTAyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBHdXkgTWlzaG9sIDxndXltQHRpLmNvbT4KRGF0ZTogVGh1LCA1
IE1hciAyMDE1IDA5OjU5OjIzICswMjAwClN1YmplY3Q6IFtQQVRDSF0gd2lyZWxlc3MtcmVnZGI6
IEFkZCByZWd1bGF0b3J5IHJ1bGVzIGZvciBVUwoKVGhlIEZDQyBhcHByb3ZlZCBVTklJIGRldmlj
ZXMgb3BlcmF0aW5nIGluCnRoZSA1NjAwIC0gNTY1ME1IeiAoVERXUikgcmFuZ2Ugd2l0aCByYWRh
cgpkZXRlY3Rpb24gYW5kIERGUyBjYXBhYmlsaXRpZXMuCkVmZmVjdGl2ZSA2LzIvMjAxNC4KClNp
Z25lZC1vZmYtYnk6IEd1eSBNaXNob2wgPGd1eW1AdGkuY29tPgotLS0KIGRiLnR4dCB8ICAgIDMg
Ky0tCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kYi50eHQgYi9kYi50eHQKaW5kZXggN2M2Y2E1ZC4uZGZmMmZiYSAxMDA2NDQK
LS0tIGEvZGIudHh0CisrKyBiL2RiLnR4dApAQCAtMTEzNCw4ICsxMTM0LDcgQEAgY291bnRyeSBV
UzogREZTLUZDQwogCSgyNDAyIC0gMjQ3MiBAIDQwKSwgKDMwKQogCSg1MTcwIC0gNTI1MCBAIDgw
KSwgKDE3KSwgQVVUTy1CVwogCSg1MjUwIC0gNTMzMCBAIDgwKSwgKDIzKSwgREZTLCBBVVRPLUJX
Ci0JKDU0OTAgLSA1NjAwIEAgODApLCAoMjMpLCBERlMKLQkoNTY1MCAtIDU3MTAgQCA0MCksICgy
MyksIERGUworCSg1NDkwIC0gNTczMCBAIDE2MCksICgyMyksIERGUwogCSg1NzM1IC0gNTgzNSBA
IDgwKSwgKDMwKQogCSMgNjBnIGJhbmQKIAkjIHJlZmVyZW5jZTogaHR0cDovL2Nmci5yZWdzdG9k
YXkuY29tLzQ3Y2ZyMTUuYXNweCM0N19DRlJfMTVwMjU1Ci0tIAoxLjcuOQoK

--_002_97207D90F0289D498537011312FCAD112634171EDFRE01entticom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--_002_97207D90F0289D498537011312FCAD112634171EDFRE01entticom_--


