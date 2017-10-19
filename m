Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ZJpQnl8/WVeEKjZTfZqHfx+ZMRCEYLeaJkaw5HORj8Y=;
 b=JtPCayjx4LwhrN
 2wTq9HdQERMXBDmMtt7f6jGT5gX7Wb5b1/gVfvbRsAUO6N5loKmolGUJ4IqRs9rpkaP87tWhR3hHm
 PkqQdyL/0HTJjMOvT+t7hXt2O5+72v7l8KcpHk1qNkoid1Fp2WfpKXO791+UxIXWEHXm81CMPUdzz
 7zez8iMHC1iy4WXzhMCOh4dZJ6Wr0rvx41vw09Tii9QFE4zpthvtQMFk+f5QgjUJ2LQqavYmvXuGj
 BlCPAA0XH8YSEbX2hOyGCSxKi15hfcViyLvaAZ419/iTXIgbM/EOuTbERc8XMYachUzFTPscgaFCu
 SpNS1PNh/03yn1uO2x1g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5J8n-0004SX-Ho
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:18:29 +0000
Received: from mail-it0-f71.google.com ([209.85.214.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5J8S-0000s6-4r
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:17:52 +0000
Received: by mail-it0-f71.google.com with SMTP id c3so8881440itc.19 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 15:17:52 -0700 (PDT)
Date: Thu, 19 Oct 2017 17:17:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171019221749.okqt6y75tmnu3c4o@ubuntu-hedt>
References: <20170823081100.GB44003@mercury.local>
 <20170901154715.hpkm4iluogxqj3lz@ubuntu-xps13>
 <20170914073118.GA42838@mercury.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170914073118.GA42838@mercury.local>
Subject: Re: [wireless-regdb] [PATCH v2] Update rules for Turkey 5ghz
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
To: Edwin Steele <edwin@wordspeak.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Sep 14, 2017 at 05:31:18PM +1000, Edwin Steele wrote:
> Update rules for Turkey 5ghz
> 
> Based on the information from [1] the power limit for 5170-5250 Mhz
> can be increased. Additionally 5170-5330Mhz are restricted to indoor
> use.
> 
> There are references to e.i.r.p density in [1] that will affect the
> power available for wide channels, but they are not reflected in
> this change as it's unclear how they would be specified.
> 
> [1] https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
> Signed-off-by: Edwin Steele <edwin at wordspeak.org>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

