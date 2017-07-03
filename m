Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=g7U2fAoqYTD5cRi8QsmIkgERDwqrJ1wRwMLRco2CyMU=;
 b=MchEUuKxkToIkJ
 uVvhoU/nbfN21KKhGbVi4O9m6c21w65Zp15iSIz7oefda8O1lR4vF2JQxWJdhnUDTPBMXKbALjAHj
 x5V7GQj5KMtMq1WtNiTsHKvg0RId+TzqnQaaOC3vEDMC7wyfTSeImHBfcRtqXdq+j96WtnUQ6lMLg
 RJ+TbyyLxehErRkccU3kjElq3vVqfadaNXkF2U8tuU4+TZcHoLQiHYMr4aSCJeJ9lLafqVFLq/O0i
 T6I4RSBmwyvG7V6D6Yx08YRAVeUDCgt9pvAGxZAtiIJZQPHoV539xCZOme5v5oi5DfGoqq/ylgGuf
 ovbFeisITk3MXNS0Znvw==;
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS5VI-0002Te-Gh
 for wireless-regdb@lists.infradead.org; Mon, 03 Jul 2017 17:51:22 +0000
Received: by mail-io0-x232.google.com with SMTP id h64so60310920iod.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 03 Jul 2017 10:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=82PQJLLjassfKO5CNYIs3a+hKhVaphJdquPfSUuiE9o=;
 b=XZQ6l+KkJLjx6VZIZGbOlk5a1tXuQEX3GmgozIeosqg1MeuwSE/pBnbiBRGEXb21ze
 hpifZLSPyI9G8tEluq8TaSliInemu0HWS0yA+M9JvgGXT9Z0+jDlWc+s91HWEXce5/Cc
 +xl0ZCwf9O7ZlvMbkTJO1Qs6ZoQuPwx2ROdod2CbO1PX4epGt2e2guDBiD05qYLj5ul5
 S2qvYrnJ4tGxZaeQ7HJS3mTCynxqdpag1oAIw0GV1owU0nUW5Ki2x3ZIc3Jv4RQKK/P3
 UJ6RxbfGT5WMN+A+YcEfNFGOGggyHTLcEYJquxf0MxD1ZZzwO2W/+8RRQ6anrHyc++RM
 /Idw==
Date: Mon, 3 Jul 2017 12:50:55 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170703175055.tnnweqg2uyyw2rnc@ubuntu-xps13>
References: 
	 <CALfe80gmDFDnvT=MvN8891wudBEAmeQpH1X1_wNzQpkhbLSOVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALfe80gmDFDnvT=MvN8891wudBEAmeQpH1X1_wNzQpkhbLSOVQ@mail.gmail.com>
Subject: Re: [wireless-regdb] Update regulatory rules for Kazakhstan (KZ)
 on 5GHz
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
To: Vasiliy Safronov <vvsprog@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jun 26, 2017 at 10:00:13AM +0600, Vasiliy Safronov wrote:
> Please add support 5ghz for Kazakhstan.
> In Kazakhstan there are no restrictions up to 100mW
> country KZ: DFS-ETSI
>  (2402 - 2482 @ 40), (20)
>  (5170 - 5250 @ 80), (20), AUTO-BW
>  (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  (5650 - 5730 @ 80), (30), DFS
>  (5735 - 5835 @ 80), (30)
> 
> http://adilet.zan.kz/rus/docs/P000001379_
> S 5.282 etc

Thanks for the submission, and apologies for the slow response. I've
been trying to find some time to validate the changes against the
document you linked to but haven't managed to get it done yet. I hope to
be able to take a look at this soon.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

