Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-x22d.google.com ([2607:f8b0:400d:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuahU-0000If-9z
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 05:03:52 +0000
Received: by mail-qc0-f173.google.com with SMTP id l6so3679443qcy.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 22:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=Z+lEOJpmbKMUEAOnBbRJ4JkpmjWYWsGCgf4HesqvSn8=;
 b=pykM2oMAu/wr9ENvgie9qcuL32cH9ijaf0D465Gnj/0FIAoqWW1vHEPII0CHCUay4a
 Upjxd+tbaTfPwQccmzrIhc7VvDD6mE5kkQVmjFA00ARAgELQhi2mKt/gxxHn5IoFTz8C
 yyDlBT65/rkYvKWNE+wCfrA/4x1YPaqaNNo6c=
MIME-Version: 1.0
In-Reply-To: <CAB=NE6VZs7d2bJNW0cp7NhPUMKr=bHn+pKwhvtk2U71rno4VMA@mail.gmail.com>
References: <1402385153-5056-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6VZs7d2bJNW0cp7NhPUMKr=bHn+pKwhvtk2U71rno4VMA@mail.gmail.com>
Date: Wed, 11 Jun 2014 07:03:30 +0200
Message-ID: <CALhHN=rzHzSr67W9KoC8u5cARrckOgQA-m26fmhXwX85aEcKoA@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [RFC 1/2] crda: simplify text parsing for
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>, Felix Fietkau <nbd@openwrt.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 11 June 2014 00:09, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
> On Tue, Jun 10, 2014 at 12:25 AM, Janusz Dziedzic
> <janusz.dziedzic@tieto.com> wrote:
>> Remove strange parsers.
>>
>> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
>
> Did you test this with the different types of accepted rules?
>

Tested with current db.txt (+AUTO-BW in some cases).

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

