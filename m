Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=5oy37v1ruS/PyEFU9GLjD9j+ZqtnOLhoKg+AAUeK+W0=;
 b=mOoBMhdNML7ngQ
 6Ge4V0ohlJSA4f0Jp+avTR/IAKKtivYeJOhAj418iinPGYa4ixTCDREWmzyOR0SC8YWLU+Ws4GJA7
 PPE6dOJv9w4igLFfENybrfmWTx9DN6duf9NrlSszaPJYfxB4m8cPp0aM5a1Rr1l+lVkyyzhMVrKMH
 T9fkf3LF2lMUg4qzvCuIdUKFTcLgkjrotC4HR86yS5AHTJ9PylP9V4zupYEcjmCsv5ziafKk44USq
 hTSqLcVNb+rhML6DdNvrcABL44I3ApbH0u8qZ389AO882zZn4qXpVLL6VHFkKaY0gyRtQNkdckL/2
 GgDri9d5Wy1ISfcT8Spg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpC9E-0001Jh-EU
 for wireless-regdb@lists.infradead.org; Mon, 13 Aug 2018 12:40:38 +0000
Received: from mail-it0-f71.google.com ([209.85.214.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fpC90-0003s9-R9
 for wireless-regdb@lists.infradead.org; Mon, 13 Aug 2018 12:40:22 +0000
Received: by mail-it0-f71.google.com with SMTP id h17-v6so9164577itj.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Aug 2018 05:40:22 -0700 (PDT)
Date: Mon, 13 Aug 2018 07:40:19 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180813124019.GA4063@ubuntu-xps13>
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

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
