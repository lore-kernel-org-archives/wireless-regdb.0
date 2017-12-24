Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LLKqKpJLReoKNZHgh9wn8eAe0O/k0WNpsq2XOvLWxP4=;
 b=larGhWZMDQTIpl
 4qH4fVFhL6n4Xoefs68sB2Md02lTV0knEoAI50oEU2BSL+rCQ15w5QofjLjzpZONCIF6Aa2eI45wN
 c8Z1fCU5BRSYhIUgauMkhFrwdWMVWUjY36m3AE1xO04BptyofL5ZKcLH4Pjs92isaSX7uWP3PfgwI
 nEH5iIEuOEwJM0D6GEvlq4F+izROqco92e7gBT07WdjmZJJyINq5m9mqPUAIbKXgevzSWye4W4wwJ
 9Bgu8N32+gvx1UEYZGafNEeWIviqvuHoSBO9EGROo454LVZiynd5jNWlBQHGw2l2AUlmQxTnIOPod
 QloYn9p6c+e3XU6u3W+A==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSwu5-0001Cp-Ir
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:24:48 +0000
Received: from mail-it0-f72.google.com ([209.85.214.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSwtu-0002Mo-82
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:24:34 +0000
Received: by mail-it0-f72.google.com with SMTP id g69so14443127ita.9 for
 <wireless-regdb@lists.infradead.org>; Sat, 23 Dec 2017 19:24:34 -0800 (PST)
Date: Sat, 23 Dec 2017 21:24:31 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171224032431.GA32049@ubuntu-xps13>
References: <20171222163808.27862-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171222163808.27862-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Denmark (DK)
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
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: Per Mejdal Rasmussen <pmr@its.aau.dk>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Dec 22, 2017 at 10:38:08AM -0600, Seth Forshee wrote:
> Refresh the frequency ranges and power limits based on the
> following sources:
> 
>  https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
>  https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
> 
> Cc: Per Mejdal Rasmussen <pmr@its.aau.dk>
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

