Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=Vd4heQGQ5LmU2F7J57jkQCqE86Tli10oYFgtseSj0HE=;
 b=P9fX6pXsHRtEOOa4ItKfdqebDo
 NJCKDdMhzRMEVSqKP3rYcVojKLs40/f21TRi5Q7yNkTiz+ce4ObV+UPFxV61E1oAM7NJCcbk8g+y8
 3LNCBTADfWvR1iBzcSqrESyzXC/PWDiFmVMRP3gw4Cd/nwQ1UXC07l9podSPdPhzCtDRDbEmvbIPq
 6Dl/hx7IUcFqw3DcLaJBD7TaX3O1G4qa5PTstgMKX/Xyn0nT2CMNN0Sxv3x9kyuIg0jLdF0tlkE/E
 Ee8p885oAl0oBXynPWkFB36Nc0u+EzeVqwFIFe5iFFDL7DLP7h+e/KAYcRZNOyZVJ2PJAeFHIwjlr
 VEHuGOGA==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net) by bombadil.infradead.org with esmtps (Exim 4.94.2
 #2 (Red Hat Linux)) id 1oU82i-005oZT-AJ for
 wireless-regdb@lists.infradead.org; Fri, 02 Sep 2022 14:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID;
 bh=8/9p4XOs9ynADcwk2rJHB943ArYkje+5EGwke1msBxs=; t=1662130388;
 x=1663339988; b=rOSKlEt5kX30dsiKKZUC8U5iRmy0AA8L5jh/vsoK6tG7gzr
 iAQwEz+eNTqkgi30u8rncilFU1uaUpQN9e+HCd2I7y+5Ul+n+0QDLeThLAy1C0+ELoNRwLUXqhlVC
 lWRfMN0uWFTKphfl1S1RR1RTi2kDKcsOh9IOv9jkKypPB7q9tnRYq4lFJHzauVyXDbwq6WShh2RSZ
 wH+6Uy8C2q2BuphJoSeRkHSWBKOtwy3gF3G2jcJXXtqVcxVm3PO8Zo5OBc8Ewgn/o7RLUQTd8bMF6
 zg/rnyl8jYcBvuypIpP4rs3f57W9WgPojW9tCoIRDfrICQTxDpwPmo+V9XLZXOUw==;
Message-ID: <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 02 Sep 2022 16:53:00 +0200
In-Reply-To: <20220901232734.5488-1-cesarb@cesarb.eti.br>
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
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
To: Cesar Eduardo Barros <cesarb@cesarb.eti.br>, sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, 2022-09-01 at 20:27 -0300, Cesar Eduardo Barros wrote:
> 
> +	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
> +	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
> +	# requirements, we can extend the range by 5 MHz to make the kernel
> +	# happy and be able to use channel 144.
> +	(5470 - 5730 @ 160), (27), DFS
> +	(5730 - 5850 @ 80), (30)
> 

If you do the latter as 160 as well, and add AUTO-BW, couldn't you split
them at 5725 correctly? But I guess it doesn't matter anyway.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

