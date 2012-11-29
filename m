Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tdyqx-0000gu-6N
 for wireless-regdb@lists.infradead.org; Thu, 29 Nov 2012 07:48:12 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so8883194lbo.36 for
 <wireless-regdb@lists.infradead.org>; Wed, 28 Nov 2012 23:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=JQGB2uQXZNVXP6KF6jy7KppeYS0WIXsuuiGiw5nOda0=;
 b=TWPUvPT5TbuHy3h9q/HIPCom0CIEnMHE9P3dWVyWM0Ix2BLv+vu/4ItanTPUULduai
 fuXJLGUhtsK7c7V8QyGHY3/X+KB8/vsNIp6QZCm+QSR6FU89MZcyKLOOWVGv2C+isEW+
 XOjmFI8JejfpQQ3caJkBfZXgtmM2tMgJr9nSnZwi9tS8mWFe64UD6BA6bt99K5Y6wBkW
 Cp7hmH+jJw1TeYNjlUO6xgRYRTI+2HO7gj90Ei6bkNsLDKjLzm7vD7O9jYnzRDV1hvVU
 WcAMDr32lvlKexBPQbrMT2mYRcF7Fjw4Aee5xGNy2VbjhbrAMJhfYR7cuYggMuqx1Rs7 JnAg==
MIME-Version: 1.0
In-Reply-To: <A16247DB21CEBB409D0827EB13D43B451696F72F@NASANEXD02E.na.qualcomm.com>
References: <A16247DB21CEBB409D0827EB13D43B4501F6200E@NASANEXD02E.na.qualcomm.com>
 <9DB666D2CF7F704E84559F1AEF4EBA97193ECF5C@aphydexd01a>
 <906BB7F9E7542D408351AC9D2A8FDABA03DC4DE0@nasanexd02f.na.qualcomm.com>
 <50B6EFC4.4070505@qca.qualcomm.com>
 <A16247DB21CEBB409D0827EB13D43B451696F72F@NASANEXD02E.na.qualcomm.com>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Wed, 28 Nov 2012 23:47:47 -0800
Message-ID: <CAB=NE6Wf4WSzej2v+1QM3NEkhoDv28aWahUxD+bPr4erDqsp7g@mail.gmail.com>
Subject: Re: [wireless-regdb] [patch] add K3 and PS to db.txt
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
To: "Bu, Jinsong" <jinsong@qca.qualcomm.com>
Cc: "Jin, Navy" <nhjin@qca.qualcomm.com>, "Thiagarajan, Vasanthakumar" <vthiagar@qca.qualcomm.com>, wireless-regdb@lists.infradead.org, "Yuan, Ye" <yeyuan@qca.qualcomm.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linville@tuxdriver.com" <linville@tuxdriver.com>, "Mani, Raja" <rmani@qca.qualcomm.com>, "Sundar,
 Mohan Kumar" <msundar@qca.qualcomm.com>, Michael Green <green@qca.qualcomm.com>, "Balasubramanian, Senthil Kumar" <senthilb@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Nov 28, 2012 at 11:38 PM, Bu, Jinsong <jinsong@qca.qualcomm.com> wrote:
> Hi John,
>
> I created a patch to add K3 and PS country string to db.txt, please review the patch.
>
> Note that I copied KP's rules for K3 since they are all APL9_WORLD.
>
> -------------------------------------------------------------------------------------------------------------------------------------
> From a006587d846cd91a07d3e232421947bc3f96e235 Mon Sep 17 00:00:00 2001
> From: jinsong <jinsong@qca.qualcomm.com>
> Date: Thu, 29 Nov 2012 15:15:21 +0800
> Subject: [PATCH] add K3 and PS
>
>
> Signed-off-by: jinsong <jinsong@qca.qualcomm.com>
> ---
>  db.txt |   13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 4c54543..a7ff207 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -391,6 +391,13 @@ country JO:
>         (2402 - 2482 @ 40), (N/A, 20)
>         (5170 - 5250 @ 40), (N/A, 18)
>
> +country K3:
> +       (2402 - 2482 @ 40), (N/A, 20)
> +       (5170 - 5330 @ 40), (3, 20)
> +       (5160 - 5250 @ 40), (3, 20), DFS
> +       (5490 - 5630 @ 40), (3, 30), DFS
> +       (5735 - 5815 @ 40), (3, 30)
> +

What is K3? Please note that I removed all variations of different
regulatory domains for a country when I converted the HAL reg code out
to db.txt format for CRDA. The intent was to provide a unified up to
date regulatory solution only. All variations that are "preferred"
should simply just rely on the old rules if these need to be
productized for whatever OEM/parnoid/stupid reasons. Please let me
know if you find a good reason to actually add these and if so please
consider adding them as custom regulatory domains which we do support
-- see the custom world regulatory domains on the ath module.

>  country KE:
>         (2402 - 2482 @ 40), (N/A, 20)
>         (5735 - 5835 @ 40), (N/A, 30)
> @@ -554,6 +561,12 @@ country PL: DFS-ETSI
>         (5250 - 5330 @ 40), (N/A, 20), DFS
>         (5490 - 5710 @ 40), (N/A, 27), DFS
>
> +country PS:
> +       (2402 - 2472 @ 40), (3, 27)
> +       (5170 - 5250 @ 40), (3, 17)
> +       (5250 - 5330 @ 40), (3, 23), DFS
> +       (5735 - 5835 @ 40), (3, 30)
> +

What is PS? Historically the Atheros HAL has used "PS" for Public
Safety but not that technically it is the ISO3166-alpha2 country code
for Palestine, did you intend to define that or Public Safety? If your
intent was to try to add Public Safety then consider using the custom
regulatory domains but then also try to figure out with marketing /
etc if we ever want to sell products to Palestine.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

