Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-x235.google.com ([2607:f8b0:4003:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atfeb-0001S1-Gt
 for wireless-regdb@lists.infradead.org; Fri, 22 Apr 2016 18:18:10 +0000
Received: by mail-ob0-x235.google.com with SMTP id n10so46631996obb.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 22 Apr 2016 11:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZMXufeyyi2ol857Yn2ks6XwPhumcVlIhLwKaO+xdVug=;
 b=Cst3GYGEEIzTOon6w5iyClo5aDFEy3oy9XwTlcnODdGVnLRSLHjbQ8CZHnctI1zqwv
 zYTO4r6tZmccYwll9y8Oi7dWpireKtIAmnxcLWp9S6oCgY33m8kG3D5zygstVXEZqC2x
 HGYXVRQuBMQGj0MjT/qukWs1dpXAjw3QAdRHMrWblx5yeKAGozXtlUyrpLv4YKGFPPSX
 PV7oSlWqCRJ7QUee8xPoMoIohEgcXKjhc756TMTWloUEtFklxZQg6Mh6xDLBo+1LqsNT
 KvO9fTYQC/TfSIcyIj8eqDDqirOOM26ryTkXivt+tW3eEHpYSvbmF+FFYHcS3xi1j8G2
 7tWA==
Date: Fri, 22 Apr 2016 13:17:39 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160422181739.GB109717@ubuntu-hedt>
References: <20160422123614.2B4EC2063D@density.slowthinkers.net>
 <20160422135529.GA109717@ubuntu-hedt>
 <20160422171236.600332063D@density.slowthinkers.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160422171236.600332063D@density.slowthinkers.net>
Subject: Re: [wireless-regdb] Update regulatory rules for NL as per ETSI EN
	300 440-1
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
To: Anne Marcel Roorda <marcel@density.slowthinkers.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 22, 2016 at 07:12:35PM +0200, Anne Marcel Roorda wrote:
> 
> In message <20160422135529.GA109717@ubuntu-hedt>, Seth Forshee writes:
> 
> <Snip>
> 
> > I'm looking at the document you reference as translated by Google, and
> > I'm not seeing anything there to support these changes. I can't find any
> > reference to ETSI 300 440-1. The section which would appear to apply
> > here (article 2 paragraph o) references Annex 11 for permitted frequency
> > bands, and this does not include the range that you're adding.
> > 
> > I didn't read the document in its entirety though, so I may have missed
> > something. If so, could you please point me to the specific section
> > which would permit operation in that range?
> 
>   Please see "Bijlage 11" (Non specific SRD) Nr. J.

I see it now. I know I looked at that section, so I must have overlooked
it. Thanks.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

