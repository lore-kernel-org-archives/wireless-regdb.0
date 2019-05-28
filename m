Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=QZn2Vfb+pQFcu5PE6Iv8a5izd0vSSUb+SGD9BX8hXrU=;
 b=EchWSz0KSSdTba
 GGLzteqUYPBnFVfO0hZFTRAHxD1w+q4sObY2SnE2qEaGG+eFUD/yZ2gLbFvYUxtcvucRPyfk6DFss
 QHlOb78axyMBQnZvKTAGq6r9enBNSv1w6oHKYZpcP6b1qzqQvB1lOnIoVEA3d8Ow+1d1EAMSXJ0nx
 uY56l5rQMWhPx9jw3U74rC0LrplGt7h6mmbqAgyy6MJeDPAsTSZ3NbFQ2NzNXLPdqhPVYrwxVndrw
 ycY+ViccEk7X7V+gK33mKxYDqQiYDnnZlQOPNPrzkEwThULaMMmsiSjn270vrIzI+5ZYMPs893jlH
 L7wgtKhgoTrgHveFExJg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbI9-0004BS-Mi
 for wireless-regdb@lists.infradead.org; Tue, 28 May 2019 12:33:24 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hVbHX-0007fg-Ni
 for wireless-regdb@lists.infradead.org; Tue, 28 May 2019 12:32:43 +0000
Received: by mail-io1-f71.google.com with SMTP id r27so5286878iob.14 for
 <wireless-regdb@lists.infradead.org>; Tue, 28 May 2019 05:32:43 -0700 (PDT)
Date: Tue, 28 May 2019 07:32:40 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190528123240.GK4357@ubuntu-xps13>
References: <1557948501-12579-1-git-send-email-peter.oh@bowerswilkins.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557948501-12579-1-git-send-email-peter.oh@bowerswilkins.com>
Subject: Re: [wireless-regdb] [PATCH v3] wireless-regdb: Update regulatory
 rules for South Korea
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
To: Peter Oh <peter.oh@bowerswilkins.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 15, 2019 at 07:28:29PM +0000, Peter Oh wrote:
> From: Peter Oh <peter.oh@bowerswilkins.com>
> 
> Update power limit as documented in:
> http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/
> %EC%8B%A0%EA%B3%A0%ED%95%98%EC%A7%80%EC%95%84%EB%8B%88%ED
> %95%98%EA%B3%A0%EA%B0%9C%EC%84%A4%ED%95%A0%EC%88%98%EC%9E
> %88%EB%8A%94%EB%AC%B4%EC%84%A0%EA%B5%AD%EC%9A%A9%EB%AC%B4
> %EC%84%A0%EA%B8%B0%EA%B8%B0/(2018-89,20181227)
> which revised on December 27, 2018.
> 
> Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

