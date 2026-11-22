Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02327606A32A
	for <wireless-regdb@archiver.kernel.org>; Sun, 22 Nov 2026 18:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2K4M98CO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=ErXSK0Xu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:CC:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=aBuBxDhQF9UaS1I/3ToKMUlfTy1uIH0wHb87G6Bl9Sw=; b=2K4M98COkZ5TBkXHTpk0noTOlA
	xwfX8Lf7MBIPyi2PPMDaTEWKqEDUa1YywoG+Q70FbFI9RyyIG2PKGlO0JVFEIithb/cCW+hzFUyQW
	e3iAG7gFUzDMNU8t4IDt8juYMTS5YQB42HonTSIRCIvKyqVSY/kZ+Q/YryRsCFI9EuB37mUvAo/kU
	amuJj+p1qzEXNpN+VNa6Q3v9SQSRv+Oh1KqxjseEQbSWdkgW+JyBdAeKpT90mKHYIASvO+TVq7+TJ
	mOri7WDqbWyTw0eHSD03CnkziFvXII/lI6VNtbkZZLF5PHvdykFyWpGw9FsZYLFMJgkZy2Wl099zq
	fluVNquA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVC3h-00000001VVQ-20bg;
	Sun, 22 Nov 2026 18:13:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVC3g-00000001VSk-1s93
	for wireless-regdb@bombadil.infradead.org;
	Sun, 22 Nov 2026 18:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=aBuBxDhQF9UaS1I/3ToKMUlfTy1uIH0wHb87G6Bl9Sw=; b=ErXSK0Xu4rQNXgNJPFeR1bGwIK
	5IbS9vQIS2lpbDpAaTHracixqnbkg8D0M4CaNabV/ar+bxjaWcS/KqLVsRoIfkOkLk28v2AUhNZc8
	9UH8WJTkGNqvZOaZQxY4Lrm8ul8NiE3AucvgAq6O+KDAcBDFWiUuIYgreIZNfwdIEim0Dt+tYRldN
	wclFkPTAZ4ISOuqR/6VuxEJRDOYZJ7YCJTvS1y9BzSJuOVsPDIzg+pcs/8DKJ6Y4Oe31k+v6uSl75
	pJHPNGxrJAEUvO+ZFVlZ6QVXIuRhAKbqO4rYH1YOM2ObK0PZSe2Hm8yxHC/SpmTQ/DhF2xizM3Z49
	4Xs3xQ1w==;
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by desiato.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVC3a-00000002Pqv-2Vxn
	for wireless-regdb@lists.infradead.org;
	Sun, 22 Nov 2026 18:12:59 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO00041B;
    22 Nov 2026 21:12:54 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 22 Nov 2026 21:12:27 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG00041A;
   22 Nov 2026 21:12:26 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO00004A;
  22 Nov 2026 21:12:23 +0300
Received: from spooler by mail-s22-aux3.in-solve.hidden (Mercury/32 v4.52); 22 Nov 2026 21:12:22 +0300
Received: from ehlo.thunderbird.net (128.204.79.33) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000049;
   22 Nov 2026 21:12:19 +0300
Date: Sun, 22 Nov 2026 21:12:21 +0300
From: RFAREAS Support <support@rfareas.com>
To: linux-wireless@vger.kernel.org
CC: wireless-regdb@lists.infradead.org, wens@kernel.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Kazakhstan (KZ)
User-Agent: K-9 Mail for Android
Message-ID: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary=----FCEPW6QD6ITI3HZAAVBO0BM4KBB1DI
Content-Transfer-Encoding: 7bit
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_181254_647250_F465541E 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

------FCEPW6QD6ITI3HZAAVBO0BM4KBB1DI
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

From: Valery Belousov <support@rfareas=2Ecom>

The KZ entry cites the 2015 versions of the Rules for the assignment
of frequency bands (Order No=2E 34 of 21 January 2015)=2E Item 24 "WAS/RLA=
N"
of Annex 1 to these Rules, the list of radio equipment that may be
operated without a permit, was replaced by Order No=2E 564/NK of the
Ministry of Digital Development, Innovation and Aerospace Industry of
19 September 2024 (registered with the Ministry of Justice under
No=2E 35100 on 23 September 2024, in force ten days after its first
official publication)=2E The consolidated text of the Rules on the
official legal portal adilet=2Ezan=2Ekz contains the same item=2E

Limits as stated in item 24 (all e=2Ei=2Er=2Ep=2E):
  2400-2483=2E5 MHz: 100 mW, 10 mW/MHz for wideband modulations
  5150-5350 MHz:   200 mW, 10 mW/MHz, indoor use only
  5470-5725 MHz:   100 mW, 10 mW/MHz, indoor use only
  5725-5850 MHz:   100 mW, 10 mW/MHz, indoor use only
  5925-6425 MHz:   200 mW, 10 mW/MHz, indoor use only
  57-66 GHz:       40 dBm, 13 dBm/MHz mean, indoor use only

Changes:
 * 5250-5350 MHz: raise the limit from 20 dBm (100 mW) to 200 mW;
   the item gives 200 mW for the whole 5150-5350 MHz range=2E
 * 57-66 GHz: add NO-OUTDOOR ("only for use inside a building")=2E
 * Update the source links to the current consolidated Rules and the
   amending order, using https=2E

The other rules already match the item=2E The item does not mention
DFS; the existing DFS flags are kept=2E The power spectral density
limits cannot be expressed in db=2Etxt=2E

Signed-off-by: Valery Belousov <support@rfareas=2Ecom>
---
Found while cross-checking wireless-regdb against the national acts for th=
e
RFAREAS Wi-Fi regulatory map (https://rfareas=2Ecom/blog/tools/wifimap/)=
=2E

 db=2Etxt | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/db=2Etxt b/db=2Etxt
index 43dc0b3=2E=2E3eb02d2 100644
--- a/db=2Etxt
+++ b/db=2Etxt
@@ -1194,16 +1194,21 @@ country KY: DFS-FCC
 	(57000 - 71000 @ 2160), (40)
=20
 # Source:
-# http://adilet=2Ezan=2Ekz/rus/docs/V1500010730
-# http://adilet=2Ezan=2Ekz/rus/docs/V1500010375
+# Rules for the assignment of frequency bands =2E=2E=2E (Order No=2E 34 o=
f
+# 21 January 2015), Annex 1 (radio equipment that needs no permit),
+# item 24 "WAS/RLAN", as amended by Order No=2E 564/NK of 19 September 20=
24:
+# https://adilet=2Ezan=2Ekz/rus/docs/V1500010730
+# https://adilet=2Ezan=2Ekz/rus/docs/V2400035100
+# Table of frequency band allocations (Order No=2E 22 of 20 January 2015)=
:
+# https://adilet=2Ezan=2Ekz/rus/docs/V1500010375
 country KZ: DFS-ETSI
 	(2400 - 2483=2E5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
 	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
-	(57000 - 66000 @ 2160), (40)
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
=20
 country LB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
--=20
2=2E43=2E0


------FCEPW6QD6ITI3HZAAVBO0BM4KBB1DI
Content-Type: text/x-diff;
 name=wireless-regdb-KZ.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=wireless-regdb-KZ.patch;
 size=3148

RnJvbSAzNWI1ZmJlNmU5MzE2ZDA5YmEwZTdjZDY3M2M5NjI0N2Y0ZGYyZWRlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBWYWxlcnkgQmVsb3Vzb3YgPHN1cHBvcnRAcmZhcmVhcy5jb20+
CkRhdGU6IFN1biwgMjIgTm92IDIwMjYgMTc6NDc6NTcgKzAwMDAKU3ViamVjdDogW1BBVENIXSB3
aXJlbGVzcy1yZWdkYjogVXBkYXRlIHJlZ3VsYXRvcnkgaW5mbyBmb3IgS2F6YWtoc3RhbiAoS1op
CgpUaGUgS1ogZW50cnkgY2l0ZXMgdGhlIDIwMTUgdmVyc2lvbnMgb2YgdGhlIFJ1bGVzIGZvciB0
aGUgYXNzaWdubWVudApvZiBmcmVxdWVuY3kgYmFuZHMgKE9yZGVyIE5vLiAzNCBvZiAyMSBKYW51
YXJ5IDIwMTUpLiBJdGVtIDI0ICJXQVMvUkxBTiIKb2YgQW5uZXggMSB0byB0aGVzZSBSdWxlcywg
dGhlIGxpc3Qgb2YgcmFkaW8gZXF1aXBtZW50IHRoYXQgbWF5IGJlCm9wZXJhdGVkIHdpdGhvdXQg
YSBwZXJtaXQsIHdhcyByZXBsYWNlZCBieSBPcmRlciBOby4gNTY0L05LIG9mIHRoZQpNaW5pc3Ry
eSBvZiBEaWdpdGFsIERldmVsb3BtZW50LCBJbm5vdmF0aW9uIGFuZCBBZXJvc3BhY2UgSW5kdXN0
cnkgb2YKMTkgU2VwdGVtYmVyIDIwMjQgKHJlZ2lzdGVyZWQgd2l0aCB0aGUgTWluaXN0cnkgb2Yg
SnVzdGljZSB1bmRlcgpOby4gMzUxMDAgb24gMjMgU2VwdGVtYmVyIDIwMjQsIGluIGZvcmNlIHRl
biBkYXlzIGFmdGVyIGl0cyBmaXJzdApvZmZpY2lhbCBwdWJsaWNhdGlvbikuIFRoZSBjb25zb2xp
ZGF0ZWQgdGV4dCBvZiB0aGUgUnVsZXMgb24gdGhlCm9mZmljaWFsIGxlZ2FsIHBvcnRhbCBhZGls
ZXQuemFuLmt6IGNvbnRhaW5zIHRoZSBzYW1lIGl0ZW0uCgpMaW1pdHMgYXMgc3RhdGVkIGluIGl0
ZW0gMjQgKGFsbCBlLmkuci5wLik6CiAgMjQwMC0yNDgzLjUgTUh6OiAxMDAgbVcsIDEwIG1XL01I
eiBmb3Igd2lkZWJhbmQgbW9kdWxhdGlvbnMKICA1MTUwLTUzNTAgTUh6OiAgIDIwMCBtVywgMTAg
bVcvTUh6LCBpbmRvb3IgdXNlIG9ubHkKICA1NDcwLTU3MjUgTUh6OiAgIDEwMCBtVywgMTAgbVcv
TUh6LCBpbmRvb3IgdXNlIG9ubHkKICA1NzI1LTU4NTAgTUh6OiAgIDEwMCBtVywgMTAgbVcvTUh6
LCBpbmRvb3IgdXNlIG9ubHkKICA1OTI1LTY0MjUgTUh6OiAgIDIwMCBtVywgMTAgbVcvTUh6LCBp
bmRvb3IgdXNlIG9ubHkKICA1Ny02NiBHSHo6ICAgICAgIDQwIGRCbSwgMTMgZEJtL01IeiBtZWFu
LCBpbmRvb3IgdXNlIG9ubHkKCkNoYW5nZXM6CiAqIDUyNTAtNTM1MCBNSHo6IHJhaXNlIHRoZSBs
aW1pdCBmcm9tIDIwIGRCbSAoMTAwIG1XKSB0byAyMDAgbVc7CiAgIHRoZSBpdGVtIGdpdmVzIDIw
MCBtVyBmb3IgdGhlIHdob2xlIDUxNTAtNTM1MCBNSHogcmFuZ2UuCiAqIDU3LTY2IEdIejogYWRk
IE5PLU9VVERPT1IgKCJvbmx5IGZvciB1c2UgaW5zaWRlIGEgYnVpbGRpbmciKS4KICogVXBkYXRl
IHRoZSBzb3VyY2UgbGlua3MgdG8gdGhlIGN1cnJlbnQgY29uc29saWRhdGVkIFJ1bGVzIGFuZCB0
aGUKICAgYW1lbmRpbmcgb3JkZXIsIHVzaW5nIGh0dHBzLgoKVGhlIG90aGVyIHJ1bGVzIGFscmVh
ZHkgbWF0Y2ggdGhlIGl0ZW0uIFRoZSBpdGVtIGRvZXMgbm90IG1lbnRpb24KREZTOyB0aGUgZXhp
c3RpbmcgREZTIGZsYWdzIGFyZSBrZXB0LiBUaGUgcG93ZXIgc3BlY3RyYWwgZGVuc2l0eQpsaW1p
dHMgY2Fubm90IGJlIGV4cHJlc3NlZCBpbiBkYi50eHQuCgpTaWduZWQtb2ZmLWJ5OiBWYWxlcnkg
QmVsb3Vzb3YgPHN1cHBvcnRAcmZhcmVhcy5jb20+Ci0tLQpGb3VuZCB3aGlsZSBjcm9zcy1jaGVj
a2luZyB3aXJlbGVzcy1yZWdkYiBhZ2FpbnN0IHRoZSBuYXRpb25hbCBhY3RzIGZvciB0aGUKUkZB
UkVBUyBXaS1GaSByZWd1bGF0b3J5IG1hcCAoaHR0cHM6Ly9yZmFyZWFzLmNvbS9ibG9nL3Rvb2xz
L3dpZmltYXAvKS4KCiBkYi50eHQgfCAxMyArKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RiLnR4dCBiL2Ri
LnR4dAppbmRleCA0M2RjMGIzLi4zZWIwMmQyIDEwMDY0NAotLS0gYS9kYi50eHQKKysrIGIvZGIu
dHh0CkBAIC0xMTk0LDE2ICsxMTk0LDIxIEBAIGNvdW50cnkgS1k6IERGUy1GQ0MKIAkoNTcwMDAg
LSA3MTAwMCBAIDIxNjApLCAoNDApCiAKICMgU291cmNlOgotIyBodHRwOi8vYWRpbGV0Lnphbi5r
ei9ydXMvZG9jcy9WMTUwMDAxMDczMAotIyBodHRwOi8vYWRpbGV0Lnphbi5rei9ydXMvZG9jcy9W
MTUwMDAxMDM3NQorIyBSdWxlcyBmb3IgdGhlIGFzc2lnbm1lbnQgb2YgZnJlcXVlbmN5IGJhbmRz
IC4uLiAoT3JkZXIgTm8uIDM0IG9mCisjIDIxIEphbnVhcnkgMjAxNSksIEFubmV4IDEgKHJhZGlv
IGVxdWlwbWVudCB0aGF0IG5lZWRzIG5vIHBlcm1pdCksCisjIGl0ZW0gMjQgIldBUy9STEFOIiwg
YXMgYW1lbmRlZCBieSBPcmRlciBOby4gNTY0L05LIG9mIDE5IFNlcHRlbWJlciAyMDI0OgorIyBo
dHRwczovL2FkaWxldC56YW4ua3ovcnVzL2RvY3MvVjE1MDAwMTA3MzAKKyMgaHR0cHM6Ly9hZGls
ZXQuemFuLmt6L3J1cy9kb2NzL1YyNDAwMDM1MTAwCisjIFRhYmxlIG9mIGZyZXF1ZW5jeSBiYW5k
IGFsbG9jYXRpb25zIChPcmRlciBOby4gMjIgb2YgMjAgSmFudWFyeSAyMDE1KToKKyMgaHR0cHM6
Ly9hZGlsZXQuemFuLmt6L3J1cy9kb2NzL1YxNTAwMDEwMzc1CiBjb3VudHJ5IEtaOiBERlMtRVRT
SQogCSgyNDAwIC0gMjQ4My41IEAgNDApLCAoMTAwIG1XKQogCSg1MTUwIC0gNTI1MCBAIDgwKSwg
KDIwMCBtVyksIE5PLU9VVERPT1IsIEFVVE8tQlcKLQkoNTI1MCAtIDUzNTAgQCA4MCksICgyMCks
IE5PLU9VVERPT1IsIERGUywgQVVUTy1CVworCSg1MjUwIC0gNTM1MCBAIDgwKSwgKDIwMCBtVyks
IE5PLU9VVERPT1IsIERGUywgQVVUTy1CVwogCSg1NDcwIC0gNTcyNSBAIDE2MCksICgxMDAgbVcp
LCBOTy1PVVRET09SLCBERlMKIAkoNTcyNSAtIDU4NTAgQCA4MCksICgxMDAgbVcpLCBOTy1PVVRE
T09SCiAJKDU5MjUgLSA2NDI1IEAgMzIwKSwgKDIwMCBtVyksIE5PLU9VVERPT1IKLQkoNTcwMDAg
LSA2NjAwMCBAIDIxNjApLCAoNDApCisJKDU3MDAwIC0gNjYwMDAgQCAyMTYwKSwgKDQwKSwgTk8t
T1VURE9PUgogCiBjb3VudHJ5IExCOiBERlMtRkNDCiAJKDI0MDIgLSAyNDgyIEAgNDApLCAoMjAp
Ci0tIAoyLjQzLjAKCg==

------FCEPW6QD6ITI3HZAAVBO0BM4KBB1DI--

