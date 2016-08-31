Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yw0-x22f.google.com ([2607:f8b0:4002:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bf1Qh-0007XT-HF
 for wireless-regdb@lists.infradead.org; Wed, 31 Aug 2016 09:03:32 +0000
Received: by mail-yw0-x22f.google.com with SMTP id z8so26934604ywa.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 31 Aug 2016 02:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=1YrcWJIQZcjnzBtQsvBquVplWjiTqSGCWsOi72xZCpc=;
 b=BMrQtac43BZE6KuTIKrvnZj0QqrmUlLsSw0cpgps8QQjAk0YoX8iMqYxFSJqFAKvmz
 gd+BYFBoQj+V1cvUHpxzPV02i4oDOHVY2VRsGaJgngr4EHg6gh1/vLn6RXAGgH4zDt9g
 TwPds7pfepLKY9/+lVpTAYz3DID4aCpZ9b5HCpF6Yh//h+4VrmTSVzKTHQTbeJLo3lfr
 EBuiJ5i4YxnEau3h+p0MRjvvmVwH/15zm8Pz7TtulYnzpIH528gmemjYD+HvI2eCgCWE
 2WcSiFEVAfIxPUFK3JO50tVvW27xyWSV1kddmke0RUJuEaDkAAZ1+XewondU8Wm2G0qG 5gWw==
MIME-Version: 1.0
In-Reply-To: <CABPxzY+na77=379E2tRDnbDzE=LOrz9ObahLTLoBTg+hhd8DBw@mail.gmail.com>
References: 
	 <CABPxzY+na77=379E2tRDnbDzE=LOrz9ObahLTLoBTg+hhd8DBw@mail.gmail.com>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Wed, 31 Aug 2016 14:32:49 +0530
Message-ID: <CABPxzYJHMTSCvoLaLohfKxHDVR3uQk8jKGF3aDtMWJu4-fxfuw@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFD] mac80211: Handling local operating
 class in (E)CSA
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
To: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 25, 2016 at 12:56 PM, Krishna Chaitanya
<chaitanya.mgit@gmail.com> wrote:
>
> Hi,
>
> Some AP's use local operating class in (E)CSA IE's. Currently
> mac80211 fails the parsing of those IE's and results in a
> disconnection.
>
> What is the best way to add support for local operating classes?
>
> a) Maintaining a per country operating class table in cfg80211
>
> b) Embed operating class info in regdb.txt (crda)
>
> c) Remove the usage of band to calculate frequency? I dont know
> of a generic formula to calculate this across bands. So not possible.
>
Any ideas?

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

