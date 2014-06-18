Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxN0z-0004ay-6K
 for wireless-regdb@lists.infradead.org; Wed, 18 Jun 2014 21:03:30 +0000
Received: by mail-la0-f42.google.com with SMTP id pn19so904662lab.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 18 Jun 2014 14:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=WcheGezxMok5UCCPQ6NoluXOn8Gpt92URlU6AjeeZIc=;
 b=eAtfwKaEkmC1OTJj9HdgAFTMp7kLg2fsq6TB+0IUvL/SQwZlVI9fHBcA3j/gQwbkOm
 kW6j/2qyCGgz3h7swmulWSClBwvKKzVfIfmvdTSqo6Lnf4Yv3xUHo7DBJtiUjF5GGp+O
 zF8Hb8wLJ13EGUcqu9t3+3gNdONkab8KNm9trM6lDd1VdMh+vc36YC4jLuEHpO0ioysn
 0SEihRaEcxIeVB8wQCSUXDDau/m0UE3iXfM/1ngTDJOfD82PpM6TbIJCmKEC0fJ4GzKr
 XdCbodHy6+stz3Ev+iHWFMGrdjP7AMvvYreFN2qoZeM2+Q9bY/nIv+EhbR3ZjHFe8JvB G1eQ==
MIME-Version: 1.0
In-Reply-To: <1402554938-4495-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1402554938-4495-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 18 Jun 2014 14:02:45 -0700
Message-ID: <CAB=NE6UeSD29K9FuzAtvH08WqM7HEeobEw9TbLpGMpf+caGQvQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] crda: simplify text parsing for
	country/rules
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 11, 2014 at 11:35 PM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Remove strange parsers.
>
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>


Applied and pushed, thanks!

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

