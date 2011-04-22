Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QDL6M-0003Ka-Ok
	for wireless-regdb@lists.infradead.org; Fri, 22 Apr 2011 18:29:11 +0000
Received: by iyb39 with SMTP id 39so796067iyb.36
	for <wireless-regdb@lists.infradead.org>;
	Fri, 22 Apr 2011 11:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Nie7jYRb4Aqqop63XZBJN5mVXTyvSc++GF8VqUvW8Xs=;
	b=nizvykWhm/WumbWY3e6QlNvyBsCXYELDH0hvfoYIv+zSimSQTT0gLzdWzsGI7WXxCn
	FOWb7DvnvbIeJytBExLIWABsW/oeiw7IfapdkvheC1fl1QSAcaUJmCBijRKxz00/A2lY
	AhuVKfNBB2lJroqXL9qBd1UbBKS0niNh5e8KY=
MIME-Version: 1.0
In-Reply-To: <20110422142536.1669422DE@imap.slowthinkers.net>
References: <20110422142536.1669422DE@imap.slowthinkers.net>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Fri, 22 Apr 2011 11:28:48 -0700
Message-ID: <BANLkTi=qHczS-eZE-=t=wG8nLxsTmkQeBw@mail.gmail.com>
Subject: Re: [wireless-regdb] Update regulatory rules for Netherlands (NL)
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
To: Anne Marcel Roorda <marcel@slowthinkers.net>, Michael Green <Michael.Green@atheros.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 22, 2011 at 7:25 AM, Anne Marcel Roorda
<marcel@slowthinkers.net> wrote:
>  The rules for using frequencies in NL are located in the
> National Registry of Frequencies "Nationaal Frequentieregister"
> available at http://appl.at-ez.nl/nfr/main_nfr.html.
>
>  The 802.11a ranges can be found by searching for RLAN.
>
>  5170 - 5250 and 5250 - 5330 are listed as for indoor use
> only.
>
>  Patch below.
>
> @@ -497,8 +497,8 @@
>
>  country NL:
>        (2402 - 2482 @ 40), (N/A, 20)
> -       (5170 - 5250 @ 40), (N/A, 20)
> -       (5250 - 5330 @ 40), (N/A, 20), DFS
> +       (5170 - 5250 @ 40), (N/A, 20), NO-OUTDOOR
> +       (5250 - 5330 @ 40), (N/A, 20), NO-OUTDOOR, DFS
>        (5490 - 5710 @ 40), (N/A, 27), DFS
>
>  country NO:

Michael, any comments?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
