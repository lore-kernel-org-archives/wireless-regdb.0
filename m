Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=+iXV5xssv47bJyXmE6tDQbYdrJDvC14a8VJCDZ5RZ7s=;
 b=Yt+Oh6RssV00W9
 rxtGKDNVcqJLYV+Jo8KtrYYK/2/EeeIqKXS4LQx1J+Etp9CQxWsmpvfCWS4fDX45z7owhN1MgDbL4
 vWpmLFY+2EMZH8ktR7hloNTdKCYCbz2d2Q/uW9ySQ0TIbvlz7KU8Pb7btPH4H6ONJyIPi/ESbnac7
 gbZiznk7MVd6PYx1oGd0Rj1olFxOY0O/4I8Q1LDy12Pg9ZQBMIaeG5Ltohc9UshBd3GR0NVSAeiYm
 54VMErlCT1AQAiyO8+9V56zsrtf+G3gQbCruj386ZiMdpe2RT7NWYpgCgdCoTrCe8KsRvI9kbgTnJ
 Twdn47yZ7j+T62B1FwEQ==;
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOKV-0001aQ-U3
 for wireless-regdb@lists.infradead.org; Wed, 06 Nov 2019 16:38:49 +0000
Received: by mail-qt1-x842.google.com with SMTP id y10so27580805qto.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 Nov 2019 08:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org;
 s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=J9gTkX/4CQRTxBR1vF+UZ78ZA2VnY+QyLggs9SIvFiI=;
 b=iKMbR4395fRYHXpOOZpYS3KcDAZcZlrRY7RMmHbtwHg5rnaarwfRTz2mcutjbIiPB/
 SeKYMaNY8boTtT4ZmT9yX5pqO9+zpnPJAGzR2G4yGoUk8NZ1+V3W5qpW6rrq9BqrqfTv
 jkYC3+3GewhiJwzuQI1Jqv6Oq3E2UTxaY+JnE=
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com.
 [209.85.160.174])
 by smtp.gmail.com with ESMTPSA id 8sm5384578qkr.29.2019.11.06.08.38.44
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:38:45 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id g50so34376358qtb.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 Nov 2019 08:38:44 -0800 (PST)
MIME-Version: 1.0
References: <20191105225751.1233-1-briannorris@chromium.org>
 <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
 <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
In-Reply-To: <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 6 Nov 2019 08:38:33 -0800
Message-ID: <CA+ASDXMVJg0QSPzSiWFjoDH67yJ-NfYX4MQZUT3gaivx1SJ2aA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: Makefile: fix .so compilation
 line with some compilers
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb@lists.infradead.org, mcgrof@kernel.org, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Nov 6, 2019 at 12:12 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> On Tue, 2019-11-05 at 15:02 -0800, Brian Norris wrote:
> > Apparently wireless-regdb@ is subscribers only. I have since joined,
> > but I guess my patch bounced from that list... if I don't hear back in
> > a while, I may resend.
>
> The bigger question is who actually maintains crda now, if anyone ... :)

My mailbox tells me that as of about a year ago, Luis was still
merging patches. And his latest commit even claims it's "still
maintained":

    As if kernel v4.15 CRDA is no longer needed. Annotate this. The
    code will still be maintained to help older kernels.

Brian

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

