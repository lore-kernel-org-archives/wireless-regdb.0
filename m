Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=NovBcdh9cwaFHOgihQfltzhuLpJWTVvsJUWC3X3633E=;
 b=k8ImhfRyvbknT7
 y6ctErjFBzzE+lJIUsUcY0RwowxtVGDH2iBjUagqclLDMmkbbk79EOiHXCnnBCQ5s3ln5nBH0B/Im
 pucH/GAUYtNqPnkjNnRlpXT9gV2D5dm3QKqPuPmZCViwXdaR4fxnRzeALerbVgpQrfsXMuYRWDYQV
 7lJk9Meu5TxlB6G5WywNE/VLaycbzb1E2KWTtvZHii85tIYgrH1+Up3rwxsbcEsY1vqN/6VcrfN1g
 wdX+lXB/onZG0YzDgPPbuguTHblHuo5MrC50CmypspvAcwQPyNtox4YDwtvqo6eSjTVHrDngA7vYK
 Qv/nNk7yTWleBnj1AGrg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyFrR-0006su-Ge
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 12:27:43 +0000
Received: from mail-yb1-f200.google.com ([209.85.219.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fyFr9-00020A-FQ
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 12:27:23 +0000
Received: by mail-yb1-f200.google.com with SMTP id u47-v6so5462487ybi.17
 for <wireless-regdb@lists.infradead.org>; Fri, 07 Sep 2018 05:27:23 -0700
 (PDT)
Date: Fri, 7 Sep 2018 07:27:20 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180907122720.GI4251@ubuntu-xps13>
References: <20180906135915.8365-1-jukka.pirinen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180906135915.8365-1-jukka.pirinen@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory rules for Finland
 (FI) on 5GHz (SRD devices)
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
To: Jukka Pirinen <jukka.pirinen@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Sep 06, 2018 at 04:59:15PM +0300, Jukka Pirinen wrote:
> Viestintävirasto 15 AM/2018 M
> Section 10 Non-specific short range devices
> https://www.finlex.fi/data/normit/32670/Regulation_15AM.pdf
> 
> Signed-off-by: Jukka Pirinen <jukka.pirinen@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
