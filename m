Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=wdpI+IU3J6+thJfyWytOxmkUoQ9V25aGcTKFROKdIPg=;
 b=m78q26YANOx7ni
 IB6LOHfSGJYKph5RuD2/kUwCA0zfwiVuvz5qpPJiFX0OXjATknSw+ENFXgNI9/PoimmKVBdfktjSl
 SkXGuvsqxKtLbozY2vcLTRfdyjqMq0ENHy0MgPLdudZrerxRGzmvsKAzfZXFxaObXypGCVSs1X7LL
 fk/D7K7yX0Op1wbe+rZh4JSel5y6fhXJlI97WJQSzFVSYod9Q0Y+4cAi595pF7L4pbEVj1ONfjm5z
 kDqLEXuKGJ7bZ2+FL8UfJhxBLOAVSkOVWoEmqr7ahy9SYYI3h3ySmPVNEgwN+rl0Va7XyExXcLDeL
 miOSBoSi9jTdH4VND7IQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmHg7-0003DJ-Bi
 for wireless-regdb@lists.infradead.org; Sat, 13 Jul 2019 13:03:05 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hmHg2-0005rX-79
 for wireless-regdb@lists.infradead.org; Sat, 13 Jul 2019 13:02:58 +0000
Received: by mail-io1-f70.google.com with SMTP id q26so14186956ioi.10 for
 <wireless-regdb@lists.infradead.org>; Sat, 13 Jul 2019 06:02:58 -0700 (PDT)
Date: Sat, 13 Jul 2019 08:02:53 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190713130253.GH5418@ubuntu-xps13>
References: <20190702141944.25902-1-martin@strongswan.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702141944.25902-1-martin@strongswan.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Fix overlapping
 ranges for Switzerland and Liechtenstein
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
To: Martin Willi <martin@strongswan.org>
Cc: Henrik Laxhuber <henrik@laxhuber.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 02, 2019 at 04:19:44PM +0200, Martin Willi wrote:
> The commit referenced below changes the 5GHz frequency range 5250-5330
> to 5150-5330, making that range overlapping with the existing range
> 5170-5250. This imposes DFS limitations and a reduced maximum power
> level for the range 5170-5250.
> 
> The change of the frequency range seems not intentional. Instead the
> commit should have changed the 5170-5250 range to 5150-5250, and the
> 5250-5330 range to 5250-5350 (see [1]).
> 
> [1] https://www.ofcomnet.ch/api/rir/1010/05
> 
> Fixes: 957a7cff72a3 ("wireless-regdb: update regulatory rules for Switzerland (CH), and Liechtenstein (LI) on 5GHz")
> Signed-off-by: Martin Willi <martin@strongswan.org>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

