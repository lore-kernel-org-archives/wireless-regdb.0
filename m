Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=+M3wF/p6X2nuHxtyL2vbwgEH8n9eSdmrbhgRkKHs2G8=;
 b=FOJC6aIS8G9gww
 DedKqeCW0YHJF/1X/E8/h7bl3Ry8XtTactQTdeOYbP4XDVF1HbKRzGn0NO0ky9DpzlwTpKuZ5Jnl4
 1pm6ruD/WcLCJCljztUJtJzFBc7SVML3MVX37RxfjKEx7t8LbKYhVovoOGsaWQHF3TJvjHur4yv+d
 e0nDr8Y+IU5lFbTuiUN3f+NN+ngsMlKtDxP8xyvkGkUowf2Lk3VAYiYvB2aDkaJgCvgi6Ff4rR92v
 cc+c95mEct4/OVAIAtYu3TotBz0BYfvSkODqqc5IHm1DAg4fUBZ4sJwbjmesiERtYsoOEry6DfnYU
 BEsdm7vantarVFhGSyCw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMFfB-0002Se-A6
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:33:59 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fMFf6-0005Ir-MP
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:33:52 +0000
Received: by mail-io0-f197.google.com with SMTP id g5-v6so4793863ioc.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 May 2018 09:33:52 -0700 (PDT)
Date: Fri, 25 May 2018 11:33:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180525163349.GV3401@ubuntu-xps13>
References: <20180518144641.24995-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518144641.24995-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Panama (PA) and add 60 GHz rule
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
Cc: Michael Chen <michaelchentejada@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 18, 2018 at 09:46:41AM -0500, Seth Forshee wrote:
> Updates are based on the information in
> http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf.
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

