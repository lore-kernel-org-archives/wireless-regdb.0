Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=m0A6a165/BLLGbO++gWym+0J9ACCcK/M1SnLCKY6zRM=;
 b=TEGolz8lKJd5TG
 8IW4t3s/McItNijE/jpjsqpvKvprGF8eBDRpT7wdLJ3s5B58Ce5QNvWDjwCUhDP0VP+nI3zLS6Q2I
 trCj8loCeiAt6yNdry3OHOwZHSsx6R2KLr6PDmaEBKkQcOUhPl7HVPU4GnA/M1Pue2/TQpTH9DKxI
 DhU12jo7fU4BShdaqFwAf0dXSHoSgG7UEzVOG8ppGtz4iRDdxelSaYD0RWnumvAXznucPy3grO4pK
 8cfBZ/QdgIAnndh+mCfT9XxMdN15S4JD3o6n8PGSQFdq4eLJqEjEnMpz9+ItRFcQ5nVnQ3+X+Y2QZ
 bgElz6Zlr49CO2ggn0xw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMFfU-0002Zn-EE
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:34:18 +0000
Received: from mail-it0-f70.google.com ([209.85.214.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fMFfT-0005Jr-1T
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:34:15 +0000
Received: by mail-it0-f70.google.com with SMTP id o189-v6so4800929itc.8 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 May 2018 09:34:14 -0700 (PDT)
Date: Fri, 25 May 2018 11:34:11 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180525163411.GX3401@ubuntu-xps13>
References: <20180518171725.28828-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518171725.28828-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Fix iteration in
 create_wmms() for python 3
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 18, 2018 at 12:17:25PM -0500, Seth Forshee wrote:
> The iteration in this function is over countries.itervalues(),
> which is not compatible with python 3. Switch to iterating over
> contries.values() instead.
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

