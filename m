Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wue8K-0002Tl-O1
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 08:43:49 +0000
Received: by mail-lb0-f181.google.com with SMTP id q8so4570234lbi.40 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Jun 2014 01:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=oIse4U9tsaneXLnICfTN+uRjr0OCZlkfg2LPVAqpNDw=;
 b=fbPYYV/Q0lDTUeqAYxh3fUErhsoU8iwcyTTtKndcgkKvvNbiRhxKdXpKQSL+2n6Clo
 KyFmsnPUJbOsGafx0LTr7/r7Vnd16b7Yzn7EdmebQBSYIJsEYkQWpoDrR84dVZrq9wV8
 p5EFuS7LHF8EmazwCY8S3Y27jc4kYR90dEo6MB7jkg0DJhc7+DqbyPf78xx0lS5pBK1z
 8S5I46LZWwfWo2+oIWWPkywYlp0uxsXs9Ivj8Kt8sEP7qmuUYg2FS/SVQ3uTqJmYfqaC
 WK5oXrEnw1TAZhD/KB1SFUZb7TKWOoinnbp1zWDMV5jLS8iVmeIsj5Ks0FYiQPvZFuKu aU1Q==
MIME-Version: 1.0
In-Reply-To: <1402462835-3281-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1402462835-3281-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 11 Jun 2014 01:43:05 -0700
Message-ID: <CAB=NE6XB-u05fa0hO-Vxg5Gim9U0vPfLOhz+bOeB-WQ_-9THTA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] cfg80211: reg: setup correct alpha2
	after intersection
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
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 10, 2014 at 10:00 PM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Setup correct alfa2 in last request after intersection.
> In other case after intersection we could not change/set
> new country using eg. iw reg set
>
> Failed scenario:
> - insmod cfg80211.ko
> - iw reg set FR
> - modprobe ath10k_pci (US hint)
> - intersection and country set as "98"
> - no way to setup new country using iw reg set
>
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>

This approach seems good to me Janusz, but I think the commit log
doesn't describe the issue precisely and I do have a few questions, so
consider this patch not yet ACKd. The reset_regdmains() will be
triggered on certain type of events, the intersection is pertinent and
valid up to the point some specific state hasn't changed on the
devices present though, for example a dissociation form AP if its a
STA. Its important that the type of hint was a user hint though --
that tells us further compliance is desired. If the ath10k_pci device
is an AP and it required a US hint the original FR hint can help with
the intersection but further events can 'reset' that originally preset
user setting for FR. FR in this case was passed as user hint and it
can be a subjective matter if we want to upkeep FR or not, that's up
to us to decide. In this case I think it does make sense to upkeep it
always -- that's why we also had cached user specific regulatory
settings into some other user alpha2 (sorry don't have a terminal
right now so just replying to the review right now, should be easy to
find). So it seems to me you were trying to preserve the userspace
original hint, why is that not being preserved, I think the
reset_regdomains() should have upkept that already.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

