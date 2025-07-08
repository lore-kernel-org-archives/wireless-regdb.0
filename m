Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3ED1C8303C
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 11:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p7XsSwbUp/mOEc+OxUU7ZniY2O1w0jJOgkWGd25EIFQ=; b=hhtpcwFMHWP9PT6xuIZkp4usCN
	Q70i//rszUMxm/LJKh6dvRcnV1ZB3WGvsZg39+MqAS0yHPkk2NID8qkmhKWE9J9DpCbBRzRbr3Ccp
	8iJ8AY+qPl9uMDUAx23k5AT+zP7rUotHeDAGwyi0ALdfTyBi1xrJ65vkPaBL0BR1fJap/gjefkzYh
	H5VYEQMNH+zUlLFFS+47n9OZCroeAAtpvSV/frvVgvbuGoQ5rgFQ+TAT5/Sex0jaxhRVB+SGvYLC/
	pUxaOzt9G1MtKr2jfSSYutSLoYSAfwZjAIWG2vvTvQ1pCG9Y0PfUKMGfP/YpuQCt7yzZKY1VwF3OO
	f9lRfLUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ6yy-00000005FIm-1C7G;
	Tue, 08 Jul 2025 11:59:32 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ6g4-00000005DRE-0dE2
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 11:40:01 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-60c6fea6742so8871147a12.1
        for <wireless-regdb@lists.infradead.org>; Tue, 08 Jul 2025 04:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751974799; x=1752579599; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7XsSwbUp/mOEc+OxUU7ZniY2O1w0jJOgkWGd25EIFQ=;
        b=dR/0OiejU7RH+IJCyjNDeH2LoKZucXbf3Tj7AssdL6Tr5P1G86IpbXZ7qc6kzP78tv
         z68ZbnhGINPUG2BcTyRijukseKlLCUBImm5FAVPf8fvhv4oMkKzy3U/qblbZggH9zST0
         DCcdT2Y64jbN6mJr03hyW5UN16i5MTrTjoD59n5t1pj1xcxqH3I2SIAtkVBcuJ0dqsPW
         P2zwqeW7PbRoOuxANRhSQuEstxp7ZL42r1wCowNv5VJw9ikEOa/zq0IYMYcR7WzV+Tir
         0CqcdnKQPdRHJc6G2k6VLBeHmPvRG/XfFzrS1f3IKUNvI36wXZZr8nfzFnQnciouCgAs
         Ynrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751974799; x=1752579599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7XsSwbUp/mOEc+OxUU7ZniY2O1w0jJOgkWGd25EIFQ=;
        b=Ed1W0b3zPQkWWOSyaTca1gg/dlpMN087b0BSr09r5jx/58g9BupFSKp1TJSyVaqwPg
         O3SWKn50guMEVKHBBu9beRCqin6zKvklOugDnpisyaHaDTBFcgyJEByb52ychd6Rcfhg
         sSclviS7DpT5pawI1nLF9d25h4gfHmoEnHkid6DOdB3RZ+CeaoMsJYx2Haanj5DKETbA
         Zv+cNer5DirZaf9w06W7tn2VTzH8kUg8H2jGXv5z2iObaOqlq6KRfbsKAb40/MAumO4n
         ZnX1kDvLbGKC+a1G5s4YWhi5kzbw1piTCnVq38C2QtQJOLxDfbdGq9n2IXV98D6DmjOo
         +PSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmiHByQx9d9+IbsYkFAVXRg0N4J4k31tQeYYixqRHUc3k+KJ1O4lAc8vtJXHLVp5+E0aMgCHdp2a85M4DqtA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCEgvNBoXV9thcV+tcL9nvW+Y2BDtZ8+HIEozaWBw+ClJnkyAA
	S6ij/AsOzwpWvB4MuPFjqeylkSpxanjpYvp12QuBlaoRvrXG1NuxsP2zYnt/NLZkzZO5mTJAP8l
	E+3jhpd+Db34b+LsUevq8u01Trn2TQNmKPw==
X-Gm-Gg: ASbGncsRXKIxPNXzUWUrYMopHMuulz4NGGW3qMlmRrTrbTA2NSodGBsAbhnDZ9UmSqi
	mI0DjADevnDMqShPC9cmTdS6GqYGbz6XgorzoQ2knPNxLE7D8U6plkkYg+ZZjjWig98/s1MGoWF
	LvPvWAf/kUjnLDRf5rZcGvv2+UZQuvlEF0q84TdFr8JvXyiA==
X-Google-Smtp-Source: AGHT+IEgo+vtTl/4je9Or1P8ZGqyStCFwDFnHVRBlyQUIwLsLNLozuoL+jpw14UVciDTtVLIPM/DyZ5JzZsZyyJ/RNk=
X-Received: by 2002:a17:907:d84a:b0:adb:428f:f748 with SMTP id
 a640c23a62f3a-ae6b00c14a2mr292905066b.21.1751974798305; Tue, 08 Jul 2025
 04:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250708015005.6470-1-pkshih@gmail.com> <CAGb2v67YNZG_-MtJT_pncaqeQULj3FGLj7jpSUSOGTXe2ipGag@mail.gmail.com>
 <CAHrRpu=rcXQzBO-NdDYBxj02WpMAHyP8ZdQhU=ScO=bOQXk9Tw@mail.gmail.com>
In-Reply-To: <CAHrRpu=rcXQzBO-NdDYBxj02WpMAHyP8ZdQhU=ScO=bOQXk9Tw@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 8 Jul 2025 19:39:38 +0800
X-Gm-Features: Ac12FXwsPwSkxK_ZxMMIBpip1weD1s7hAJdxb58jw0nksGX7kpyDzz9o3eael0k
Message-ID: <CAHrRpunOPwX18qc8cUhHwjg40SvqvVYXQg1ZFjBSeVUa9QgkXw@mail.gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_044000_187915_FBBB967E 
X-CRM114-Status: GOOD (  13.82  )
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

Ping-Ke Shih <pkshih@gmail.com> wrote:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > On Tue, Jul 8, 2025 at 9:50=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> =
wrote:
> > >
> > > From: Ping-Ke Shih <pkshih@realtek.com>
> > >
> > > The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> > > countries including
> > >  - Albania (AL)
> > >  - Andorra (AD)
> > >  - Austria (AT)
> > >  - Belgium (BE)
> > >  - Georgia (GE)
> > >  - Iceland (IS)
> > >  - Liechtenstein (LI)
> > >  - Macedonia, The Former Yugoslav Republic of (MK)
> > >  - Moldova, Republic of (MD)
> > >  - Monaco (MC)
> > >  - Montenegro (ME)
> > >  - Norway (NO)
> > >  - Switzerland (CH)
> > >  - T=C3=BCrky (TR)
> > >  - Ukraine (UA)
> > > Add 6 GHz frequency entry if not being added yet.
> > >
> > > The following are skipped as they do not have corresponding entries i=
n
> > > the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz =
and
> > > 5 GHz bands from the world domain to stop working.
> > >  - Faroe Islands (FO)
> > >  - Gibraltar (GI)
> > >  - Isle of Man (IM)
> > >  - San Marino (SM)
> > >  - Holy See (Vatican City State) (VA)
> >
> > I also went through the whole list, and it seems "Bosnia and Herzegovin=
a" (BA)
> > is missing a 6 GHz entry. Could you send a followup patch to add it?
> >
>
> Sure. I will go through whole CEPT countries for 6 GHz entries.

As a result, BA is a country missing a 6 GHz entry. SM and VA are
countries without
entries in database. I sent a patch to add BA then.

