Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmey8-0002gu-7r
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 08:00:17 +0000
Received: by mail-la0-f50.google.com with SMTP id b8so81251lan.9 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 May 2014 00:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=6XT0vDBNRYxSD2Tk/sjqbEs16k88gGDRXEmxD3a3TLM=;
 b=eJwHhPHk9YGSDsIL7i3I03icCCSzXKyBIdf6lTb9LP86GhnmLPjPPHRTgxb+dz/4Ph
 fdP9bMN3+f8Ie2K7ON2yvmgF7yvGgQwzrTUffBfJcTLsIrKVGvw9YrNghvnu8FxADI2Z
 qPAkRJTDNC2aLbgUEVfc2V8g7iOVhsZ1PI0YG91nZ/IMf/ts1oNpBwZIFa5JiQCT0PuQ
 mwkLNe767fxW96lzLXFJKrlN12/4B7JHbPwiIzvJKW9yZGDeLIO52In3ebPQMr+kfS/1
 fG+jGdIv1NwCIm9mLeoB/JLYb9sj0DSqVaThGHpz2MowiGAiGYyX9mtFpeBk3YNX5gtg oMuQ==
MIME-Version: 1.0
In-Reply-To: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 20 May 2014 00:59:29 -0700
Message-ID: <CAB=NE6X76jCotGR+61wPxyu0treDTebXsxu-inU7xWJnMRLevA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add AUTO-BW rule flag
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 9, 2014 at 1:38 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Sync with latest nl80211.h and add AUTO-BW flag.
> If this flag set, maximum available bandwidth should
> be calculated base on contiguous rules and wider channels
> will be allowed to cross multiple contiguous/overlapping
> frequency ranges.
>
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>

Once John merges this I'll merge on CRDA, just as with the DFS CAC
patch, please do let me know if and when that happens.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

