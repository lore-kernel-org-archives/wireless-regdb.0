Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F653D68BD2
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 08:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lX2mz6euq31gOzNNmcgqZAwIoI03oMF5nZ0eHul497E=; b=sdJC57QK272c2s6R1Cxb+aPeuI
	MW8Imv8CUUrU1pxFTN0e8knmnld+n9ZHXK6ovcVAQMXaH6kgpzNTXlnRAbVKUr0sA5V9Exs1VdFus
	dup6i6DxhDJ/DwM7TVAEWz9xvCN46WdvFV6qMVhFfaHFSC6uGpDDzIPfDsHCZJFoKVRuRycT9I4MJ
	ROJtAZfK4psBTfcrxlrzC1EU72WLpJITSavj+kTg3wJkx+TfOSbPVSSEBHLxXTroFPnfMywG8Ixqg
	C77lsqE66KU6D8WC1rCE7w4aCIB+m29KwYnwfhKuwE/kGNuA+/B8E1DmIn7uVLFVs+X4IYVMeCxU/
	Wrt/g3nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEdu-00000005GLT-1ZhR;
	Sat, 16 Nov 2024 08:58:58 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEdr-00000005GKg-3BF0
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 08:58:56 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a9aa8895facso456236566b.2
        for <wireless-regdb@lists.infradead.org>; Sat, 16 Nov 2024 00:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731747534; x=1732352334; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lX2mz6euq31gOzNNmcgqZAwIoI03oMF5nZ0eHul497E=;
        b=h+atQYqPC9t8dAKYq5GTJzuiuJca9rDZW3xQD601CCMQcNKy1t/lefObEKhH+VbzYJ
         ufCyvpvNXXAGOr6kZyFaYZhDrhmJVjZfYduccwzSXhjV/OUx8d1ylg34dD0d7tQ4ZeAB
         AXqeSbjRd7Qu49IxSg6VFGi/Slqz4m1cZKkDnoYDTSYoiiL7MlMUnEYrJlyCSO57mEG9
         nEoanyCjNUsK7XeTAxo/mzyENXbBbJaLS5LqB6rqc131ZZLOknkNhx4blgZH9OvecTie
         d7tD6aGD0Rc8nxg8R15KHSOhtS6rW+iBKW+NQoBWIryxLKOzEJO5C5bqPAwjV4TM+O4w
         jUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731747534; x=1732352334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lX2mz6euq31gOzNNmcgqZAwIoI03oMF5nZ0eHul497E=;
        b=vuiQa6UY04LgcYsP032e3Zs8LqAyefcoZtoidxtzer0HourOLi2ViBn6JRKe82Ib+x
         u5VCsaDGk0ODf3XFcpVDsceyC9pA1G8Ptbu24KjkkUEiIMX7SU2OYQB9PLFjBFaB8WyO
         jDcwhDRQv8tfyOFZAcnJdoRbAbiBvwIYSLBQL7qDxscHg59MCu2MbTOJBdsX6T0c19CA
         iVzf9vWHTdSIITnOjhUjP8QbquNMlKLnIYOKa7LVr0OPMWRiq8CC1KDE3nCw7+tM1tu7
         4S5dZ4wbHVbWIvouDMAs4cudCSJEghgvjPRAdFYI/+VClx+ks7dnkmnRV7NtyI5cZVj8
         cRAg==
X-Forwarded-Encrypted: i=1; AJvYcCWSz59jziIxbT3BLmeOONlCOwpJUl3o4/vLjq9H2TT3Pt1SM8S9cIf3pVvGuwspRQMSVbW70fjcdiDteGk8LA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1mmReObIrIpuBMjezkfLa14obphZzebQrCO57TUSOAmv+NzSc
	asMwJfeWskzKCWVay8i1OAsbA8urrmtAaYIDLAqLrBmppGzsgc4q+BGQK8W20gkAFsTaIZRJ6i5
	grO1tPZCwYtCzNxfzZDg+hGxqZy4LoKXNZW0=
X-Google-Smtp-Source: AGHT+IHIzVuyy9zeCiS+HpgWMOmLGakMMuu4pEwqaCJOEh4vmj719Xb4gwHWTATrNNNa7xs9o7MhLpOie5hCf9efviE=
X-Received: by 2002:a17:906:ee8b:b0:a9a:13f8:60b9 with SMTP id
 a640c23a62f3a-aa483489427mr564127666b.36.1731747533738; Sat, 16 Nov 2024
 00:58:53 -0800 (PST)
MIME-Version: 1.0
References: <20241116082417.8720-1-pkshih@gmail.com> <ca8e16a2dbc9c38e5bf2f3e426a2132393b381be.camel@sipsolutions.net>
 <d783a6d6a429feec6763077126e76445b6f186e2.camel@sipsolutions.net>
In-Reply-To: <d783a6d6a429feec6763077126e76445b6f186e2.camel@sipsolutions.net>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Sat, 16 Nov 2024 16:58:07 +0800
Message-ID: <CAHrRpukU-6MOoDsX+HRQ1XbdvoDMpUDuR4s=J-_9ODm3jreU9g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: assert and correct maximum bandwidth
 within frequency difference
To: Johannes Berg <johannes@sipsolutions.net>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org, combuster@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_005855_795327_82747032 
X-CRM114-Status: GOOD (  13.97  )
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Sat, 2024-11-16 at 09:33 +0100, Johannes Berg wrote:
> > On Sat, 2024-11-16 at 16:24 +0800, Ping-Ke Shih wrote:
> > > From: Ping-Ke Shih <pkshih@realtek.com>
> > >
> > > Since kernel will reject max bandwidth being larger than freq_diff in
> > > is_valid_reg_rule(), as well reject it ahead.
> >
> > Not sure that's generally true, if you have AUTO-BW I think it should be
> > OK?
> >
>
> Sorry, no, I guess AUTO-BW just lets it expand the bandwidth beyond the
> listed, if there are adjacent ranges. Been ages since I looked at this.
>

I have similar thought as you, but I should admit I have not yet
looked into reg.c
to know the detail.

I quickly check the warning reported by user "kernel: cfg80211:
Invalid regulatory domain detected: RS.",
and lookup possible cause could be is_valid_reg_rule() to make this patch.

I hope original reporter can help to test this, or I will try it when
I have free time.

> Anyway this probably doesn't fix the user's problem, it just makes it
> rejected when compiling already ;-)

Honestly these mistakes were made by me. I should fix them.
Since rtw89 still use wireless-regdb, I will keep updating the
regulatory especially
lack of 6GHz frequencies.

