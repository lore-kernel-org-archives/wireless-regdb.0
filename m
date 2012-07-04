Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmDn1-0003J1-Hk
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 00:49:57 +0000
Received: by pbbrq13 with SMTP id rq13so11321904pbb.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 17:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type
 :content-transfer-encoding;
 bh=pA5w17SCNMhIkp6dE9Q/yFjfFaD1QoAQJA5C6ndauig=;
 b=aPY87vc0ZKKT/pKTipnw3VQMwv3TzT71y/rNXovCXxn7JGZt5+EiXACXsDVEEbhfyn
 duBKT4aHi6mdLIG4Mc7pf0QS4Apxjp6cZ2gd7VXjRS80qBvpj9rbxAOR7LCxmqy0rVv+
 YPV7sYtz7JWpl/bp0k08K/spkWzU6VjMYaq8uz0CX5Ivh2m9zw4Auw5zIuYMwE/37eX/
 8Md1JDE6XdXrHU9YRjfNJ06bJFC4N//rRELuEPwBoPWcXBU74ZkVaIzo61xtA9/QS+kF
 HIY9tfdVPemSkdn9auSmdDXVCDB4yh/HspeBck78tbzvXv5t9OcliDPUHMbBHm+vM57X 5JWg==
MIME-Version: 1.0
In-Reply-To: <1341362473-18747-1-git-send-email-xose.vazquez@gmail.com>
References: <1341362473-18747-1-git-send-email-xose.vazquez@gmail.com>
From: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Date: Tue, 3 Jul 2012 17:49:33 -0700
Message-ID: <CAB=NE6U=bk6RSXHouuHvJd0=GErYJp82jkgeNWGnPDooZ_SONQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for ES (Spain) on 5GHz and 2.4GHz
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 3, 2012 at 5:41 PM, Xose Vazquez Perez
<xose.vazquez@gmail.com> wrote:
> Spanish law was based on CEPT/EU rules:
> http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html
> http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000059.html
>
>
> Orden ITC/332/2010, de 12 de febrero, por la que se aprueba el cuadro
> nacional de atribución de frecuencias (CNAF):
> https://www.boe.es/diario_boe/txt.php?id=BOE-A-2010-2719
> https://www.boe.es/boe/dias/2010/02/19/pdfs/BOE-A-2010-2719.pdf
>
> search for:
>  UN - 85 RLANs y datos en 2400 a 2483,5 MHz (pag. 213)
>  UN – 128 RLANs en 5 GHz (pag. 232)
>
> more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
> http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
>
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
>
> ---
>  db.txt |    8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 4c54543..11409d6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -239,10 +239,10 @@ country EG:
>         (5250 - 5330 @ 20), (N/A, 20), DFS
>
>  country ES: DFS-ETSI
> -       (2402 - 2482 @ 40), (N/A, 20)
> -       (5170 - 5250 @ 40), (N/A, 20)
> -       (5250 - 5330 @ 40), (N/A, 20), DFS
> -       (5490 - 5710 @ 40), (N/A, 27), DFS
> +       (2400 - 2483.5 @ 40), (N/A, 100 mW)
> +       (5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
> +       (5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
> +       (5470 - 5725 @ 40), (N/A, 500 mW), DFS

You are changing from dBm to mW directly... please do the unit change
in one patch and *then* the actual change. This would make it easier
to review....

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
