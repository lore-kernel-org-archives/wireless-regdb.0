Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmCoh-0002FU-Tk
 for wireless-regdb@lists.infradead.org; Tue, 03 Jul 2012 23:47:39 +0000
Received: by wgbds1 with SMTP id ds1so4706873wgb.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 16:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=bQfp1opSLuVuc7YWsq5aivghWtgPWyer+OpfseQRNVw=;
 b=lt6yjmwos2U0UqrMn+fJj6nuXGWp9RQRqfqs7MIJ+dtbrRxhIewYgYEycclK8Hk87o
 8pjwBOv2kCb7WvWBaJWQfMHRsZ4qgBT0FCPUokXSwptfo3/YI3B6Ga4QpD/tDolqpzuj
 GF9WdkDrwoQ9eZEmuTUTDI1h1Dk+n9/TAI6thv5PHPovJoyVCbfHoIr3H5G28prLXjZP
 uj/TDZRkU06PvdeFsNuom9kqw7enDS/hpTsJ7Mfzt4n2WjlIEcgx9Z1vw1Wn4tcoXbjg
 rgNfG+C2cWySYQPvRj2sLduFjrAFUIpVZ5cQ4TU7R3dSxKiZ7llUrdl9pEBwtze2Zpuf DUGQ==
Message-ID: <4FF38492.20003@gmail.com>
Date: Wed, 04 Jul 2012 01:47:30 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <1341350730-11037-1-git-send-email-xose.vazquez@gmail.com>
In-Reply-To: <1341350730-11037-1-git-send-email-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
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
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On 07/03/2012 11:25 PM, Xose Vazquez Perez wrote:
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
>   UN - 85 RLANs y datos en 2400 a 2483,5 MHz (pag. 213)
>   UN – 128 RLANs en 5 GHz (pag. 232)
>
> more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
> http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
>
> ---
>   db.txt |    8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 4c54543..11409d6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -239,10 +239,10 @@ country EG:
>   	(5250 - 5330 @ 20), (N/A, 20), DFS
>
>   country ES: DFS-ETSI
> -	(2402 - 2482 @ 40), (N/A, 20)
> -	(5170 - 5250 @ 40), (N/A, 20)
> -	(5250 - 5330 @ 40), (N/A, 20), DFS
> -	(5490 - 5710 @ 40), (N/A, 27), DFS
> +	(2400 - 2483.5 @ 40), (N/A, 100 mW)
> +	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
> +	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
> +	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
>
>   country FI: DFS-ETSI
>   	(2402 - 2482 @ 40), (N/A, 20)
>

Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
