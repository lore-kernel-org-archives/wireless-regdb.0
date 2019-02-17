Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=d2BtqEOu1FfUrNfPK0+MBQMg0J6MOtvUq0dtZ5uAlHA=;
 b=TtoUSYhpBf7JMr
 9ggmbgFJWttJ1FSULJqp1294m+HA3I8hKXEUIxHz03+O+LU6u+pCfPZ8aHtOZs3/FcZ1T/8XPQaqu
 djtUv8rbA5KCVhEhPHnVlYhfIwH9sCjWO1aEuLvZ6uJWnrwuUvzrNtPro7xYFm6vN4I8HOF57Py9J
 VGxaUdC4RM8QjERSrC0UBhVlLZ4sYziu0O8HGTdmSBC0djfJ2vecxAsdhN5mF0PHh1+/nkYyugAXQ
 wE+ev4l3UOzLUpv+pypoveoLkAir7XeXmgl/uTJJRJVrMYMmcsfsFGh6Vhyg7EF1XCj96i87UfnHY
 8lmyJDor4t3CLW6PFbSQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvK75-0003hS-4U
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:56:00 +0000
Received: from mail-ed1-f72.google.com ([209.85.208.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gvK72-0005Yn-P9
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:55:56 +0000
Received: by mail-ed1-f72.google.com with SMTP id u7so5902684edj.10 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Feb 2019 02:55:56 -0800 (PST)
Date: Sun, 17 Feb 2019 11:55:54 +0100
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190217105554.GC22074@ubuntu-xps13>
References: <20190209101947.4876-1-nbd@nbd.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190209101947.4876-1-nbd@nbd.name>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Sync IN with
 G.S.R. 1048(E), October 2018
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
To: Felix Fietkau <nbd@nbd.name>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Felix Fietkau <felix@wiowireless.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Feb 09, 2019 at 11:19:47AM +0100, Felix Fietkau wrote:
> From: Felix Fietkau <felix@wiowireless.com>
> 
> Add new frequency ranges, increase power, as documented in:
> http://wpc.dot.gov.in/WriteReadData/userfiles/License%20Exemption%20in%205%20GHz%20G_S_R_1048(E)%20dated%2022nd%20October,%202018.pdf
> 
> Signed-off-by: Felix Fietkau <felix@wiowireless.com>

Please also include wireless-regdb@lists.infradead.org on wireless-regdb
patches.

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

