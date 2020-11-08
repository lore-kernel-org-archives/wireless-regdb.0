Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:
 References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=8upHkp4hMQIbeLP/BJEDUSVBnN9lCS4HaRCXCybXbOw=;
 b=0JLZoQRPXVVEaehb4tV9+kZv6
 3MFGseXWGoGEUj8pWTbYYomsWobikFWhF9NJT1XqCc5gK7YuAh9SLY/rjEdpbZJpJylWXevX17sql
 TDTmSnaBk/O/jtBhe84xjYbX+VlaqmlG7PKfnr2TkZYPbCrxkY1Jp/i3U8SnXRwNmcPwQiFi/gLd0
 8Q968KKdeChGxqKcBelru9m+Eto/+oW8fX40St1OtXC0VkA5eAcOQWAK/hMCKcdOZWO/31RWdsAs+
 j1FSz+8xe9ZtD2n0r5hCDeMq86jI4qNHQiFmLFahxc5Aqc9gnGLFU9x4GJQFkXw02zPRw2+P2UsDg
 bdPmU4WuA==;
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbs5j-0004ga-6R
 for wireless-regdb@lists.infradead.org; Sun, 08 Nov 2020 21:19:16 +0000
Received: by mail-io1-xd36.google.com with SMTP id k21so7825799ioa.9 for
 <wireless-regdb@lists.infradead.org>; Sun, 08 Nov 2020 13:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FTL4K2uKfmFgt0YIt6t+8iwXHzzz1n2qDDlir52Ho3g=;
 b=hnSpZfanvgERva3UeA7uxRDxGNep4FF2I5fgM1Rbb79vUxsaLmkuRKQEMs7o2WQgK0
 dxtxK9i0xAQsoG7Xq5LdYc0p2KLb2jXx8AX5A/Kgu5XUSUFxJ65S9vnmw1E0KSlRlKjg
 Ay4ju4N3NzYMtLCrTOcZ8spp0Vy30BzncdYaXb+E1ZfXTTlCI2HmULXX1WSSVqJUIDas
 0Y+q0VbpOlBswJXbiuPouVE4ZCVfp7ED6YDv7bc6EYLKvogUBAb/cu+R7nkzm2Fn44yJ
 SeJjZKfZio9C7Sa8ea7NXcdR5KMorbnsbmLL8Ny2VAQoWE36KU+c6zppq4uu2AvtyIFg vZzA==
MIME-Version: 1.0
References: 
	 <CAPgWZqzskMUOnmdBwh6TEh5yfrbdzg+4bZOUMQPkJffWizZweg@mail.gmail.com>
In-Reply-To: <CAPgWZqzskMUOnmdBwh6TEh5yfrbdzg+4bZOUMQPkJffWizZweg@mail.gmail.com>
From: Pavel Starosek <starosekpd@gmail.com>
Date: Mon, 9 Nov 2020 03:19:01 +0600
Message-ID: <CAPgWZqx-bHc5iEn-fWbzarrUNB5kbMnay_Pr5BKROznOAO0nWQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Kazakhstan (KZ)
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Updates, based on [1] (search for word "RLAN" to jump to the desired
part on the page):

* Extended range 2400-2483.5
* 5150–5250 MHz range may be up to 200 mW
* The same is about 5250 - 5350 MHz according to our local
regulations, but looks like this is incorrect because of TPC?
Therefore, I didn't change this value
* Add 5725-5850 MHz range for indoor usage
* Add 57-66 GHz range. It must be outdoors only, so we don't specify
NO-OUTDOOR at all, right?
* In 5470-5725 changed the bandwidth from 80 to 160 (typo?)
As I understand it, there is no DFS requirement for the 5725-5850
range anywhere in the [2] document.

I can suggest this change. Please check if everything is correct?
---
# [1] http://adilet.zan.kz/rus/docs/V1500010730
# [2] http://adilet.zan.kz/rus/docs/V1500010375
country KZ: DFS-ETSI
    (2400 - 2483.5 @ 40), (20)
    (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
    (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
    (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
    (5725 - 5850 @ 80), (20), NO-OUTDOOR
    (57000 - 66000 @ 2160), (40)

---
Thanks,
Pavel


On Mon, Nov 9, 2020 at 3:16 AM Pavel Starosek <starosekpd@gmail.com> wrote:
>
> Updates, based on [1] (search for word "RLAN" to jump to the desired part on the page):
>
> * Extended range 2400-2483.5
> * 5150–5250 MHz range may be up to 200 mW
> * The same is about 5250 - 5350 MHz according to our local regulations, but looks like this is incorrect because of TPC? Therefore, I didn't change this value
> * Add 5725-5850 MHz range for indoor usage
> * Add 57-66 GHz range. It must be outdoors only, so we don't specify NO-OUTDOOR at all, right?
> * In 5470-5725 changed the bandwidth from 80 to 160 (typo?)
> As I understand it, there is no DFS requirement for the 5725-5850 range anywhere in the [2] document.
>
> I can suggest this change. Please check if everything is correct?
> ---
> # [1] http://adilet.zan.kz/rus/docs/V1500010730
> # [2] http://adilet.zan.kz/rus/docs/V1500010375
> country KZ: DFS-ETSI
>     (2400 - 2483.5 @ 40), (20)
>     (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>     (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>     (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
>     (5725 - 5850 @ 80), (20), NO-OUTDOOR
>     (57000 - 66000 @ 2160), (40)
>
> ---
> Thanks,
> Pavel
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
