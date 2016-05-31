Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x235.google.com ([2607:f8b0:4003:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7iu7-0000qH-Vg
 for wireless-regdb@lists.infradead.org; Tue, 31 May 2016 12:36:17 +0000
Received: by mail-oi0-x235.google.com with SMTP id j1so297373112oih.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 31 May 2016 05:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iufn1Ee4sP05Lne5U0x64fR3cyfRw4so10hditLz3+I=;
 b=xTj8ErdEyKCXpDficLoegJe6xMwaXgIBkL8yL6ZI0Ys38CFI2GeH+wpgNdy5jum2Gi
 e2/yp+aURT6dWOidyStvov9k+ibOXpLOIfrAOMTyQ6dynm7pAMYk37DtCGij9Lrt6s3q
 YFmi8AePjqmNmC9UvtWh7D9q9OBDkrwo8Dpn4aLHYWud05MlMX9k5PplzDJ7xlnmjhfh
 UA6aCr7brTxM5HGRUOO6jXXEv1WEmqpXU8p2+hWQKPViQqQwIVLUoY1acDL3fic4R7iI
 OoKfFJt4R0DTMpYWMuq0QDxHPpCGGtnH0cpyI9Bs6I8922RXq5qrqmdoHxz4SEUYz49K
 r0qw==
Date: Tue, 31 May 2016 07:35:50 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160531123550.GA93568@ubuntu-hedt>
References: <1463822708-20053-1-git-send-email-qca_merez@qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463822708-20053-1-git-send-email-qca_merez@qca.qualcomm.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Republic of Korea:
 Add 60GHz regulatory rules
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
To: Maya Erez <qca_merez@qca.qualcomm.com>
Cc: wil6210@qca.qualcomm.com, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, May 21, 2016 at 12:25:08PM +0300, Maya Erez wrote:
> Add 60GHz regulatory rules for Korea (KR).
> Source is
> http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> 
> Signed-off-by: Maya Erez <qca_merez@qca.qualcomm.com>
> ---
>  db.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index da16f7c..143f915 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -664,6 +664,10 @@ country KR: DFS-JP
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (30), DFS
>  	(5735 - 5835 @ 80), (30)
> +	# 60 GHz band channels 1-4,
> +	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> +	(57000 - 66000 @ 2160), (57)
> +

Thanks for the patch. I wanted to double check with you that the power
limit is correct though, since it seems extremely high (an order of
magnitude higher than what we have for any other country in fact). I
can't make out much of anything from the link, and I can't even run it
through google translate since it's composed of images rather than text.

Thanks,
Seth


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

