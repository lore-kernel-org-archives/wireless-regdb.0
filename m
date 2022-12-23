Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=IlHh5IF0DI2HVR6gXWL4hpIQM7A6Y+Wi22gn/AICfBk=;
 b=OaQm4IodigvKmJ
 bYuPG81Poltke5g9QgK6zpKKdStgKNH/LPLjyciiROPmSkOLikrmDvmdzDg3ACiN89NdTfq6hzNLO
 0F8cDopDKCpjCzPBckCGy8n/LBrwlJwOMy83X0qpn/n4MNFeB7K9cEpXAfbGzVrQcxhGDAhorhnIc
 BEvksM7fTXOVrLzAucLtOsoabq/iIMS+Y++KXKGGFKNluNcbv2AdD50JH68USpol6496DWv01p8/3
 UbEwV9b7MUdWHgZ8WZrG6Hx0uNV8/UFqBHW1e0o47NDsBowfTnQ4m1RP0Ler5EkPdHi7M8izCJY8F
 t5v5aZtlG9H/SSRs0hRg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kWf-009lac-0v
	for wireless-regdb@lists.infradead.org; Fri, 23 Dec 2022 16:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671811438;
	bh=OKOAqxKT607r839NMfVxk5d3NBrMK6QVS1reAe+w2CU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AezOj3welAFhBUATTKMcyy4Mt10PNNAcAHL+vk1/HiMbc2ajz8jJe6zaq709ram1B
	 scV2H0/1H4RAowpJau2cre3FIPOG8pbB28hjB6obZfl55HNIruvxnIOsMzuEEIaOj4
	 16U/5eSlCh/C0u1/iskLNl0uKHU1wtC/aeJoGq6ZqyOwwDX4zLodcFwZJh/mzNWAQC
	 q5oQ0qfCcujZ6L0bUk1Ci4OGA8LyJr0f6d34cLbcGwVo3XfKdjB+1tH4O122D/qeeI
	 oJ7mYDhvX2NNR/UMTW5PnMMRlxg5H5VFQOXSEVD5lSF2AgO4kgfvVX1V9sKNmxwzVM
	 UlEkLzRk6jRug==
Date: Fri, 23 Dec 2022 10:03:56 -0600
From: sforshee <sforshee@kernel.org>
Message-ID: <Y6XRbJThM4oKMOVY@ubuntu-x1>
References: <184ec3a63fe.d96b82f6427171.7593361304891506395@hak.dog>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <184ec3a63fe.d96b82f6427171.7593361304891506395@hak.dog>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Philippines (PH)
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
To: kleo <kleo@hak.dog>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Sorry for the slow response. Please see my responses below.

In addition to those comments, the patch isn't formatted correctly for
application, and it is missing a Signed-off-by tag as noted in the
CONTRIBUTING file. For sending your patch I suggest using 'git
format-patch' to export the patch to a file and then either using 'git
send-email' to send it as an email or attaching the patch to your email
message.

On Wed, Dec 07, 2022 at 06:56:00PM +0800, kleo wrote:
> diff --git a/db.txt b/db.txt
> index 3f74194..fa9ffd7 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1368,11 +1368,17 @@ country PG: DFS-FCC
>         (5735 - 5835 @ 80), (30)
>  
>  country PH: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (17), AUTO-BW
> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -       (5490 - 5730 @ 160), (24), DFS
> -       (5735 - 5835 @ 80), (30)
> +       # https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2003/MC-09-09-2003.pdf
> +       # https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2013/MC-03-08-2013.pdf
> +       # https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
> +       # https://ntc.gov.ph/wp-content/uploads/2022/mc/Memorandum_Cicurlar_No._002-09-2021.pdf

The documents you linked to establish use of the frequency bands but
don't seem to contain any information about the relevant power limits
and other requirements. Where did this information come from?

> +       (915 - 918 @ 2), (30)

I don't see anything in the above documents about the 915-918 MHz band.
I also don't see that range listed in this table of frequency
allocations that I found:

https://ntc.gov.ph/wp-content/uploads/2022/frequencyallocations/NRFAT_Rev_2020.pdf

What's the basis for allowing this range?

Thanks,
Seth

> +       (2400 - 2483.5 @ 40), (24)
> +       (5150 - 5250 @ 80), (24), AUTO-BW
> +       (5250 - 5350 @ 80), (24), DFS, AUTO-BW
> +       (5470 - 5730 @ 160), (24), DFS
> +       (5730 - 5850 @ 80), (30)
> +       (57000 - 66000 @ 2160), (40)
>  
>  country PK: DFS-JP
>         # https://fab.gov.pk/type-approval/
> 
> c5da72a2fef48891aceb3f3378afbb12a2778c83e9f053f5d23e589630536b61  country-ph.patch
> 
> kleo
> 
> 
> 



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
