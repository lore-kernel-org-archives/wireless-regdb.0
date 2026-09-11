Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441D4C88E4D
	for <wireless-regdb@archiver.kernel.org>; Fri, 11 Sep 2026 16:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OLgVzX7cJ8A6TnTHJATcG5g8iq8wHaLlYPOOk+LPBwA=; b=JEqjSTm4nPPYG5E7KlWek8pw+2
	vSTIiRHUo/tqEkaGjxgQMq6kZXh7yUIMpFtTx/208Ae6hmv+GqYOFNa3TSCSDToyJBzXQ+3qVJz6A
	Hj02X6OpCJ4HjZkWOUXBFqBsO/AuVUM3XUGF8nMOuntNdHFgVop0wBjK61rnh4ByikIu1seGC81K6
	ZMwhGxDT/anpSUP9uB5tC22oJQgKwyzN3kgB7AKFk6jVMErJWgQo8/i1JNezmSJ5eNYtp6CDjXCMm
	B1bMNFeyCDPBwkle4oztGXrkF+CZOgfJAmapwtr/MP9k/Nh1TllsC0/uTOBJvsz5dzJmxYELSGyA1
	CCX3miLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53xA-0000000HBun-0NWE;
	Fri, 11 Sep 2026 16:18:16 +0000
Received: from mail-yw1-x1144.google.com ([2607:f8b0:4864:20::1144])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53x6-0000000HBtf-1OWL
	for wireless-regdb@lists.infradead.org;
	Fri, 11 Sep 2026 16:18:14 +0000
Received: by mail-yw1-x1144.google.com with SMTP id 00721157ae682-86162c086f8so6829877b3.1
        for <wireless-regdb@lists.infradead.org>; Fri, 11 Sep 2026 09:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789143490; cv=none;
        d=google.com; s=arc-20260327;
        b=Xc4dUCOjeGiyDIG4FRi2Sy8GJZenprru06dZPX9c+CM5MiWs0jBlQc+LFam6l8ISOA
         b3/cWb7/aEbIJ0bRPt4dJDIKMupebF7uBMHhrP7Douw9duxsP4ayCfhtu2ToGe1TXduH
         N6L3NRgbT8PXagNXJ0jcHdzZzACtfVnc+Pn4GCX0tvlDFIYLKgUh7sfpTWpsH6SyXdgU
         7d70iMG5KCr7AiwWAdFm9UyusT+NQRisUQ+lrcO9qGeBwKng5jyR06FF+dhgVmGO3oq4
         lip3X8t+GFaYVWgjAA83fGugH+cMQn2uDUFqWdqSOu7OxaNrH5PSOu3fAYFxIdbTnSV+
         mdKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OLgVzX7cJ8A6TnTHJATcG5g8iq8wHaLlYPOOk+LPBwA=;
        fh=dfzP8y4DGOAIwyKW998bwjYDnLZQs8QYrJT+BbcsnDM=;
        b=lAwjA0nh9O4INc1QczMg1KLQMcxPy+rS7S76y0jS/kmU4CNaBtiLsctXGI8SCSyQrm
         WtvHETL5zp8gbBnkzcRvU4KHkte0czD9OHUasZF5qx33o70t7E4WuUxDZ201dSX8IV+i
         AqfCPhIaHXKFqYaJ6NwIHt2PvqeayxZq3ZzvXarIrO1Zz+QWlAFh1lvsOTJQk8vfLkPQ
         VShkhVBxZZzrqt2KpP7/xrnEq0eLIK2qYgQ/Vp7vT1GxS1eW1G+SNQ41jzsEZXuUR9W8
         zPXw6JUZ9cj2KmZa0vS90lnAwTncO6g5WVTyXB/hs+gtKstUsj5El5Rlm7ApQNWBHpNB
         hOkA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789143490; x=1789748290; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OLgVzX7cJ8A6TnTHJATcG5g8iq8wHaLlYPOOk+LPBwA=;
        b=X41OnZ0Uhnxxm8gIn32sITO7kNBrgd3KZSnQlSmWz6EPj6ob7/+K2W1orrWRqAX640
         GZLu3kRQgmsGBAaVz1JG2vO0CZ+fFWL08uum7FVD+kzvSLZskjs2Cw4vHgrpCDs1B7m6
         +jsnIYYdc5oXs01ygZ2z82tzVVAvg0VhvEYK5/MpO43HWzYlm3lariUML8tLFCWYvyHU
         ZZ/uekA3oq256RK8L8/1yyluIRU/beGnywTbvr4KLxZwCP2fDN+d85vz+noAc/7ru11R
         ZCalXxa7WT96eBtFTk5LFO22eRiWX3hoFVVqOwUNOeVc6bvtj/Lj2j9X1AGfw+OKb9JM
         8+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789143490; x=1789748290;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OLgVzX7cJ8A6TnTHJATcG5g8iq8wHaLlYPOOk+LPBwA=;
        b=VwEDaajOcR6j9XG/TVJrN9xL0lNf8WQkJ4pDva/46aY4ObuhSPI9/UzYFkIz6Ahry8
         7J2xBpnEdSz4thNQKgl+5jElMF616svyFvoxRenKA4XPuNzfBmlroHZ6xHqhTKCTHOVy
         4lPSIj9wQ3EjMYRzjbCzYe0PO9X4XzyaEeljtOx6OkrK+MvO/v2C3oEq65AtxMZYe7VT
         7C/xXC9dYwZ+k+Et2blC0HHOCHgHS4JUmg4/cX1E+j9YFNYnfwdRLjvx/SWQpavlEqDb
         cijhdcITOLw4nZ+1CqevI6KtOiHr7KlhvYvRJPteCtKiKBTGGiGsoRllu5qhIGXxK4RN
         KQ7w==
X-Forwarded-Encrypted: i=1; AKwUvBy0rdxDjDdcvRauSadLK5ocQk+hkM7DRA3cPvWEQWXJbZSR5877nVhJhUy3CI54H10eff58Ujx2CrR5OEqh9g==@lists.infradead.org
X-Gm-Message-State: AFuF++ky9s7E3agacuwNG50LgnpTQdfSC42GVU3jauLyBUfQQWVgTwt1
	PyDMBMtALKwhFEJqDdF0nvILE3OML+BdQREHTsIY0gG+mEQm8Vchu1xlJsFCkm9zjAwOkF/MiRD
	1DC+QGDxYcVdbMzOLzTt5bu1/tgjkp7Q=
X-Gm-Gg: AYBFou3RB61lNfyZQvxuED0t71ONlqSFaMhve3tTUyvU3WnvGTeETLsgQ8ZDvh0F+Jb
	mKD0oGo0bkCffAAknJKxPmgYrw4Kp9h2QyWcngC09OoVRfWvrYh/sEv8es4ssvNPeugtjqbmpXb
	Mbf4lljBqZ9ESEC9bFjY90ArfD+I02l2gdeJX6jlAZxcU8OdNulmwNDR3Cjcr42ax8CZ73bJMom
	fd0PdyhTWODuVMfby9eZ63XJb/eCcVEXIFPeTsL59l4+C1fBgeaLu0bcNF/AX4rVZLk42flJIh0
	/McEcFb+nDfeD5TwseQ5nhUU7BZqX2tR//GkRNF/fJ2pho1jpNLZGhOz0/2JKhJ6UtlHNljvhN1
	0GWcTxMfaJkVueHDylpfaGRFLoJwo6AxWw1Rpy0ZJBWCCsyJr9QDPmHGvQatvQVAy6g==
X-Received: by 2002:a05:690c:e1cd:20b0:878:cee5:989a with SMTP id
 00721157ae682-8820475cffdmr20331837b3.22.1789143490194; Fri, 11 Sep 2026
 09:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
 <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
 <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com>
 <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com>
 <CAJF5HCsYhv-JTMvXRHLesuOFsVFnySqEKWYzK6_B-bWEoAEW0g@mail.gmail.com> <CAGb2v65qs7NkSEL8Zg3x8a8aytV47uauNo6gj2XMi7_FfADz0Q@mail.gmail.com>
In-Reply-To: <CAGb2v65qs7NkSEL8Zg3x8a8aytV47uauNo6gj2XMi7_FfADz0Q@mail.gmail.com>
From: Ibrahim Hossain Abir <xbowpc@gmail.com>
Date: Fri, 11 Sep 2026 22:17:57 +0600
X-Gm-Features: AcwNN1V1s8Bug5fpu0aUQKgRcYXiLeYAXhxY6a21MZnALR5m60X_5m7b6BpleX0
Message-ID: <CAJF5HCuoBLW90qt1evG6U03HAhZaObkLZK2pTNQg-f2Qz8AqDA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_091812_394258_546E869D 
X-CRM114-Status: GOOD (  32.49  )
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

Hi ChenYu,

I wanted to update you regarding the clarification request sent to
BTRC (Bangladesh Telecommunication Regulatory Commission).

Unfortunately, BTRC does not publish explicit EIRP power limits in
public circulars, and official inquiries regarding technical
specifications remain unanswered. However, the 5925-6425 MHz band
itself is officially authorized and legal for Wi-Fi use in Bangladesh
per their official circular.

Since the frequency allocation is officially valid, could we proceed
with applying a standard conservative fallback limit (e.g., standard
ETSI/ITU LPI rules of 20 dBm / 100mW) for the BD entry in
wireless-regdb? This will allow hardware in Bangladesh to safely
operate on the newly authorized 6 GHz band while strictly adhering to
safe international power boundaries.

Thanks,
Ibrahim Hossain Abir

On Mon, Aug 24, 2026 at 2:18=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, Aug 24, 2026 at 4:16=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@gmai=
l.com> wrote:
> >
> > Hi ChenYu,
> >
> > Understood. I have reached out directly to the Spectrum Division of
> > BTRC (sohel@btrc.gov.bd) requesting technical clarification on
> > explicit EIRP limits and standards for 5925=E2=80=936425 MHz.
>
> If possible, could you ask for status updates on the 5 GHz bands
> as well? You intended to add them in your patch.
>
> > I will update this thread as soon as I receive an official response fro=
m them.
> >
> > Thanks,
> > Ibrahim Hossain Abir
> >
> >
> > On Mon, Aug 24, 2026 at 1:39=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> =
wrote:
> > >
> > > On Mon, Aug 24, 2026 at 3:23=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@=
gmail.com> wrote:
> > > >
> > > > Hi ChenYu,
> > > >
> > > > Thank you for the review.
> > > >
> > > > Regarding the reference:
> > > > The official BTRC circular (dated Sept 15, 2024) specifically
> > > > authorizes the 5925=E2=80=936425 MHz frequency range for Wi-Fi/WLAN=
/IoT shared
> > > > usage in Bangladesh. However, this notice does not define explicit
> > > > EIRP power limits, TPC, or DFS requirements.
> > > >
> > > > In the initial patch, standard conservative limits (such as 23 dBm =
for
> > > > 6 GHz LPI) were derived from standard Wi-Fi 6E/7 spectrum norms.
> > > >
> > > > Could you advise on how wireless-regdb prefers to handle cases wher=
e
> > > > the regulatory body approves the band without listing explicit EIRP
> > > > limits in their notice? Would setting a conservative default (like =
20
> > > > dBm / 100 mW EIRP) for 5925=E2=80=936425 MHz be acceptable for Patc=
h v2?
> > >
> > > As previously mentioned we cannot accept random limits without justif=
ication.
> > > The regulatory body needs to specify limits, or outright state they d=
efer
> > > to some other standard.
> > >
> > > Please help reach out to the regulatory body for clarification. They =
should
> > > provide the information, otherwise folks doing the certification have=
 nothing
> > > to base it off of.
> > >
> > >
> > > Thanks
> > > ChenYu
> > >
> > > > Thanks,
> > > > Ibrahim Hossain Abir
> > > >
> > > >
> > > > On Mon, Aug 24, 2026 at 10:38=E2=80=AFAM Chen-Yu Tsai <wens@kernel.=
org> wrote:
> > > > >
> > > > > On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbo=
wpc@gmail.com> wrote:
> > > > > >
> > > > > > wireless-regdb: update regulatory rules for Bangladesh (BD)
> > > > > >
> > > > > > Update regulatory rules for Bangladesh (BD) based on the offici=
al BTRC
> > > > > > (Bangladesh Telecommunication Regulatory Commission) directive =
dated
> > > > > > September 15, 2024.
> > > > > >
> > > > > > Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz =
(5925-6425 MHz).
> > > > > >
> > > > > > Official BTRC Notice:
> > > > > > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
> > > > >
> > > > > This only says that the lower 6 GHz range is allowed. It does not=
 say
> > > > > what the power limits are, or if there are any other restrictions=
.
> > > > >
> > > > > > User Impact Reference:
> > > > > > https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Dete=
cted-on-Intel-AX211-in-Bangladesh/m-p/1740885
> > > > > >
> > > > > > Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> > > > > > ---
> > > > > >  db.txt | 8 +++++---
> > > > > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > > > >
> > > > > > diff --git a/db.txt b/db.txt
> > > > > > index 0000000..1111111 100644
> > > > > > --- a/db.txt
> > > > > > +++ b/db.txt
> > > > > > @@ -223,5 +223,7 @@ country BD: DFS-JP
> > > > > >   (2402 - 2482 @ 40), (20)
> > > > > > - (5735 - 5835 @ 80), (30)
> > > > > > + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > > > > + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > > > > + (5725 - 5850 @ 80), (30)
> > > > > > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> > > > >
> > > > > A reference with the band and power limits, as well as any other
> > > > > restrictions like DFS or TPC (andif TPC is required, what is the
> > > > > limit if TPC is not implemented) needs to be provided. We cannot
> > > > > put random numbers into the database without justification.
> > > > >
> > > > >
> > > > > Thanks
> > > > > ChenYu

