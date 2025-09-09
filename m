Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25802CAC58E
	for <wireless-regdb@archiver.kernel.org>; Tue,  9 Sep 2025 07:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgb5P9ewGaB5VQSgPYMCUW7jqnBbMxTASJQmDE9DF7g=; b=K9Xy0bcVFyajJP
	u26Uu3u+6UsDFDGEQ7A8n4BhT0ctoiSanndAxUIMUONHCebj9aUnIabv7+zIKVGB38PLCZRv9Zb1i
	9/E4jjvcJ1hbiOGWTU4zOtpSs+R/4HsBMscloSgEajIWb8EOsRuis0B1klLshou4Khpd1BcvOo9ZJ
	NgAiYXX+P0EwTm1otsCrsGqll/o50UtOV8RQaqksjdNtFmJmRTgkKTZRjUVN3eTVRCKVyET0nhhIL
	yvQoTCmQzvVQ1uRmOjRbR8PU/mzFy25mDxNPSnwXDQ3julNz01BVi3yTOPDmWYJzTFaPE6TzBb4Le
	2yWNHaWnqZYfiJpNIjMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvssJ-00000005Bzn-3me2;
	Tue, 09 Sep 2025 07:34:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvrb9-00000004cfn-1eKs
	for wireless-regdb@lists.infradead.org;
	Tue, 09 Sep 2025 06:13:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AC4BD44457
	for <wireless-regdb@lists.infradead.org>; Tue,  9 Sep 2025 06:12:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E005C4AF09
	for <wireless-regdb@lists.infradead.org>; Tue,  9 Sep 2025 06:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757398377;
	bh=IhTfS0JUckoliWKeRxLgJ1fRKb93Z2PXLWdC7vce1Po=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JdA+YKmS48rFY08CB//OrLRHr3sTmavZttnDpnvkb4VsDVNix8RAfpT78unHOJgIc
	 impKvBxXqOPkB1RMFr9HwNz8Y1jZwUvsIjMQYcbPbH8vqGdwKyOMbc2OMIHyBJyFG4
	 eE9JcArDL3pJA3VjoUuNHi+1lQatxLiaXcojD+cT4G3uEJtA89TmMQSAkOsucg19UT
	 fs5Xd0Wo0HccMnHOt4QdbWZmLS8iMYMNCA7l2P/HrmV4VTUXxK6APfT9uNZKKqDGNf
	 3KeYbhs4twwliFs6C5g87wUTY6xQcliw1c0Uly1JgVvR9LULUoo7DbYp9f8nDBtQJd
	 JnOwbcckhs3kA==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-336c2194a65so40182311fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 08 Sep 2025 23:12:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVyCIp3DjNMYsR1GZRH9dseDXx2CBOSxm0sM1YKGkc2JsCi0Ku6Y65Fbgy7EZX+ybGKy70M14UC0/1AX1LSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjTeKeoQNQ24KpVrTUTtU7GG8JQ5O2LAHtQvjZp9wGxVw+ws+7
	64X/iO672uufkzph08APOJ0zs5m0w4Tc9BS7HwcOg/XlNakRs0F71oocE78DhT3kO0WdkWrj9yd
	HKop/f9R0u7K7DI6CTdgxf9T4Z+BALZQ=
X-Google-Smtp-Source: AGHT+IHmIWEsCknZu3Jqd201RYpsXCgaqRpOm4m1rhu2IqOFqpBjyfEfmvoPDAL7Tq+q9yrHWoLwflm6Ly6nv45/NMk=
X-Received: by 2002:a05:651c:23d2:20b0:338:735:8a79 with SMTP id
 38308e7fff4ca-33b4b230a20mr25793411fa.1.1757398375874; Mon, 08 Sep 2025
 23:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
 <ff6ad414457e4b1cb68e834978a553c3@realtek.com> <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
 <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com> <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
 <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
 <001a01db8ddc$019e8890$04db99b0$@gmail.com> <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
 <14ab2a58e7603047354a17b2c980c143992a6782.camel@sipsolutions.net>
In-Reply-To: <14ab2a58e7603047354a17b2c980c143992a6782.camel@sipsolutions.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 9 Sep 2025 14:12:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v66aOHxeHEEKO_XaBfufWPnjJk6RkTBo8e9D1T9ET4S1Fg@mail.gmail.com>
X-Gm-Features: Ac12FXx4shXnbeVWSvaDVdt1XgyWGOKPO6XkNJGCmVmG-O_vnFWduYdKw68XKJw
Message-ID: <CAGb2v66aOHxeHEEKO_XaBfufWPnjJk6RkTBo8e9D1T9ET4S1Fg@mail.gmail.com>
Subject: Re: wireless-regdb: Allow 6ghz in the US
To: Johannes Berg <johannes@sipsolutions.net>
Cc: rmandrad@gmail.com, 
	Nicolas Cavallari <nicolas.cavallari@green-communications.fr>, 
	Dennis Bland <dennis@dbperformance.com>, Ping-Ke Shih <pkshih@realtek.com>, 
	linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_231259_474504_9197F33D 
X-CRM114-Status: GOOD (  22.56  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi,

On Thu, Mar 6, 2025 at 4:02=E2=80=AFPM Johannes Berg <johannes@sipsolutions=
.net> wrote:
>
> Uh, this is a complex discussion. I do believe that we simply do not
> have a way to capture the complexity of the rules in the database today.
>
> Skimming the documentation, it seems that:
>
>  * Paragraph 56: For AP operation, it is allowed to operate an LPI AP
>    (indoors, obviously) - we could capture that with NO_OUTDOOR and
>    that's what the rule has now.
>  * Paragraph 122: For client operation, passive scanning is required,
>    presumably because clients are assumed to be mobile and thus also
>    present outdoors, where they will also scan.
>    This can only be captured with NO_IR today.
>  * There are additional spectral density power limits in paragraph 59,
>    which cannot be captured by the database today.
>
> However, the combination of these really cannot be captured - NO_IR will
> also prevent AP operation, which I think is the issue discussed in this
> thread, but removing NO_IR will make clients break Paragraph 122.
>
> I'll note that in general scanning on the 6/7 GHz band, by 802.11 spec,
> is only active on the few Preferred Scanning Channels (PSCs), however,
> that'd _still_ break Paragraph 122.
>
>
> Unfortunately, it's also hard to fix - we cannot remove NO_IR because
> that's used by older kernels, so I think the only way to fix it would be
> to add a flag a la NL80211_RRF_ALLOW_6GHZ_VLP_AP (which translates to
> IEEE80211_CHAN_ALLOW_6GHZ_VLP_AP) which overrides NO_IR for this
> specific case.
>
> We also have reg_rule->psd internally already, I guess we just never
> added a way to convey it from userspace? Not sure what it even does
> though.

I wonder if it is worth bringing up this topic in the networking track
at Plumbers this year? It would be about the various limitation of
wireless-regdb today, such as:
- lack of PSD
- only one rule per band, preventing things such as
  - AP on 6 GHz in the US, as this thread mentions
  - very low power outdoor usage vs higher power but indoor-only usage

That said, I'm not in a position to implement anything to improve the
status quo.


ChenYu

