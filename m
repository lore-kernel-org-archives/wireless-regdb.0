Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=TH2X1r6jSLkmJRDdo8SxfdbH0ZgWwH9ec/UFmkrnfMM=;
 b=w6eYY/462RHv+R
 maBuHoNQsawUgENN0NESF3YjbCgh6J0EDmqGQ65e9TnLTO5VLNiO0/AJ2f6oA7WofOr9KLa/8MPNG
 z8tbjEnwWbKc/ucryzDTBbvv2/hcF30YCHy4XXf+yIh7DDCJH1J2Yu5hxw4cTjLy7dNXX3D/zHOp1
 LP4NlKeQA4Vh/awQLQMIlTvwGvKXD8XXL3gv5BKnpnmd6bFck8zC84hA+W1lSYwx/MNkJzYYXaUTj
 iMyactvg/Dds1CmRehkOkT0I2kDL+fGR8Aw0iWjckYk6s5RdbpFE2/OyPjeqK8Jn59iyGrg4bWqfy
 D5E02pCgVmQNYLJ9hUdg==;
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK0Mx-00Gobp-6n
	for wireless-regdb@lists.infradead.org; Fri, 05 Aug 2022 16:40:17 +0000
Received: by mail-yb1-xb30.google.com with SMTP id e127so4560606yba.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 05 Aug 2022 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PNW/TpoxQuWXjNWkrP4BcxmdkeQWeoX0b9xkjKXtzZ4=;
 b=OnBRKbnnva8/X50X2qk/Vum05KB6on1i/kz0DuEgzG42dEuPfn19TJ7NOEbJsrZuae
 8Fip0xDGOqJ6xtgpTQYQ/aZf2N9J8nec93d39XhXZf+ZkN+RXuo+cd8mUhsHkjOaZwDP
 ZdhAJAWZSqedcwN3uKKk9fvuCHI897ZzXelPUd1x+00XTedyKMfCK7EZjkJrs9lIRAb5
 GNbVJnZVbq53kM8KqlDHd1OUPEVyI+yxFOm08oRP84GV5nWW1q6IRxjC4zcSKnD0p0MU
 +E1+AQDWmHaGcLU9vcsm4DXcM4Ttihra0Fvq9bi60toQgwQsg/MzIafIbCuU8fZDo+2o anXQ==
MIME-Version: 1.0
References: <CAATNLbwMFDj0UrG1PBNh-dj7GT+GJ2Ud38TzHL=FmMG7wgNNbQ@mail.gmail.com>
 <Yu000DvbyViZPeC+@ubuntu-x1>
In-Reply-To: <Yu000DvbyViZPeC+@ubuntu-x1>
From: Murtaza Saeed <mnk.saeed@gmail.com>
Date: Fri, 5 Aug 2022 21:39:51 +0500
Message-ID: <CAATNLbxXAnFQKEE=7e3XLEBjKw_Rbsoy2waQ0m4wPoxv9iixvA@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Pakistan (PK) on 5GHz
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth,

That looks good, thanks for correcting me.

Thanks for updating this, it will really make things much easier for
me and the small Linux community in Pakistan.

Please go ahead and send the patch, I'd really appreciate it.

Regards,
Murtaza Saeed


On Fri, 5 Aug 2022 at 20:18, Seth Forshee <sforshee@kernel.org> wrote:
>
> On Fri, Aug 05, 2022 at 06:01:43PM +0500, Murtaza Saeed wrote:
> > Hi,
> >
> > The current regulatory rules for Pakistan (PK) for 5 GHz channels in
> > wireless-regdb are out of date and have been recently updated by the
> > Pakistan Telecommunication Authority (PTA) in June 2022.
> >
> > PTA has allowed the use of additional 5 GHz channels which were
> > previously restricted for use in Pakistan.
> >
> > (5150 - 5350) at ≤ 200 mW EIRP (23 dBm)
> > (5470 - 5725) at ≤ 200 mW EIRP (23 dBm)
> >
> > The current channels (5725 - 5875) remain allowed at a higher power of 1W.
> >
> > (5725 - 5875) at ≤ 1W EIRP (30 dBm)
> >
> > The updated regulatory framework from PTA can be found at the link
> > below and the relevant information is available on Page 10.
> >
> > https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> >
> > If I am correct, the listing for PK in the database should show as follows:
> >
> > country PK: DFS-JP
> > # https://fab.gov.pk/type-approval/
> > # https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
> > # https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> > (2402 - 2482 @ 40), (20)
> > (5150 - 5350 @ 80), (23)
> > (5470 - 5725 @ 80), (23)
> > (5725 - 5875 @ 80), (30)
>
> Thanks for the information! This isn't quite right though. Annex A1
> includes additional restrictions which need to be accounted for in the
> rules:
>
>  - 5150-5610 GHz are restricted to indoor use.
>  - 5270-5610 GHz requires DFS.
>  - 5270-5610 GHz also requires TPC, but since Linux doesn't support TPC
>    we have to lower the max EIRP by half.
>
> It also looks like 60 GHz is allowed, so we can also add a rule for
> that. So I think this is what we end up with for the new rules:
>
> country PK: DFS-JP
>         # https://fab.gov.pk/type-approval/
>         # https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
>         # https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
>         (2402 - 2482 @ 40), (100 mW)
>         (5150 - 5270 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
>         (5270 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
>         (5470 - 5610 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
>         (5610 - 5725 @ 80), (200 mW), AUTO-BW
>         (5725 - 5875 @ 80), (1000 mW)
>         (57000 - 66000 @ 2160), (40)
>
> Note that I also changed the EIRP to mW to match what's in the document,
> except for 60 GHz where it gives the limit in dBm. We generally try to
> have the rules match the regulatory documents.
>
> If this looks good to you, I can send a patch.
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
