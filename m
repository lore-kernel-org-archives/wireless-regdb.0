Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=QEcOJ6JVJzxI5K2VuVbmoijFx0LMMJXJpa4udP28WyE=;
 b=LrDsiVcEN3PzAO
 6bC055wNb9qQrbYJcjQWfCEzMLL+G/5TZP9jyiAd2O8T+Uzm5vxPBaCBCWt71xvtUFpKraiGWTJAF
 RI3/IT84maQrOXpijOUIX2UTCkx0jZRydceBDq94+p+ESwHRPQP+0qH1Ur/pcS7tq5A2/L87GsDcz
 s4DhgA6HPzQAP1Np4897QgNqhboyNJYXOMOM6p+NxHMcOO4Y+W884Y1REV31bfR5OCduHWePFbXzG
 EHI6jBHNEytd/Zj6CcHvW9W6nP4L+XsiK+wTgA6YIam2NCCS1CNiDffAePmIvcPBS6e4O/alR9DnE
 8/VCIDSX37Xg2doNlHdA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMFfB-0002SV-Ad
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:33:59 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fMFex-0005If-Ct
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:33:43 +0000
Received: by mail-io0-f197.google.com with SMTP id u16-v6so4711053iol.18
 for <wireless-regdb@lists.infradead.org>; Fri, 25 May 2018 09:33:43 -0700
 (PDT)
Date: Fri, 25 May 2018 11:33:39 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180525163339.GU3401@ubuntu-xps13>
References: <20180515191126.19189-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180515191126.19189-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz
 rule for France (FR)
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
Cc: Mathieu =?utf-8?Q?Peyr=C3=A9ga?= <mathieu.peyrega@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 15, 2018 at 02:11:26PM -0500, Seth Forshee wrote:
> Based on [1] and [2], use of short range devices in this range
> is now permitted in France. Add a rule for this range, using the
> power limit of 25 dBm as specified in these documents and in
> ETSI EN 300 440.
> 
> [1] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> [2] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

