Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LIczFb3d5JK1pRNrjk2o7u8+LhNPhTtt2ZR6zbHtB7c=;
 b=RTYo7ek0T48N//
 G824q6UQc7lRfPO7cYLp85e2UPVRgQt/PvB3HgHGG707IRhDmM2UtcycOsW+6l+4LlcBVesZDC5yh
 4uTuMedF5wf0MlTa9wF33OBXqg30FAjact2RZVNVq0Y++LMuwEZvIuYH1A2aoKxxMR1/785Ti/F9Q
 bWWwOBfmY4C3B3joBb+WTvrExxfPNp+2a8662L6iLBssx1V6pB/GU0oelweCN0T3ZI0/0ym/g9KhT
 GlNcSUm0f7QcEir2eI9OHzN5KgZHpEU2G7cZEKRgcfS/xCxcf18GTpHpTKi+BwxdTc0HYbOX64MWJ
 1zz83ZNdAInzGp0YnHcw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUaH-0001xU-5L
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2019 21:02:03 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hnUa8-0002Ae-I6
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2019 21:01:52 +0000
Received: by mail-io1-f72.google.com with SMTP id q26so24692279ioi.10 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2019 14:01:52 -0700 (PDT)
Date: Tue, 16 Jul 2019 16:01:48 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190716210148.GQ5418@ubuntu-xps13>
References: <20190702141944.25902-1-martin@strongswan.org>
 <20190713130253.GH5418@ubuntu-xps13>
 <8c7c0973-b1c9-0032-1819-e868855b896f@inrete.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c7c0973-b1c9-0032-1819-e868855b896f@inrete.it>
Subject: Re: [wireless-regdb] Update to wireless-regdb about Italy
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
To: gb@inrete.it
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Jul 13, 2019 at 07:10:37PM +0200, gb@inrete.it wrote:
> Hi
> 
> I'm Italian and I work in Italy, I realize that nowadays the regdb entry for
> Italy is as follows:
> 
> country IT: DFS-ETSI
>     (2402 - 2482 @ 40), (20)
>     (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
>     (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
>     (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
>     # 60 GHz band channels 1-4, ref: Etsi En 302 567
>     (57000 - 66000 @ 2160), (40)
> 
> And it misses the lines:
> 
>     # Short Range Devices (SRD) (ETSI EN 300 440)
>     (5725 - 5875 @ 80), (25 mW)
> 
> Common to may European Countries.
> 
> I dug a bit in the current Italian regulation that is online on the website
> of the
> Ministry of Economic Development: https://www.mise.gov.it/index.php/en/
> 
> In the section about the "National Plan of Frequencies" (only in Italian) at
> the URL:
> 
> https://www.mise.gov.it/index.php/it/comunicazioni/radio/pnrf-piano-nazionale-di-ripartizione-delle-frequenze
> 
> 
> Two PDF files are linked:
> 
> --Tabelle di attribuzione Tabella B (27,50 MHz – 10.000 MHz) (pdf)
> https://www.mise.gov.it/images/stories/documenti/Tabella_B_2750_MHz-10000_Mhz.pdf
> 
> Which at page 28 allows the use for ISM according to the general European
> legislation: 2006/771/CE ERC/REC 70-03
> 
> --Note (esplicative, di carattere tecnico e con attribuzioni in deroga al
> piano) (pdf)
> https://www.mise.gov.it/images/stories/documenti/NOTE-pnrf.pdf
> Which at page 334, in the paragraph 3.2.3 states in a explicit way the
> permit to operate the in the band 5.725 ÷ 5.875 MHz,
> with SRD and max power at 25 mW.
> 
> According to this regulation there's no reason not to have the:
>  (5725 - 5875 @ 80), (25 mW)
> Inserted for Italy in the regdb
> 
> Who can do it ?

The page/section numbers you gave for the second document don't
correspond to what I'm seeing, but it does look like you are right that
the entry can be added to the regdb. Anyone can send patches for the
regdb, so if you know how to do that please feel free to do so.
Otherwise let me know and I can prepare a patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
