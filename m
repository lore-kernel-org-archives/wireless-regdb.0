Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5mHG-0008SG-Al
 for wireless-regdb@lists.infradead.org; Thu, 14 Feb 2013 00:02:15 +0000
Received: by mail-we0-f178.google.com with SMTP id x48so1449824wey.23 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Feb 2013 16:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:message-id:date:from:user-agent:mime-version:to:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=SPv6oGhpenf2ePMboZqkTDILKTVFALFeicafVIys83Q=;
 b=N6w1pAecCgkFcqdpd/PWELkghD4y5Ze8fI5/5iCdPKZqi/iJ6q+teZjR3IhvOTuwyn
 tSpBbF8dJdnWvBcLe3MWGWwW028skfqQOlOUwFbjxaNAEwMOsJLPw8gKLPNL5Hh314XV
 KglpOK3ChkNLy/8UkU450OFToiw3zEdkY2xQ5qC1hQUuoTfuvYjSjFExxfnBfW5pk3hu
 +Av3z44+DcugDVGZuqQVWkSezntvEHYvxuEPssdaX5xwH3A/rdTKrCQPnJ4HLnSjCwMg
 UwKgLu/xXms9np5AVkrJdl3CBzXA2gPRdSgKPAquB7A9BNVCA6OSqHwc/K8X+lVr4Q+L OsOQ==
Message-ID: <511C2981.4000806@gmail.com>
Date: Thu, 14 Feb 2013 01:02:09 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <CAL1G+-HfPJnwvisiE5Vr0ihenwKzL3_QL40DLPP_PsPyv+nveQ@mail.gmail.com>
 <20130206192544.GH2148@tuxdriver.com> <511C1745.4000502@gmail.com>
In-Reply-To: <511C1745.4000502@gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Serbia (RS) on 2.4 and 5GHz
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 02/13/2013 11:44 PM, Xose Vazquez Perez wrote:

> Serbia is under ETSI/CEPT rules( ECC/DEC/(04)08 ), see summary[1]:
> 
> 5 GHz current rules are too much liberal and incomplete:
> 
> country RS:
> 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
> 	(5150 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR
> 	(5470 - 5725 @ 20), (3, 1000 mW), DFS
> 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
> 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

> They should be changed to "standard" ETSI rules:
> 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
> 	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
> 	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
> 	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
> 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
> 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

sorry,

5150-5250 should be 200 mW:
 	(5150 - 5250 @ 40), (N/A, 200 mW), NO-OUTDOOR

<http://www.erodocdb.dk/Docs/doc98/official/pdf/ECCDEC0408.PDF>

2. that in the frequency band 5.150-5.350 MHz, WAS/RLANs stations
shall be restricted to indoor use with a maximum mean e.i.r.p. of
200 mW and a maximum mean e.i.r.p. density of 10 mW/MHz in any 1MHz
band;

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

