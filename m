Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
 In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=4DPVY491lcgJ7UGjVM++J1Xl6uCIDAQzR2qn4Np22Fo=;
 b=lhGUL9K6UAo6NE
 Hic3yY0llZMnLMHb1bswwhPCpfNMW4LyyP1QMel86OWLJRXL4WgvNcNovQVjcBWs6HcSsdvBBcv62
 v635bAIuyFlsfkV+jPyMjt/BIjABE8tutmMVJCCm/pmbEOGZkrHHH+gAOP21XsiU8cJ78BF8Aj379
 oXViUlww9wi8GqIzVZsNJerbimZeqppJ2mtpzuDEFZUnU61JZNPZS7VMLZ2NvCsRbOaMeVGTr4lgp
 ohveQ3W+Ybf/6jUp5HJJiCzAi5Hyu6IVuFnIS9GKjNY7EpX21Hx6nTHK/PFtbduEWjggVQI5eC5+O
 mQxNl7wqETmVnYFjj42w==;
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0Ndq-000437-3g
 for wireless-regdb@lists.infradead.org; Tue, 18 Apr 2017 07:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1492500789; bh=GDEcSuzwCQ+S0P1tTRfCRZcNUvmIaOTTbkNhcN/MCe0=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=P7VyKAyo80rCV9yJm4EhdWSRZK4XYEx9kWSO1QeLYudMQiIJWaf9Ip0KOSfPBtTxn
 YroyoZTuGbmW99cIoti9nshBbLNW7n+edjcKQ3xJ7liHYywIX0pWstTfcEVw80s7Xa
 iWR+fFlMbJd4wUUnJya8PYKwtsMASW1fNYeh/KJE=
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
References: 
	 <CA+XFNZ4kkNyLOj=ER0MbN3s50_Jmn9nTzpJnKb6+gq5dXjg8pQ@mail.gmail.com>
Date: Tue, 18 Apr 2017 09:33:02 +0200
In-Reply-To: <CA+XFNZ4kkNyLOj=ER0MbN3s50_Jmn9nTzpJnKb6+gq5dXjg8pQ@mail.gmail.com>
 (Aron Rosenberg's message of "Mon, 17 Apr 2017 16:52:15 -0700")
Message-ID: <87efwqgogh.fsf@miraculix.mork.no>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] Set NO-OUTDOOR Flag for EU Countries
 on 5150 to 5350
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
To: Aron Rosenberg <arosenberg@logitech.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This should apply to IS, LI and NO as well since Directive 2014/53/EU is
marked "Text with EEA relevance".  Ref
https://en.wikipedia.org/wiki/European_Economic_Area


Bjørn

Aron Rosenberg <arosenberg@logitech.com> writes:

> wireless-db: Update rules for EU 5ghz to add NO-OUTDOOR
>
> According to [1] the EU now requires NO-OUTDOOR to be set
> on all 5Ghz channels within 5150 to 5350 frequencies
>
> [1] http://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.00_30/en_301893v020100v.pdf
>
> Signed-off-by: Aron Rosenberg <arosenberg@logitech.com>
> ---
>  db.txt | 88 +++++++++++++++++++++++++++++++++---------------------------------
>  1 file changed, 44 insertions(+), 44 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 0bc068e..7f0ba4c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -79,8 +79,8 @@ country AS: DFS-FCC
>
>  country AT: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -131,8 +131,8 @@ country BD: DFS-JP
>
>  country BE: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -163,8 +163,8 @@ country BG: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
>   # 5 GHz Radio Local Area Networks (RLANs), ref:
>   # II.H01 of the List, BDS EN 301 893
> - (5170 - 5250 @ 80), (23), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   # II.H01 of the List, I.54 from the List, BDS EN 301 893
>   (5490 - 5710 @ 160), (27), DFS
>   # Short range devices (SRDs) in the 5725-5875 MHz frequency range, ref:
> @@ -316,8 +316,8 @@ country CX: DFS-FCC
>
>  country CY: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -373,8 +373,8 @@ country DE: DFS-ETSI
>
>  country DK: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -408,8 +408,8 @@ country EC: DFS-FCC
>
>  country EE: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -457,16 +457,16 @@ country FM: DFS-FCC
>
>  country FR: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
>
>  country GB: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -512,8 +512,8 @@ country GP: DFS-ETSI
>
>  country GR: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -566,8 +566,8 @@ country HT: DFS-FCC
>
>  country HU: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -579,8 +579,8 @@ country ID: DFS-JP
>
>  country IE: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -609,8 +609,8 @@ country IS: DFS-ETSI
>
>  country IT: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -731,24 +731,24 @@ country LS: DFS-ETSI
>
>  country LT: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
>
>  country LU: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
>
>  country LV: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -838,8 +838,8 @@ country MR: DFS-ETSI
>
>  country MT: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -979,8 +979,8 @@ country PK: DFS-JP
>
>  country PL: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -1000,8 +1000,8 @@ country PR: DFS-FCC
>
>  country PT: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -1032,8 +1032,8 @@ country RE: DFS-ETSI
>
>  country RO: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -1072,8 +1072,8 @@ country SA: DFS-ETSI
>
>  country SE: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> @@ -1087,16 +1087,16 @@ country SG: DFS-FCC
>
>  country SI: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
>
>  country SK: DFS-ETSI
>   (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> + (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>   (5490 - 5710 @ 160), (27), DFS
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
