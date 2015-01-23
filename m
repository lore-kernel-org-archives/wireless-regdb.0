Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEbcd-00020I-11
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 10:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1422009471; x=1453545471;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=o4PhlAeU+9PgqeMhzAfRDngE455BiZFKdI792iE259k=;
 b=cCPH80U/6ClXRImQ6SDAf1cmZtHo79jBhNi5Hj5WqLLd+hAwNlzxvPur
 pR1Co9OdJBeC8X3QwjHB5gch0f6+DshgyMSNZfXSDogN6j0SDXlw1WTFb
 uIfBMlBLK2CVYPJi+r5HY1mD9E3TUdQbvAKtDqcoSVUV47zDBvmbPk7Jc E=;
Date: Fri, 23 Jan 2015 12:37:20 +0200
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20150123103720.GA7274@jouni.qca.qualcomm.com>
References: 
	 <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add back regulatory
 rules for US
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
To: Daiwei Li <daiweili@suitabletech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 16, 2015 at 07:42:12PM -0800, Daiwei Li wrote:
> We've found that our devices can't seem to operate on certain
> frequencies (e.g. 5660MHz) being used by access points like the Apple
> Airport Extreme and Asus RT-AC68U. I did a git bisect and found that
> 31dc1c5eca29d039ac8f26340defe44bd7e497c1 removed that band amongst
> others. A more recent [1] FCC source implies that these frequencies
> should be usable with DFS.
> 
> Does anyone know the source for the commit that removed these frequencies from?

I'm not sure what the exact rationale for that part of the commit was.

> @@ -1125,6 +1125,8 @@ country US: DFS-FCC
>         (2402 - 2472 @ 40), (30)
>         (5170 - 5250 @ 80), (17), AUTO-BW
>         (5250 - 5330 @ 80), (23), DFS, AUTO-BW
> +       (5490 - 5600 @ 80), (23), DFS, AUTO-BW
> +       (5650 - 5710 @ 40), (23), DFS, AUTO-BW
>         (5735 - 5835 @ 80), (30)

AUTO-BW does not seem to make much sense here since neither new range
has immediately neighboring ranges with different flags.
 
-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

