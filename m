Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=l/II79JeCNzrV0fzuOk/Dn2RxVrG33b6rTlOoKiPARk=;
 b=ZS0DpE+Ny2CdrIQFckQDMLD75
 sVP2ytGtb7tp9U6tQlz93R1eokIKR5HfQ2Vnt4LTuoTnXChceFllUyD7zAxcx4xVcEqB/R1rEkBq+
 ePtuvA371ZfTTWd4wIOF/Z/ozMRK3l/ByVPsleDnbg7LQ+TWB57nP6GXiXX02FDgTmRRHYHfvT4BF
 EJnsRNnzHAXfZar8sNVpheqkq1Gbu7qZgGv3SaerNEcRR79Nz50FIagKpc+8ysXiVImuLxjNHAhUi
 O39+h464LIZVrY+RRLGX/BgTlrkLCq7eJkB/fFYA2Y20ILeqBj7tcy2dgpqtr1fc3vEa79xB4uHcv
 5lD/C78rQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5VG1-0001Y6-6X
 for wireless-regdb@lists.infradead.org; Fri, 29 Jan 2021 15:00:22 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1l5VFz-0005W1-CI
 for wireless-regdb@lists.infradead.org; Fri, 29 Jan 2021 15:00:19 +0000
Received: by mail-io1-f71.google.com with SMTP id i143so7055198ioa.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 29 Jan 2021 07:00:19 -0800 (PST)
Date: Fri, 29 Jan 2021 09:00:15 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YBQi/8pEIlUdSAjQ@ubuntu-x1>
References: <20201222191738.56240-1-illia.volochii@gmail.com>
 <20201222192329.56983-1-illia.volochii@gmail.com>
 <YBMTdvq71TGJjbvR@ubuntu-x1>
 <CAGoMFrb217ey=QAfnbXVHX_YUzcfXTCdYpTVEo1DuXRuLEdetg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGoMFrb217ey=QAfnbXVHX_YUzcfXTCdYpTVEo1DuXRuLEdetg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Ukraine (UA)
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
To: Illia Volochii <illia.volochii@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 29, 2021 at 04:49:16PM +0200, Illia Volochii wrote:
> чт, 28 січ. 2021 о 21:41 Seth Forshee <seth.forshee@canonical.com> пише:
> > > +     (2400 - 2483.5 @ 40), (100 mW)
> >
> > You mention that some conditions are required for outdoor use of this
> > range. One of those is TPC, which would require reducing the max EIRP to
> > 50 mW. There's also some language about the SSID format which implies a
> > license might be required, but it's not entirely clear from the
> > translation I'm reading. Seems like it might be best to keep this at 100
> > mW, NO-OUTDOOR.
> 
> I agree.
> Could you please add the flag while applying the patch? Or should I
> send an updated version?

I can add it.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
