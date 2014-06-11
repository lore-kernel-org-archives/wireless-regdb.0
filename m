Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-x230.google.com ([2607:f8b0:400d:c01::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wunzr-0002j5-1t
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 19:15:44 +0000
Received: by mail-qc0-f176.google.com with SMTP id r5so328567qcx.21 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Jun 2014 12:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type:content-transfer-encoding;
 bh=2voAONOPgNDSb2QnRemSYwLyCz0RG36M4VikrHCQKMg=;
 b=38ilr7wV39s4uOD9bMg3moTykdfUTMzWmh+Q47Q3drTvJ2Pg/NwxQWe62qkM4RNXeX
 /rgePZc8fe34cxVebk0jrNxKZUz87pT+YqGNawvSAiYbZSz7r5dArseP5sBGz/EgtRwK
 bo2u9K4tt8vIxnweCQbjW0cov7sWuWBiTnz7I=
MIME-Version: 1.0
In-Reply-To: <20140519185046.GH7650@tuxdriver.com>
References: <20140519185046.GH7650@tuxdriver.com>
Date: Wed, 11 Jun 2014 21:15:19 +0200
Message-ID: <CALhHN=pEo5H4AnWpOAhPs8LyK35wyhGJyvHTrh12nauQ-tOpDg@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2014-05-19
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On 19 May 2014 20:50, John W. Linville <linville@tuxdriver.com> wrote:
> A new release of wireless-regdb (master-2014-05-19) is available at:
>
> http://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2014.05.19.tar.gz
>
> Here is the short log of the changes included since the 2013-11-27
> release:
>
> Bjørn Mork (1):
>       wireless-regdb: update NO's regulatory rules
>
> Janusz Dziedzic (3):
>       wireless-regdb: allow max bandwidth to be AUTO calculated
>       wireless-regdb: set AUTO bandwidth for world regulatory
This two above should not be merged. That was first version of auto
bandwidth calculation, we skip :)

>       wireless-regdb: add AUTO-BW rule flag
>
> Johannes Berg (1):
>       regdb: Republic of Korea: fix double rule
>
> John W. Linville (2):
>       wireless-regdb: correct some flag damage...
>       wireless-regdb: update regulatory.bin based on preceding changes.
>
> Luis R. Rodriguez (1):
>       wireless-regdb: embrace the Developer Certificate of Origin for contributions
>
> Ronald Wahl (1):
>       wireless-regdb: add channels 52..64 and 100..144 to world regdom
>
> --
> John W. Linville                Someday the world will need a hero, and you
> linville@tuxdriver.com                  might be all we have.  Be ready.
>
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
