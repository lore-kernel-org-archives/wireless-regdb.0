Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=l+EJ4S3GhsTcPAhyd3sf6zneyNxyK/dNNLzjcIt06lg=;
 b=n6+HBytECEgESa
 6NDXz6w1aWmWqqBd87DpoQX9tCY8LXmE0oqj2FLrwxj8Jbj2Y0s8yfIRipbxGZi5d+31bTILS36lc
 Jh3KFXfSL/1StjrrrEuI1MuBZbIidkaXCXWMIZVKC55cUZdQgyV4ljlQ4udx3G/M9HsxQwZB0Sw3W
 SfbeBPmPelsc0cihKomAsdqwt5PZkFlkNZddU24oZRnuaHbJ2/wX5PNOdKaX+3voc5BRyWbKEY+l7
 KsZNNVF30vM+M8glRhxXXcej55cudVwsUH+avNLTHapj3nLHtytoYnFrbBCXTf+c9WFl3sGLNwOKJ
 h203US29E4MxnonaAErw==;
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJI9e-00AZF5-EG
 for wireless-regdb@lists.infradead.org; Thu, 26 Aug 2021 16:23:06 +0000
Received: by mail-oi1-x231.google.com with SMTP id u25so5345558oiv.5 for
 <wireless-regdb@lists.infradead.org>; Thu, 26 Aug 2021 09:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Yr1uAb5Ak5IBNGd+lP4ceoLekYOhJeheizNJ0VZLsgc=;
 b=jg1FpWnHh0qmTemU/B4hda3yo3fi+5IwG/mzxITLMl4ZVWYOB9UwlAsDUpp4GqqQMX
 MXZjWXlTMAo8xkk4rokK/TGscD/kc/mD3u/wYvovhzmL+3qR1PN0PLQH0HkkIyWVCZMH
 JdKf/3Bknpuj4+HqPfoYgBP5IVAYACTAedGhTM8c3+7GsjqDp8QN3T+DVNGx6DV1Utvy
 wc1DAAhkodRKpzZJgzu6c8sKa2tER3LM5WhXNa2IQtd/66JAHKaIySjAweflO+uvZ7xT
 BdahnDNZqeXPXY1bgDDH5vvx/5GUJqzM3fbiX+dibzaVL/VyzNlTbIywCn/W7mW5H6sD RNsg==
MIME-Version: 1.0
References: <20210825031409.10552-1-victorsbayas@gmail.com>
 <YSemAGfADr2WTey8@ubuntu-x1>
In-Reply-To: <YSemAGfADr2WTey8@ubuntu-x1>
From: Victor Bayas <victorsbayas@gmail.com>
Date: Thu, 26 Aug 2021 11:22:49 -0500
Message-ID: <CAD+f07-egB+kgjbbY2mN=0KaV+HddQfxRB019o65um3QR4ceaw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory rules for Ecuador
 (EC)
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

My apologies, I forgot to CC the mailing list in my previous reply.

El jue, 26 de ago. de 2021 a la(s) 09:32, Seth Forshee
(sforshee@kernel.org) escribió:
>
> On Tue, Aug 24, 2021 at 10:14:09PM -0500, Victor Bayas wrote:
> > Update the frequency ranges and power limits according to the current Ecuadorian norm [1],
> > corrected 5GHz maximum bandwidth since there are no legal restrictions in this subject.
> >
> > Note: 60GHz channels 1 to 3 are allowed without license for Point-to-Point links but
> > they aren't for Point-to-Multipoint links so they were omitted in this patch.
> >
> > [1] https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf
> >
> > Signed-off-by: Victor Bayas <victorsbayas@gmail.com>
>
> Thanks for the patch! A few comments below.
>

Thank you for your feedback.

> > ---
> >  db.txt | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index e7b11cf..4630854 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -504,12 +504,14 @@ country DZ: DFS-JP
> >       (5250.000 - 5330.000 @ 80.000), (23.00), DFS, AUTO-BW
> >       (5490.000 - 5670.000 @ 160.000), (23.00), DFS
> >
> > +# Source:
> > +# https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf
> >  country EC: DFS-FCC
> > -     (2402 - 2482 @ 40), (20)
> > -     (5170 - 5250 @ 20), (17)
> > -     (5250 - 5330 @ 20), (24), DFS
> > -     (5490 - 5730 @ 20), (24), DFS
> > -     (5735 - 5835 @ 20), (30)
> > +     (2400 - 2483.5 @ 40), (1000 mW)
> > +     (5150 - 5250 @ 80), (50 mW), AUTO-BW
>
> It looks like 5150-5250 MHz also requires DFS.

Yes, I tried contacting ARCOTEL without success to get a clarification
from them because other countries don't require DFS for 5150-5250 MHz.

>
> > +     (5250 - 5350 @ 80), (250 mW), AUTO-BW, DFS
> > +     (5470 - 5725 @ 160), (250 mW), DFS
>
> 5250-5350 and 5470-5725 MHz require TPC. Since Linux does not support
> TPC the power limits need to be reduced by 3 dBm, which puts them at 125
> mW.

Thanks for the heads up, I forgot there was a TPC requirement.

>
> I also don't see any DFS requirement for 5470-5725 MHz.

Section 2.1.6 says that users of 5250 - 5350 MHz and 5470 - 5725 MHz
should apply the interference mitigation measures mitigation measures in
Recommendation ITU-R M.1652 to ensure compatible behavior with
radiodetermination systems.

ITU-R M.1652 norm section 1.1 recommends the usage of DFS for
5250 - 5350 MHz and 5470 - 5725 MHz, so I inferred the DFS
requirement for 5470 - 5725 MHz as well.

https://www.itu.int/dms_pubrec/itu-r/rec/m/R-REC-M.1652-1-201105-I!!PDF-E.pdf

Greetings,
Victor Bayas.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
