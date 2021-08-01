Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=dvrGI2xBpBdV7nN3QHn2SX07euCHcweCzNgQcFCOi6o=;
 b=t/AIbzGWR13Qoe
 frnYl1K2vhjPoSwPz9IQ+V2rp0hGqW7kIFBVm7lzEYN+NnceTxPw5RxGKVA1tFgToghFWMLLvQEba
 1sGuS6mYiywceQ6BJHIXdxqMuBTeUA00KgR+fF4upp/kLzOq97Z56BPH2UlgqG4PTrIX24dBlWR6x
 rv1wIL71Kq9AIpXCuIc459Drmn7E1y36M3zR7KZBpCe4Ba/0skKCdOrpSiU9xOtUxACfe56EcyVos
 XL1gxEadS0jckjhVqC/el54XwIghf4t6xzsjbR560GlB28qZHoIJCjktThuYQfSRO9Mugv04QfMZf
 qZ+0THgCP/8hK7zre1NA==;
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mA0VC-00Cd3r-D8
 for wireless-regdb@lists.infradead.org; Sun, 01 Aug 2021 01:42:56 +0000
Received: by mail-yb1-xb31.google.com with SMTP id d73so22683777ybc.10 for
 <wireless-regdb@lists.infradead.org>; Sat, 31 Jul 2021 18:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bPt1wuf08rGseocxIrquG5W562ANFATDjSxGwwlidFs=;
 b=JuF4paeQHZ0xEXz8T53uvP+m6zteB9CdLOQgm+20cZ51nlTbY38BNWVJwX7714Mk8S
 Yqg8aur2v1BCbsJXw+NUBv5r1yLt8EnhSwYIEirf+OxPj6RqVAEtUjK5UhhEE7W9FQm+
 TnQkxgBj6lTlty7NNZD5U+RSnV4GIFwbqri8x8icsw4+KJ7l0gZjxkyOpr2ghGsp0Sts
 6K2K4UxPhe7cXIFJEnNjDYQ/o7HAKaEDxk1SiVjb4Ap3oXHcWko9kkVpwtXuTH4eY0cy
 AN4/6mnY4mCnYEEwQAsrUqS3tlhTuRMrDo1zhbW/9UvntWDdP9UEvicjKNdn8SYV+oWw +E9w==
MIME-Version: 1.0
References: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
 <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
 <YPgvMph+3vRbrol3@ubuntu-x1>
 <CANB4YXSDuYndC26KPkV+XqPkowbN54MMceuj7MNaxh+EwLN4kw@mail.gmail.com>
 <YPg83HXFIXDAEFx1@ubuntu-x1>
 <CANB4YXS64QtxsgY0bx_Ri7bWfTY_5Ry7PbGwaGT3QVZb380vgQ@mail.gmail.com>
In-Reply-To: <CANB4YXS64QtxsgY0bx_Ri7bWfTY_5Ry7PbGwaGT3QVZb380vgQ@mail.gmail.com>
From: Timo Witte <timo.witte@gmail.com>
Date: Sun, 1 Aug 2021 03:42:42 +0200
Message-ID: <CANB4YXTKpu3gOJ4om8yo6ZSvnS497tk1cU-=56TGaktY2QBV-g@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 6GHz
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Any updates on this Seth?
can we just add the "NO-OUTDOOR" line then as i did in my updated
patch, if the kernel does not support overlapping / identical
frequency ranges with different power limits?

Best regards,
Timo


On Wed, Jul 21, 2021 at 5:51 PM Timo Witte <timo.witte@gmail.com> wrote:
>
> Ok then let's just remove the 25mW line.
> Here is the new patch:
>
> diff --git a/db.txt b/db.txt
> index 1e5ed03..debd878 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -448,6 +448,12 @@ country CZ: DFS-ETSI
>  # Bereich 57 GHz - 66 GHz für Funkanwendungen für weitbandige
>  # Datenübertragungssysteme; „Multiple Gigabit WAS/RLAN Systems (MGWS)“).
>  # https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2011_08_MGWS_pdf.pdf
> +#
> +# Allocation for the WiFi 6E Band (Allgemeinzuteilung von Frequenzen im
> +# Bereich 5945 MHz - 6425 MHz für drahtlose Zugangssysteme,
> +# einschließlich lokaler Funknetze WAS/WLAN („Wireless Access Systems
> +# including Wireless Local Area Networks“))
> +# https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf
>  country DE: DFS-ETSI
>   (2400 - 2483.5 @ 40), (100 mW)
>   (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> @@ -455,6 +461,8 @@ country DE: DFS-ETSI
>   (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>   # short range devices (ETSI EN 300 440-1)
>   (5725 - 5875 @ 80), (25 mW)
> + # WiFi 6E
> + (5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>   # 60 GHz band channels 1-4 (ETSI EN 302 567)
>   (57000 - 66000 @ 2160), (40)
>
>
> On Wed, Jul 21, 2021 at 5:27 PM Seth Forshee <sforshee@kernel.org> wrote:
> >
> > On Wed, Jul 21, 2021 at 04:57:03PM +0200, Timo Witte wrote:
> > > From f9a99269b00f961e40024632c7b831c615bfa392 Mon Sep 17 00:00:00 2001
> > > From: Timo Witte <timo.witte@gmail.com>
> > > Date: Wed, 21 Jul 2021 16:51:40 +0200
> > > Subject: [PATCH] add wifi6e for germany
> > >
> > > Signed-off-by: Timo Witte <timo.witte@gmail.com>
> > > ---
> > >  db.txt | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 1e5ed03..411b7ac 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -448,6 +448,12 @@ country CZ: DFS-ETSI
> > >  # Bereich 57 GHz - 66 GHz für Funkanwendungen für weitbandige
> > >  # Datenübertragungssysteme; „Multiple Gigabit WAS/RLAN Systems (MGWS)“).
> > >  # https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2011_08_MGWS_pdf.pdf
> > > +#
> > > +# Allocation for the WiFi 6E Band (Allgemeinzuteilung von Frequenzen im
> > > +# Bereich 5945 MHz - 6425 MHz für drahtlose Zugangssysteme,
> > > +# einschließlich lokaler Funknetze WAS/WLAN („Wireless Access Systems
> > > +# including Wireless Local Area Networks“))
> > > +# https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf
> > >  country DE: DFS-ETSI
> > >         (2400 - 2483.5 @ 40), (100 mW)
> > >         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> > > @@ -455,6 +461,10 @@ country DE: DFS-ETSI
> > >         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> > >         # short range devices (ETSI EN 300 440-1)
> > >         (5725 - 5875 @ 80), (25 mW)
> > > +       # WiFi 6E
> > > +       (5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> > > +       # WiFi 6E Short range (Outdoor allowed)
> > > +       (5945 - 6425 @ 160), (25 mW), AUTO-BW, wmmrule=ETSI
> >
> > Unfortunately the kernel doesn't support multiple rules for a given
> > range with differing flags. Currently it is necessary to specify either
> > the indoor power limit with NO-OUTDOOR or the outdoor power limit, but
> > not both.
> >
> > Thanks,
> > Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
