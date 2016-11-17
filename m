Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7Ow6-0004nc-PY
 for wireless-regdb@lists.infradead.org; Thu, 17 Nov 2016 15:49:15 +0000
Received: by mail-wm0-x22a.google.com with SMTP id a197so318576551wmd.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 17 Nov 2016 07:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=+wilwee8vDiumHleD8u9XEjwGfkrwx+mnFPPquWJ5RU=;
 b=yyf99F3SxQYCd8imRvlHLguYtdf4PHYbh55FKxxCX3b8ONi1H684+M16b69/LXznFM
 J/rfZEO3a5SPTls2QG/n2qk+6yxXdTunPN38GEtLMMph1Cx5FsCiyNFqUk+jcPiMwjXL
 nP2NcpKA3rV+uds4Eu+lTiqkwfURI53YDrSUXx/DTz1dSNMvAKJdvj5ZN1NOrhDBfi8d
 O51pWifwN8kVimYTeRmjauUX4cb4oynu71p63GxnnWpDPc5Bjk2n68lFBjn76hqOsjrG
 c8Tz9sRIInGaSEnHY+HQbcAQ2uXvVskn1k4va0mjr2PGGifG5afjYxsScvSovPuz8KAS Qz9g==
MIME-Version: 1.0
In-Reply-To: <CAC1jSDQsTir3v0zWSdvpd3He-ERDDLLFMhKQbd=Vc-PfEkAcTQ@mail.gmail.com>
References: 
	 <CAC1jSDQsTir3v0zWSdvpd3He-ERDDLLFMhKQbd=Vc-PfEkAcTQ@mail.gmail.com>
From: Manuel Cuadrado <manuel.cuadrado@gmail.com>
Date: Thu, 17 Nov 2016 16:48:51 +0100
Message-ID: <CAC1jSDQV3oP=dvD863dGGzPYwz6LyCANXb_sbrPOr5i+nLxFOg@mail.gmail.com>
Subject: Re: [wireless-regdb] 5 Ghz regulation in QATAR need to be updated
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

according to this official document from the communications regulatory
authority  http://www.ictqatar.qa/sites/default/files/qatar_national_frequency_allocation_table_qnfat_0.pdf,
bands (U-NII-1 & U-NII-2A) are also authorized in Qatar , so  and
updated in the db is required



     # Follow US 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
     (5150 - 5250 @ 80), (23), AUTO-BW
-    (5250 - 5350 @ 80), (17), DFS, AUTO-BW
+    (5250 - 5350 @ 80), (23), DFS, AUTO-BW

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

