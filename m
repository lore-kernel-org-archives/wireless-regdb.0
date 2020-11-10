Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=aCRUip5nhUhBegIYTFpbjLgHGuWjhIGCRIcT5hesvc0=;
 b=kPQ0brFp31vRhbBNppTt9Ukun
 /vZk5K0QkIgqZu664LwqYpSGXpfU4TfO5P4SEXFUKnyTX2UwqEaeUJ2eI1dTfxalyQ7I2oZ4wnY5F
 SgXnyberOobmbySzkCNqB2kf5MUbTj16KVdiW887YZuJYBYglBAxe9iAP1/gMDTcOnbQAtqPQiVc4
 E2EEdfhzY0g0GodRvIWSZSXmKD0Pn2WPKCG0DS8xvmmdR8LobQ12xxQZElk7CM9vhuB5LvAW7sydV
 CkFok44CLXOWnHpGyiyoN6LgHaznmmEPSXUdn35EBycEAcjPYuxqRNulE1gLzwmD3Jj3NfIMAYNsT
 r89j8wcQQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcbNH-0001of-Ab
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:40:25 +0000
Received: from mail-oo1-f72.google.com ([209.85.161.72])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcbNF-0003NJ-H4
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:40:21 +0000
Received: by mail-oo1-f72.google.com with SMTP id o7so833454oom.13 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Nov 2020 13:40:21 -0800 (PST)
Date: Tue, 10 Nov 2020 15:40:18 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110214018.GM6125@ubuntu-x1>
References: <CAPgWZqzskMUOnmdBwh6TEh5yfrbdzg+4bZOUMQPkJffWizZweg@mail.gmail.com>
 <CAPgWZqx-bHc5iEn-fWbzarrUNB5kbMnay_Pr5BKROznOAO0nWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPgWZqx-bHc5iEn-fWbzarrUNB5kbMnay_Pr5BKROznOAO0nWQ@mail.gmail.com>
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
To: Pavel Starosek <starosekpd@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Nov 09, 2020 at 03:19:01AM +0600, Pavel Starosek wrote:
> Updates, based on [1] (search for word "RLAN" to jump to the desired
> part on the page):

Thanks for the updates. I think there are some questions though be
answered in the documents you linked to. I find that tables like these
often have incomplete information. Sometimes they refer to other
documents, but I'm not seeing any such references here. I've tried to
find more complete documents, but I haven't had any luck.

Overall these look okay, but if you are able to find any additional
information to clarify some of these points it would be helpful.

> * Extended range 2400-2483.5
> * 5150–5250 MHz range may be up to 200 mW
> * The same is about 5250 - 5350 MHz according to our local
> regulations, but looks like this is incorrect because of TPC?
> Therefore, I didn't change this value

It would be nice to know for sure, but without any additional
information keeping it at 20 dBm is the safe bet. Many countries do
require TPC in this range.

> * Add 5725-5850 MHz range for indoor usage

Here it would be nice to know if there are any additional restrictions
on use, e.g. TPC or DFS. That appears to be rare though, so it seems
unlikely.

> * Add 57-66 GHz range. It must be outdoors only, so we don't specify
> NO-OUTDOOR at all, right?

That is generally the case for this range. What you suggest looks fine.

> * In 5470-5725 changed the bandwidth from 80 to 160 (typo?)

Probably not a typo, if 160 MHz channels are allowed the entry probably
just hasn't been updated. But those documents don't really state whether
or not they are allowed.

> As I understand it, there is no DFS requirement for the 5725-5850
> range anywhere in the [2] document.

I don't it documenting any DFS requirement at all though, and severaly
entries in the db have a DFS requirement, so I'm not sure that really
clears up the question. I'm reading a translation of the document
though, so maybe I'm just not finding them.

Let me know if you're able to find any more information to clear up
these questions. Are you able to send the changes as a patch? If you
don't know how, that's fine, I can create a patch.

Thanks,
Seth

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
> 
> On Mon, Nov 9, 2020 at 3:16 AM Pavel Starosek <starosekpd@gmail.com> wrote:
> >
> > Updates, based on [1] (search for word "RLAN" to jump to the desired part on the page):
> >
> > * Extended range 2400-2483.5
> > * 5150–5250 MHz range may be up to 200 mW
> > * The same is about 5250 - 5350 MHz according to our local regulations, but looks like this is incorrect because of TPC? Therefore, I didn't change this value
> > * Add 5725-5850 MHz range for indoor usage
> > * Add 57-66 GHz range. It must be outdoors only, so we don't specify NO-OUTDOOR at all, right?
> > * In 5470-5725 changed the bandwidth from 80 to 160 (typo?)
> > As I understand it, there is no DFS requirement for the 5725-5850 range anywhere in the [2] document.
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
> >

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
