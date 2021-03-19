Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=3ohG6wU+YV8E3KKszKQJaHMUNLlQfAYTMwKfzEDKdsM=;
 b=ZqtQJ9hZMlZ5d/
 Xq+3ZqD8a/hKyQBDbZJVHyxMUNAf17yOY866l1Hg50+5mBQ3QE8pykcOl98kny/HZhA5f6aru4NsK
 voPl6F6M1nHMprULYZqPco9V4AuAdS3rr6XNJ6UFAxwT4O2unDd4llCgHkTvLeWAStv2Pr9FFubm6
 2cF43IuM3npNFOvuiIbWiprsrG0pUkJ5iM0f21sc7zvMFnSF+tDsGwF+ixsTsgLflKHaSNuth7DUo
 QTYxtRrbWjU91z1VEyqAyUY04EFf/evkMwKDTS5F2BalfWld22014VQKiHVhjV4YNASQTwQ+hRYpO
 uaiYNy+b+wb2qreTQCwQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNGHO-007YUt-6c
 for wireless-regdb@lists.infradead.org; Fri, 19 Mar 2021 14:39:12 +0000
Received: from mail-oo1-f70.google.com ([209.85.161.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lNGHN-0004KJ-02
 for wireless-regdb@lists.infradead.org; Fri, 19 Mar 2021 14:39:09 +0000
Received: by mail-oo1-f70.google.com with SMTP id y16so22808812oou.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 19 Mar 2021 07:39:08 -0700 (PDT)
Date: Fri, 19 Mar 2021 09:39:05 -0500
From: 'Seth Forshee' <seth.forshee@canonical.com>
Message-ID: <YFS3ib8XI//whLek@ubuntu-x1>
References: <002501d7066d$1a51cf50$4ef56df0$@yandex.com>
 <YFIdm5Y+i2WRdIdU@ubuntu-x1>
 <001201d71bb2$28ac7b40$7a0571c0$@yandex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001201d71bb2$28ac7b40$7a0571c0$@yandex.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Cuba (CU) on 5GHz
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
To: Jose Daniel Rodriguez <josedanielr@yandex.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 18, 2021 at 12:49:58AM -0400, Jose Daniel Rodriguez wrote:
> > -----Mensaje original-----
> > De: Seth Forshee <seth.forshee@canonical.com>
> > Enviado el: miércoles, 17 de marzo de 2021 11:18 am
> > Para: Jose Daniel Rodriguez <josedanielr@yandex.com>
> > CC: wireless-regdb@lists.infradead.org
> > Asunto: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
> > Cuba (CU) on 5GHz
> > 
> > On Thu, Feb 18, 2021 at 10:12:45PM -0500, Jose Daniel Rodriguez wrote:
> > > Hello
> > >
> > > I'm sending this patch to update wireless regulations of Cuba based on
> > > the linked resolution of the Ministry of Communications from 2019.
> > >
> > > Best,
> > > Jose D.
> > >
> > >
> > > PS: The linux-wireless mailing list rejects my messages, it says:
> > > "Your address is not liked source for email".
> > 
> > Thanks for the patch. Please remember to include a Signed-off-by tag in
> > patches as indicated in the CONTRIBUTING file.
> > 
> > Also note that there is some line wrapping in the email, which makes the
> > patch fail to apply. It's easy to fix up in this case, but something to watch out
> > for in the future.
> > 
> 
> Thanks for pointing it out, I already changed my email client settings. I hope it works as it should.
> 
> First, I would like to clarify that the resolution makes a clear differentiation between legal persons (institutions, organization, companies, etc.) and natural persons (normal people) and when they refer to private networks it can be of either type.
> 
> I'm not an expert on these topics, so please excuse me if I make any mistakes. I hope that with your help we can find the right configuration.
> 
> > >
> > >
> > > ---
> > >  db.txt | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 32d71f5..e6e26ce 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -372,11 +372,12 @@ country CR: DFS-FCC
> > >  	(5735 - 5835 @ 20), (30)
> > >
> > >  # Source:
> > > -# https://www.mincom.gob.cu/es/marco-legal
> > > -# - Redes Informáticas
> > > -# Resolución 127- 2011 Reglamento de Banda de frecuencias de 2,4 GHz.
> > > +#
> > > https://www.mincom.gob.cu/sites/default/files/marcoregulatorio/r_98-19
> > > _regla
> > > mento_redes_inalambricas.pdf
> > >  country CU: DFS-FCC
> > >  	(2400 - 2483.5 @ 40), (200 mW)
> > > +	(5150 - 5350 @ 80), (200 mW), NO-IR, NO-OUTDOOR
> > 
> > I'm reading a machine translation of the document, which isn't a great
> > translation. There I see power limits for "Internet Service Providers to public"
> > and for "Public service operators of telecommunications." Does this mean
> > that private networks are not allowed in this range? If so, this range should
> > probably be omitted.
> > 
> 
> My interpretation was that if "Internet Service Providers to public" are allowed to use this range then the "public" should be allowed to use it too, but they don't define what is the public, so you are probably right about omitting this range.
> 
> > What provision necessitates the NO-IR flag, both here and for 5470-5725
> > MHz?
> > 
> 
> As this range and the previous are allowed for legal persons to provide service to the public but they don't explicitly allow natural person, I set the NO-IR flag, so it's the former who irradiate first and the natural person be able to associate. Notice that by the resolution these two ranges are only allowed to legal persons.

That makes sense to an extent. I think the way NO-IR is implemented
would prevent active scan, ibss, etc, but it would not stop setting up
an AP in this range. But omitting it could prevent clients from
connecting to legitimate APs. There's not really a perfect answer here,
but what you've done is probably the best compromise available. So I
guess this is okay.

> 
> > > +	(5470 - 5725 @ 80), (200 mW), NO-IR
> > 
> > I don't see any EIRP limit below 250 mW for this range, so why 200 mW?
> 
> As they don't explicitly allow natural persons, and therefore, they don't mention its power limits in these ranges, I (maybe wrongly) took the same limits as in the range where they do allow natural persons.

I see no reason this cannot be 250 mW.

Could you send an update with this limit rasied, and with a
Signed-off-by tag?

Thanks,
Seth

> 
> > 
> > Thanks,
> > Seth
> > 
> > > +	(5725 - 5850 @ 80), (200 mW)
> > >
> > >  country CX: DFS-FCC
> > >  	(2402 - 2482 @ 40), (20)
> > > --
> > > 2.26.0.windows.1
> > >
> > >
> > > _______________________________________________
> > > wireless-regdb mailing list
> > > wireless-regdb@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/wireless-regdb
> 
> As you see, these three issues have the same cause, which is whether we should allow the ranges 5150 - 5350 and 5470-5725. I would like to leave the decision to you, I will be fine with whatever you recommend.
> 
> Should I send a new patch with the fixes after you reply?
> 
> Thank you,
> Jose D.
> 
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
