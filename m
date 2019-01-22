Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=5Ie367YXQ5vhtg4Umg073Jz2ZCllc68SWDNVXtS+Zxk=;
 b=a1o1gZZSZfyKkq
 wErqdZKpLcGsYOFEWJmvAcjDt2F7fPnhGQCwEZAb2UFBOiF3tfnxXX1OuiCadqaj1tC8QXTvxqtBJ
 DleVSs56t0X7FmN4Peodrdms2eJNFPs0SYXrmA208lGZc0TlnUG5mMGbiTjnZZ6FOBdaUOhjZi4Le
 hIbyIctaYWeQYmSMmpP0ghDCCkK4mae96Lin+0CpL+aFpMFNe2WNzDhWvRAeAjll01X5CPastLCuV
 YEsLpC5/o/nA1GfoDA237ym2y6q3y2hlrNRNlE3YiAHidcoprlgKEzOwZ022ol16Rl1YIglZF9h8D
 EGMYbVb9Ny4O7CIm+htA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm41x-0001s6-3p
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 21:56:27 +0000
Received: from mail-it1-f199.google.com ([209.85.166.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gm41v-0004yE-1I
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 21:56:23 +0000
Received: by mail-it1-f199.google.com with SMTP id o205so100692itc.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 22 Jan 2019 13:56:22 -0800 (PST)
Date: Tue, 22 Jan 2019 15:56:19 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190122215619.GX7206@ubuntu-xps13>
References: 
	 <CALjTZvZ6gAVH17fZwzM=PeO6CjtQCGoep=bqi6yYb6TJ6u5nfg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALjTZvZ6gAVH17fZwzM=PeO6CjtQCGoep=bqi6yYb6TJ6u5nfg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz
 rule for Portugal (PT)
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
To: Rui Salvaterra <rsalvaterra@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Jan 12, 2019 at 09:35:11PM +0000, Rui Salvaterra wrote:
> According to [1], SRD devices in this range are allowed in Portugal, as
> specified in this document (page 56), and in compliance with ETSI EN 300 440-1.
> 
> [1] https://www.anacom.pt/streaming/25.5_10.000mhz.pdf?contentId=271706&field=ATTACHED_FILE
> 
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>

Applied. Note though that your patch was malformed, the tabs had been
replaced by a single space. I fixed this up manually, but in the future
please try to ensure that your patch is not getting mangled when you
send it. Thanks!

> ---
>  db.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index fa5c0e0..66751f0 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1044,6 +1044,8 @@ country PT: DFS-ETSI
>   (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
>   (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
>   (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
> + # short range devices (ETSI EN 300 440-1)
> + (5725 - 5875 @ 80), (25 mW)
>   # 60 GHz band channels 1-4, ref: Etsi En 302 567
>   (57000 - 66000 @ 2160), (40)
> 
> -- 
> 2.20.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

