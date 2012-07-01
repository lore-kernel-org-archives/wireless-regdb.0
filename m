Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sl86L-0007jw-0F
 for wireless-regdb@lists.infradead.org; Sun, 01 Jul 2012 00:33:21 +0000
Received: by wibhq4 with SMTP id hq4so1648799wib.0 for
 <wireless-regdb@lists.infradead.org>; Sat, 30 Jun 2012 17:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=message-id:date:from:reply-to:user-agent:mime-version:to:subject
 :content-type:content-transfer-encoding;
 bh=EVP96bQKOlVNmTCmAkYHqAiJXmuy1kv++a3d0uQ3Mc4=;
 b=08gZQbln6hBQLiWmdTnkl/SkmZPWmh+27Ib7yVkWest94ZBFX+mF+dr1Nq0Ui2u6R0
 zNCY87uy+WcCXbn1xkewaghi3JGDuXV0HdYV8wmrISaUdB18memQ0RhcaktBv+moiNXs
 sNz/H3OgKokdSUlrFCIRDqUCMXrECmze93vW7cU1qFP2p41V76xneAusPpwgojJySZbk
 lBo2lDOJf1n8JrAdIQ4Ysa4ynW5QYYZQJDC81b401Ht8WFzo/xaNnS/keaeJrVQR5Q7c
 gUkBRpOv12G7zr046KhDIZQMBCYUKz+Mle0iYBChtgJz2IXqxoYCTsre6mf17qlms4OV 6ogg==
Message-ID: <4FEF9AC8.3040908@gmail.com>
Date: Sun, 01 Jul 2012 02:33:12 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] EU rules: harmonised use of the 5 GHz frequency
	bands
Reply-To: wireless-regdb@lists.infradead.org, xose.vazquez@gmail.com
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

hi,

* ECC/DEC/(04)08 Harmonised use of 5 GHz for the implementation
   of WAS/RLANs: http://www.erodocdb.dk/Docs/doc98/official/pdf/ECCDEC0408.=
PDF

---cut---
[...]
DECIDES

1. that this Decision designates the frequency bands 5.150-5.350 MHz
and 5.470=965.725 MHz for the implementation of Wireless Access
Systems including Radio Local Area Networks (WAS/RLANs) and the
use of equipment complying with the harmonised standard EN 301 893,
which may also be demonstrated by compliance with equivalent
technical specifications (in the sense of Article 3(2) of the
R&TTE Directive);

2. that in the frequency band 5.150-5.350 MHz, WAS/RLANs stations
shall be restricted to indoor use with a maximum mean e.i.r.p.1 of
200 mW and a maximum mean e.i.r.p. density of 10 mW/MHz in any 1MHz
band;

3. that in the frequency band 5.470-5.725 MHz, the indoor and
outdoor use of WAS/RLANs stations shall be restricted to a maximum
mean e.i.r.p.1 of 1 W and a maximum mean e.i.r.p. density of 50mW/MHz
in any 1 MHz band;

4. that, WAS/RLANs operating in the bands 5.250-5.350 MHz and
5.470-5.725 MHz shall either employ transmitter power control, which
provides, on average, a mitigation factor of at least 3 dB on the
maximum permitted output power of the systems; or, if transmitter
power control is not in use, then the maximum permitted mean
e.i.r.p.1 and the corresponding mean e.i.r.p. density limits in
decides 2 and 3 shall be reduced by 3 dB;

5. that, WAS/RLANs operating in the bands 5.250-5.350 MHz and
5.470-5.725 MHz shall use dynamic frequency selection (DFS) as
described in Recommendation ITU-R M. 1652 to ensure compatible
operation with radiodetermination systems;

6. that, in addition to decides 5, the DFS mechanism shall ensure
that the probability of selecting a given channel will be the same
for all available channels. The intention is to provide, on
average, a near-uniform spread of the loading of the spectrum;

7. that this Decision replaces the previous ERC Decision (99)23;

8. that this Decision shall enter into force on 30 October 2009;

9. that CEPT administrations shall communicate the national
measures implementing this Decision to the ECC chairman and the
Office when the Decision is nationally implemented."
[...]
---end---



* Implementation by country:

http://www.erodocdb.dk/doks/implement_doc_adm.aspx?docid=3D2033
http://www.erodocdb.dk/doks/mapsi_implement.aspx?docid=3D2033


- Yes ... 38

- Yes Partly ... 2
Russian Federation
Georgia

- Under study ... 1
Albania

- No info ... 7
Andorra
Vatican City
Monaco
Moldova
San Marino
Azerbaijan
Belarus


All EU countries, except those listed above, and for 5GHz
bands, should be clones of the current DE configuration:

(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
(5470 - 5725 @ 40), (N/A, 500 mW), DFS

-thanks-

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

