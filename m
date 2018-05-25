Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=mkQL7xKUyw0smDkzfnjCfKKcuMxMQ00wUZcy2/LLcYY=;
 b=UrnyVQOXDh/kod
 HaudKA3bI2IgF8XTmvm3Qf06jxgo4870H//bcgIDeJ3ZovhVEzVtf7tL2HdRAhudYlJM9840mbc40
 GpUJ0y6yblbm8jvYp6hf8xTCVT4c5fCYY03zJLRLcA9a4CBoJZFSGQn5k35lHg2nFuKNS2JVnya4S
 f6GhNKvDS9egE/XU4b24lafF2ENnzaUgTru+NYSDmlT8u1dXkQcjiD5sLfKICnsGbC0r2G/TTDi62
 4Rb4QdPB1zq2z8axrLa96rrwfIf6K+8l3UKL23PbplhgE7vQ5OOlIoZVeDUqNNlBZHoaGbaNAYb/u
 RHAGKetVfsWfIPMR+24Q==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMFfU-0002W8-2M
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:34:17 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fMFfI-0005Jb-Kd
 for wireless-regdb@lists.infradead.org; Fri, 25 May 2018 16:34:04 +0000
Received: by mail-io0-f200.google.com with SMTP id j26-v6so4801567ioa.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 May 2018 09:34:04 -0700 (PDT)
Date: Fri, 25 May 2018 11:34:01 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180525163401.GW3401@ubuntu-xps13>
References: <20180518144701.25138-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518144701.25138-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Fix comparison of
 WmmRule with NoneType in python 3
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 18, 2018 at 09:47:01AM -0500, Seth Forshee wrote:
> Python 3 gives errors as a result of the changes to add wmm
> rules since Permission.wmmrule can be set to None:
> 
>  TypeError: '<' not supported between instances of 'WmmRule' and 'NoneType'
> 
> To fix this, supply compairson methods for WmmRule instead of
> using the ones provided by attrs. Doing this means we also need
> to supply a __hash__ method.
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

