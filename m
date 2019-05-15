Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=r0xBckp9HfsCEj7t2iDSlphobKHylguOBXEAknEw1L8=;
 b=cWoInkcOfHfGA2
 OzWsgYTFce9eg7L3Y79ZiBDfvxVuAewpbocTjZU3UQBXpfV9DbXSsqpovAddlYFdGHB4VtTHHrBZP
 aH4seF5C4/iY2aeMspVXULsmz8kK6LYnP9u8tNFg0yzIo07+YHHJd9Zm/4NIpsdqE7kMLUY+a7AKT
 7Y1c2Fkua648/E2XpH+gyE00ag4KjhZ0zbGAGtG/jolSYkY//FnfXRAnd4Ybs77PhlCvBeV6sWWI2
 R9Ew7hMDRK8pmFIlKeCxyR+KNjYcnm9EABAEOQfPIIdj241ya+ezEP1ZKZJE9c461B4yu71ECoTz9
 jIcz40//Mum7zJXOzjvQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQu1U-0001z1-EL
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:35:50 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQu1S-0008Kf-Vz
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:32:43 +0000
Received: by mail-io1-f72.google.com with SMTP id h189so1833639ioa.13 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 06:32:42 -0700 (PDT)
Date: Wed, 15 May 2019 08:32:40 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190515133240.GB4357@ubuntu-xps13>
References: <82a15f3c-fe0c-a5dc-9846-13b3efb01f0d@streamunlimited.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82a15f3c-fe0c-a5dc-9846-13b3efb01f0d@streamunlimited.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Japan (JP) on 5GHz
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
To: Vladimir Koutny <vladimir.koutny@streamunlimited.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 15, 2019 at 01:50:59PM +0200, Vladimir Koutny wrote:
> According to multiple sources channels 8-16 (5030-5090MHz) were only
> allowed in Japan until Nov-30, 2017 (later extended to Nov-30, 2018).
> 
> https://www.tele.soumu.go.jp/j/adm/system/trunk/wimax/5ghz/index.htm
> http://www.dspr.co.jp/wp/wp-content/uploads/2017/10/The-expiration-date-of-some-frequency-of-the-5GHz-band-radio-access-system_eng.pdf
> 
> Signed-off-by: Vladimir Koutny <vladimir.koutny@streamunlimited.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

