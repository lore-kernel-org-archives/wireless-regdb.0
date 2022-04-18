Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=NEmf1xpUYkaT1rxE41l19jglONZ1Iwz6p8EWA4PNuz0=;
 b=n4z
 wJ17HBxoI+9BkvzClrUjtmFx5DQdZaj6mHEJqtvDz1QGRry783IrDyErFtnY7kw7NJXibvH2cuV/P
 e6tyA5HzqOqahIYyWNZUy4y3ZYqdkXnOOTxS4/9KmFfqTdePJwQyml7OMITjwzgrNX0mFPeRjAHTU
 aio6Ho4cxo257FP0MlVjKWA0y3kCF++4G8o3APMY9qXi3sK6UTFaY1x/H0r3MOrNBDVTWdyrFa4I7
 gyZM6bZkjbLl8t5w9V62F6WEZYYtmhwBQz2HdPXmPoD13RwulHmgVkSUWSzLKaRS2Ma2oilVq5VU8
 rnIl+ZtccnhIgnTFmLG44qLjW1Omeug==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngJk9-00Fe00-5X
 for wireless-regdb@lists.infradead.org; Mon, 18 Apr 2022 05:16:12 +0000
Received: by mail-lj1-x230.google.com with SMTP id f5so8134286ljp.8 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Apr 2022 22:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=JbxQhGkL9EjPJFK+SjArLx+VG76HNDtd5f+4O/5lUnw=;
 b=EqAKetyHpdZbvfx9FkbjqKVXJeH5dxyME9KoH046L9P+mtZK4kLPzcw+kxuvkGewHa
 6hmeni45rFqC7pUajGBqBRX7GQ8QruZ23l7SrHvGLOqb9yf/mD76hvQZE9Jy/SBsUhMr
 kGBQXe7I1c31EAMgn4iy+Y1xoKBMpcvS47ME9StFFiV0GhGzjcblq2JiKNm90UvWAYsh
 RiNVf19P8MHf5cSunyv0CkQAUtFypJRdspbenlVfuf7eGcHmGhPHNnprDs0qa969sVDe
 az4Qdaqn8s8rMWs8exIueOak9hj+1lUjm0VvfO2rIggXnD5x/BIr8BJTYaI8AyiT94AY
 X4+g==
MIME-Version: 1.0
From: Dennis Bland <dennis@dbperformance.com>
Date: Sun, 17 Apr 2022 23:15:55 -0600
Message-ID: <CAPRryQrHC2kC-dcokJyqSMiAFUjNJp2z6T9TCb=J+s0TvDzF8w@mail.gmail.com>
Subject: [wireless-regdb] Regulatory update for 6 GHz operation in United
 States (US)
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

It seems there was an earlier request on another forum to add the 6
GHz band for country code US:

https://lkml.kernel.org/linux-wireless/Yb0HabN+Js2iWnOH@ubuntu-x1/T/#t

Not sure if a variation of this patch was already applied?  If not, I
can take a look.

Best regards,

Dennis Bland

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

