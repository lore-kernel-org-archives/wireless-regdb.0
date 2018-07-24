Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=uAGF9ungoE0H+PFzdostLYfh1yeVFPx3Arcy6lRBDXw=;
 b=anyFDf06/y5JVm
 +JBSoWd7Ul50HfKcf0nz01SDcSN2pxKxjx6Vi8rkcT/6pSmKOIgZ+nc7Ws6M5ouFdupEa71U+HxZH
 d49+DB3gRwAo66hQu7uAwk99d3vYmBFW2BgAs+NNGlt++k9MfA7YMXo5XMkQLNkhoHFKe3tzy+mbk
 HNnZvv6Sg3ZRxmxF6CDRQh50DjOORhcg6b3i4+wD/usl5x4YDNzjSodVNFjrYYo4/WOxSGBL6TFVT
 4DIcit8AsJYgJshk8uc5WC0ZX9hrusfznjhrlSF8wh9U/QqFEysBM6e5JeuvGputXSrGF6B7VBSCR
 Z3MhtlwuOBk1l3GhKvMQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fi4H2-00061l-LR
 for wireless-regdb@lists.infradead.org; Tue, 24 Jul 2018 20:51:15 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fi4Go-0006yy-Rc
 for wireless-regdb@lists.infradead.org; Tue, 24 Jul 2018 20:50:58 +0000
Received: by mail-io0-f200.google.com with SMTP id t23-v6so3575191ioa.9 for
 <wireless-regdb@lists.infradead.org>; Tue, 24 Jul 2018 13:50:58 -0700 (PDT)
Date: Tue, 24 Jul 2018 15:50:57 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180724205057.GD3636@ubuntu-xps13>
References: 
	 <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update rules for
 Hungary (HU) on 2.4/5/60G, 5725-5875MHz
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
To: bkil <bkil.hu+Aq@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Jun 30, 2018 at 10:40:34PM +0200, bkil wrote:
> * 2400-2483.5M: extend bounds
> * 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB
> * 5250-5350M: extend bounds, add NO-OUTDOOR
> * 5470-5725M: extend bounds
> * 5725-5875M: introduce, as EU SRD provisions have been implemented
> * 57-66G: add NO-OUTDOOR
> 
> Freely available online references have been added hosted by the regulatory
> body in Hungary, the National Media and Infocommunications Authority.
> 
> To refer to a specific section, you can grep for the frequency in question.
> 
> Translation key:
> "Csak beltéri" / "Épületen belüli használatra korlátozott" = indoor only;
> "Kültéri és beltéri" = both indoor and outdoor;
> "Nem működő TPC esetén a maximális teljesítményjellemzők 3 dB-lel
> csökkennek." = reduce max power specs by 3dB in case of no TPC;
> "Rögzített kültéri telepítés nem megengedett" = no fixed outdoor install
> 
> Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>

Apologies, I had started reviewing this a while back, but got distracted
and forgot to come back to it.

The changes look okay as far as I can tell. However the patch itself
seems to be corrupt -- one line is wrapped, and there are whitespace
problems. This is probably due to your mail client, I suggest using
git-send-email.

Can you try re-sending?

Thanks,
Seth

> ---
>  db.txt | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 8963c01..cadfe77 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -581,13 +581,24 @@ country HT: DFS-FCC
>   (5490 - 5730 @ 160), (24), DFS
>   (5735 - 5835 @ 80), (30)
> 
> +# http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
> +# http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
> +# http://nmhh.hu/dokumentum/319/kis_hatotavolsagu_eszkozok_srdk.pdf
>  country HU: DFS-ETSI
> - (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
> - (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> - (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
> - # 60 GHz band channels 1-4, ref: Etsi En 302 567
> - (57000 - 66000 @ 2160), (40)
> + # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 300 328
> + # additionally: 100mW @ 10MHz channels, 50mW @ 5MHz (max. 10mW/MHz)
> + (2400 - 2483.5 @ 40), (20)
> + # ref: 2005/513/EK
> + # note: TPC not needed @ 5150-5250
> + (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> + # note: max would be +3dB with TPC @ 5250-5725
> + (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> + (5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
> + # ref: Short Range Devices (SRD) - 2006/771/EK, (EU) 2017/1483, MSZ
> EN 300 440, MSZ EN 302 064
> + (5725 - 5875 @ 80), (25 mW)
> + # 60 GHz band channels 1-4, "Fixed outdoor installation not allowed"
> + # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 302 567
> + (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> 
>  country ID: DFS-JP
>   # ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
> -- 
> 2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
