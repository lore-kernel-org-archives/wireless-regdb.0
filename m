Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=/1ONt460A8CiuAS1p0yOlQx+rbt0AJ+M/88QOz8mZGU=;
 b=z25O56x4OjP/T0g7wsx4uuT0Oq
 X0Dyams/uHA7HgwjTewS10926cwnPebu2PE+3B7p+vmsvNiPoDZ89juaTKIEeJhfodgHIYvD9MW7u
 RZXGpJI9fMbgZYGqOp15HZkkoDf/OUnLvBPV9d+baGZVBwW0g4B4IUj5NcPmoAyfh8ZkGFiX4FhfC
 zsdHG9UiU/0wOVoXclfC/JUqp0kb3UDQp6fpD2Bi7uCd3NKmJb3r+1+G7bSys/V2Z+eGPef6mG1g6
 lTP0i4uvxIT5NLn/4DKrU1j2AHA6nqUNDp9nMhU03jqeB0CZRxoxX1IEuYzIUHS0tVwfL9T1UrsEh
 3Q72ylNw==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net) by bombadil.infradead.org with esmtps (Exim 4.94.2
 #2 (Red Hat Linux)) id 1oX1YW-00AsYd-2Q for
 wireless-regdb@lists.infradead.org; Sat, 10 Sep 2022 14:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID;
 bh=yIUtt9DtQzamFmV3UNKESYszcnwOY+XRpFwUQuEzgeM=; t=1662820437;
 x=1664030037; b=J7UJp6L9I0SeO8cjke6mdCv1I94+mjN1OXF7AWgDtbJxoPQ
 o6ic+un2sy0tIDm5psjXn0SLy2fYA2igtHa0GL8vWDS43MJHsMXb+C7XGR2jHGeuhnpxRqEnLnB6m
 hHrnVtUzbnlcZjn/r8ngArydwTrn/mSRF+8gc/CRZVD4sWDBcq2asczVRAIT0i86mrdVv5/N3N7yR
 5JnZ2pLOeadvHidBJqn3FEkkKmxNfuvUQOL1QbI/rKCp2p0bH1wZ25rV/BnxpJmp7BjohLgGwibf+
 zeoB2KX2IHjAvgBjCa2LjLuHkLljZx4Bz80PHMJvBDKdIV8KuZo8O0lzoeBVrcIQ==;
Message-ID: <5d5e40bc5c6075c8fbc5e836f42f7a6398dcbf1a.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 10 Sep 2022 16:33:48 +0200
In-Reply-To: <e55819d3-cc2f-23ac-4b40-bdd1fd8e6b68@cesarb.eti.br>
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
	 <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
	 <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
	 <YxiwFLWhsOtJJhrq@do-x1extreme>
	 <7c7135cb-ee5d-e7f3-45ca-8b7206312512@cesarb.eti.br>
	 <Yxs9pmL7Efl+EPxe@do-x1extreme>
	 <e55819d3-cc2f-23ac-4b40-bdd1fd8e6b68@cesarb.eti.br>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Brazil (BR)
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
To: Cesar Eduardo Barros <cesarb@cesarb.eti.br>, Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, 2022-09-09 at 19:29 -0300, Cesar Eduardo Barros wrote:
> 
>  From my quick look, it seems that it would set a NO-160MHZ flag in the 
> rule, which would then propagate to each 20MHz sub-channel, and probably 
> would lead to it rejecting the use of the whole as a 160MHz channel; but 
> there's also the 80+80 mode, which would still be allowed (and I vaguely 
> recall seeing somewhere that adjacent 80+80 was prefered over 160 for 
> some reason).

Much hardware doesn't support it though. I guess it might be easier to
do separate CCA in that case? Dunno.

Anyway.

> Unfortunately, I don't have any hardware which can use 160MHz channels; 
> it's only last month that I upgraded my AP to one which can use 80MHz 
> channels (which is what led me to looking into all this stuff).
> 

Really what I wanted to say is that you should be able to compile a
kernel with e.g. ARCH=um per the instructions at

https://w1.fi/cgit/hostap/tree/tests/hwsim/vm/README

and then test it all in "userspace" with hwsim in the userspace kernel.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

