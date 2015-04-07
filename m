Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp-out05.msg.oleane.net ([62.161.7.3])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YfQ3d-0003sy-Th
 for wireless-regdb@lists.infradead.org; Tue, 07 Apr 2015 09:44:35 +0000
Received: from smtp28.msg.oleane.net (smtp28.mail.priv [172.17.20.150]) 
 by smtp-out05.msg.oleane.net with ESMTP id t377v8uO022561
 for <wireless-regdb@lists.infradead.org>; Tue, 7 Apr 2015 09:57:08 +0200
From: "Jean-Pierre Tosoni" <jp.tosoni@acksys.fr>
References: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
 <20150326192532.GB61113@ubuntu-hedt> <20150326204221.GD5622@wotan.suse.de>
 <1427702614.26117.1.camel@sipsolutions.net>
 <20150330211018.GU5622@wotan.suse.de>
 <CALhHN=qp5AeVwER6BwA4Djga2b2OVDCK7YYdDjrxqTOY0fwiLQ@mail.gmail.com>
In-Reply-To: <CALhHN=qp5AeVwER6BwA4Djga2b2OVDCK7YYdDjrxqTOY0fwiLQ@mail.gmail.com>
Date: Tue, 7 Apr 2015 09:35:36 +0200
Message-ID: <000d01d07105$70a0b5a0$51e220e0$@acksys.fr>
MIME-Version: 1.0
Content-Language: fr
Subject: Re: [wireless-regdb] CAC time syntax in regdb.txt
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: 'Janusz Dziedzic' <janusz.dziedzic@tieto.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Thanks Janusz, I will have a look at that.

-----Message d'origine-----
De=A0: wireless-regdb [mailto:wireless-regdb-bounces@lists.infradead.org] De
la part de Janusz Dziedzic
Envoy=E9=A0: vendredi 3 avril 2015 07:27
=C0=A0: Luis R. Rodriguez
Cc=A0: Jean-Pierre TOSONI; Seth Forshee; Johannes Berg;
wireless-regdb@lists.infradead.org; Luis R. Rodriguez
Objet=A0: Re: [wireless-regdb] CAC time syntax in regdb.txt

On 30 March 2015 at 23:10, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> On Mon, Mar 30, 2015 at 10:03:34AM +0200, Johannes Berg wrote:
>> On Thu, 2015-03-26 at 21:42 +0100, Luis R. Rodriguez wrote:
>>
>> > This would require generating two binary files and supporting that. =20
>> > This was never done. We could also try to somehow mesh both=20
>> > versions together with one larger file that has both and try to=20
>> > remain compatible. That's the ideal solution IMHO.
>>
>> Given the file format, I don't think this will be possible.
>>
>> > Instead of sticking to CRDA updates to rely on this for support=20
>> > what we really need to do is mesh in CRDA support upstream into the=20
>> > kernel since the kernel now supports the cryptographic needs that=20
>> > CRDA had. I was planning on doing this during the upcoming Hackweek=20
>> > at SUSE but if anyone else wants to try that before please feel free.
>>
>> And given that we want this direction anyway, I'm not sure that the=20
>> multi-file-format CRDA solution will really be economical.
>>
>> For the kernel, we should probably define an extensible file format=20
>> anyway, and then just do it once.
>
> Ack. I can try to address both then during Hackweek unless someone=20
> wants to jump on it sooner.
>

Hello Jean-Pierre,

Before this will be ready, you can always chek crda-tiny implementation,
where signed db.txt file is used (skiped bin file) - and CAC time works
fine.
So, you can check this patch: [RFC 2/2] crda: add crda_tiny implementation .

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

