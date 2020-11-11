Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:
 References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=wm0GYkx+f21SvJLozT95PIcTUEGgWPFKiMX+KPdlMFg=;
 b=jI2OBbkEdvoZxEkORrzKkI6Nv
 GZeGkpXJyKcmFqqwnDeiOu4LXMFWFsKHg7GR9WoUQi9RIKI4+HhdJ+kc9EEz5tQoHSn/b5J7EIrNY
 +Z1c40JSbf0OX6xMgwdnoPwbrmpFDnvbj66KPrV+Q4ofXxAz0+UR8EBwWW53qWSRgwBLPBnns5zQz
 j/6zU5/2BbVeK5kO6ecjPm92NorYPaCu6LyIMhrzgq1sWS7xj/ltQD92fjpm7H+R7RYnDPhqcFbYh
 clYYvGDvpjHnNE6Dflaq66azlMXKiPyeCpTHa+fHuPsQ875mK+pms85DaQcEWt9CgxUB7l/dPyj9d
 nRogfXWUw==;
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcuz7-0001AP-65
 for wireless-regdb@lists.infradead.org; Wed, 11 Nov 2020 18:36:47 +0000
Received: by mail-il1-x134.google.com with SMTP id y9so2907793ilb.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Nov 2020 10:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+wpPDp5C2mfXksiXANn3tDBw7lLbI2GLzRbA1oMqfYo=;
 b=bmEmSdmAAdKnBl86h3cAbNTLBlzgzY+P5DwUeAYhlrqMyW1oaMgKtavjFxuCdsUrbN
 vEiDwcQxMm1UvQqIFcam+O1qSPs7/ekeQBRXO8QWyQAI13+8YDEOARLbpPfP+SIlAwnv
 29DjRUYiY+8vVCXJi6aFDv4ksiMHP6/apnpCaj1jzUaaig+h5MfJPgpSu9p/pYjBG/JB
 yWQDH9a3uIYWH2i/B1QJ61gJ2WmSHvp6w7nCFh3gQM48UTzI0qVcWG7pY1BAUH6DzL9y
 IOVSYUg86CeZlIcwRA86HgUj2kUf4pUNhzDfgJTgBNT1hh+dGFZRrjB4ScnTrRrPCIMi 0m3Q==
MIME-Version: 1.0
References: <CAPgWZqzskMUOnmdBwh6TEh5yfrbdzg+4bZOUMQPkJffWizZweg@mail.gmail.com>
 <CAPgWZqx-bHc5iEn-fWbzarrUNB5kbMnay_Pr5BKROznOAO0nWQ@mail.gmail.com>
 <20201110214018.GM6125@ubuntu-x1>
In-Reply-To: <20201110214018.GM6125@ubuntu-x1>
From: Pavel Starosek <starosekpd@gmail.com>
Date: Thu, 12 Nov 2020 00:36:29 +0600
Message-ID: <CAPgWZqwycT=84krWfyb9HPTEqznnzfqQtUB6JpHW_D66hOBvAQ@mail.gmail.com>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Nov 11, 2020 at 3:40 AM Seth Forshee <seth.forshee@canonical.com> wrote:
>
> On Mon, Nov 09, 2020 at 03:19:01AM +0600, Pavel Starosek wrote:
> > Updates, based on [1] (search for word "RLAN" to jump to the desired
> > part on the page):
>
> Thanks for the updates. I think there are some questions though be
> answered in the documents you linked to. I find that tables like these
> often have incomplete information. Sometimes they refer to other
> documents, but I'm not seeing any such references here. I've tried to
> find more complete documents, but I haven't had any luck.
>
> Overall these look okay, but if you are able to find any additional
> information to clarify some of these points it would be helpful.
>
> > * Extended range 2400-2483.5
> > * 5150–5250 MHz range may be up to 200 mW
> > * The same is about 5250 - 5350 MHz according to our local
> > regulations, but looks like this is incorrect because of TPC?
> > Therefore, I didn't change this value
>
> It would be nice to know for sure, but without any additional
> information keeping it at 20 dBm is the safe bet. Many countries do
> require TPC in this range.

Probably DFS is required in 5470-5650 MHz range because of 5.450В rule
in [2].
> > * Add 5725-5850 MHz range for indoor usage
>
> Here it would be nice to know if there are any additional restrictions
> on use, e.g. TPC or DFS. That appears to be rare though, so it seems
> unlikely.

I didn't find any TPC or DFS requirements about this 5725-5850 range.
> > * Add 57-66 GHz range. It must be outdoors only, so we don't specify
> > NO-OUTDOOR at all, right?
>
> That is generally the case for this range. What you suggest looks fine.
>
> > * In 5470-5725 changed the bandwidth from 80 to 160 (typo?)
>
> Probably not a typo, if 160 MHz channels are allowed the entry probably
> just hasn't been updated. But those documents don't really state whether
> or not they are allowed.
>
> > As I understand it, there is no DFS requirement for the 5725-5850
> > range anywhere in the [2] document.
>
> I don't it documenting any DFS requirement at all though, and severaly
> entries in the db have a DFS requirement, so I'm not sure that really
> clears up the question. I'm reading a translation of the document
> though, so maybe I'm just not finding them.
>
> Let me know if you're able to find any more information to clear up
> these questions. Are you able to send the changes as a patch? If you
> don't know how, that's fine, I can create a patch.

In fact, I'm not sure at all if document [2] applies to our case. Since the
rules in it regulate the actions for transportable radio navigation services
(used in sea, air, space). So these are additional regulations.

The main rules are described in document [1]. And according to them,
these rules do not apply to Wi-Fi devices, according to
chapter 1, paragraph 1, subparagraph 1. Please read from this paragraph:
http://adilet.zan.kz/rus/docs/V1500010730#z34
Since Wi-Fi devices refer to the table in Appendix 1, I think they are
priority.

I'll send a patch soon.
>
> Thanks,
> Seth
>
> >
> > I can suggest this change. Please check if everything is correct?
> > ---
> > # [1] http://adilet.zan.kz/rus/docs/V1500010730
> > # [2] http://adilet.zan.kz/rus/docs/V1500010375
> > country KZ: DFS-ETSI
> >     (2400 - 2483.5 @ 40), (20)
> >     (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> >     (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> >     (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
> >     (5725 - 5850 @ 80), (20), NO-OUTDOOR
> >     (57000 - 66000 @ 2160), (40)
> >
> > ---
> > Thanks,
> > Pavel

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
