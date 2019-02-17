Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=uE2q96n9VgnhkcbXNvQtrSXGynYqkUA95KiSJkLwwqk=;
 b=hXbA7dgChwD0z7
 JVNA+GXvrz612nOhsv016Eg3TUHWuB1jk4oc/igIhDpInOVmFUFv51eWsfZsQ0tlshsbVI/dRAO68
 mlvoePFe8s3ZGeE2BT7sipXAZ2eBpWsKOB6Zdj8Jrkh6fgSQyXsswkk4RdV2445cEBvMnr0FrKdCm
 TY4v6X4F2qGX/uakwaIMZLh0nDu5EZ3t4MQEBwutZ3rCjZmHGVZN6LExHv/ciAFCQRwGum4TmhyM7
 i6Tr7czUwbUpT32S9Pu3WqdNiCdLSkk4/gyxfIvlC8jtdCQx1WQPHB7rLUFDGPHcaTHrzVd0G1iNW
 c6+lTiYhWODSNbP8ujkw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvK5b-0002Rm-JX
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:54:29 +0000
Received: from mail-ed1-f71.google.com ([209.85.208.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gvK5Z-0005U5-Uu
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:54:26 +0000
Received: by mail-ed1-f71.google.com with SMTP id c18so5775089edt.23 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Feb 2019 02:54:25 -0800 (PST)
Date: Sun, 17 Feb 2019 11:54:23 +0100
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190217105423.GB22074@ubuntu-xps13>
References: <20190113215500.22292-1-peter.lundkvist@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190113215500.22292-1-peter.lundkvist@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Sweden (SE) on 2.4/5/60 GHz
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
To: Peter Lundkvist <peter.lundkvist@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jan 13, 2019 at 10:55:00PM +0100, Peter Lundkvist wrote:
> In reference to the current "Regulations on exemptions from the
> licence obligation for certain radio transmitters" issued by
> the Swedish Post and Telecom Authority (PTS) on 18 Sep 2018
> and valid from 1 Nov 2018 [1]:
> 
> * 2400-2483.5M: extend bounds (§ 154)
> * 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB (§ 162)
> * 5250-5350M: extend bounds, add NO-OUTDOOR (§ 162)
> * 5470-5725M: extend bounds (§ 164)
> * 5725-5875M: introduce; EU SRD provisions have been implemented (§ 166)
> * 57-66G: add NO-OUTDOOR (§ 202)
> 
> [1] https://pts.se/globalassets/startpage/dokument/legala-dokument/foreskrifter/radio/beslutade_ptsfs-2018-3-undantagsforeskrifter.pdf
> 
> Signed-off-by: Peter Lundkvist <peter.lundkvist@gmail.com>

Sorry for the delay. Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
