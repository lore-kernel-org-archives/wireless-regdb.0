Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=emji5WjOnw4aOT14/VRch+G/X742VQa1DXT5W98Km4A=;
 b=Oq7fjhlNkaF5C5
 YI5PGWSUPaQXutHk/o/f8UgVmsx1y3EKB4TV3aZbL1tVCSwpG6sKRFldj7KdO2NyRl1ZHMcG/bwn8
 2qHMeIyR48X6tWFQLrtovhUtpbQWC2jMOZ677YUQRxdd4ZYt46O/MINdnDww6yD1fpDjNZoCO3mWd
 Z0U+2F345rrzetcIHzKhYxikAf03OCoQntxPIF81mwRehYCBIVrWy/xmMda6hq2u2AsnmRmjX5AZ9
 PYbcoJwqu3Kl4q0C3IOPWd3haRBxpkBHQwsf5d+RVb0ls0d6cJHoQqMUUf3ZLciohh20SF8bDIxHG
 ESRoUeSGvy5ACtdPGeuw==;
Received: from hm1831-43.locaweb.com.br ([189.126.112.63])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTaC4-009F5o-SA
	for wireless-regdb@lists.infradead.org; Thu, 01 Sep 2022 02:44:38 +0000
Received: from mcbain0010.email.locaweb.com.br (189.126.112.12) by
 hm1831-n-113.locaweb.com.br id h20cqq2n8lg7 for
 <wireless-regdb@lists.infradead.org>; Wed, 31 Aug 2022 23:32:09 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <2cf2cb6e-8083-9c09-c2a6-ae49424ea37a@cesarb.eti.br>
Date: Wed, 31 Aug 2022 23:44:17 -0300
MIME-Version: 1.0
References: <271ca023-d574-7d84-a020-ec5950fb500e@cesarb.eti.br>
 <Yw4cTotCZm7CH/v7@ubuntu-x1>
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
In-Reply-To: <Yw4cTotCZm7CH/v7@ubuntu-x1>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Brazil (BR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Em 30/08/2022 11:18, Seth Forshee escreveu:
> On Wed, Aug 17, 2022 at 08:31:56PM -0300, Cesar Eduardo Barros wrote:
>> 	#(902 - 907.5 @ ???), (30)
>> 	#(915 - 928 @ ???), (30)
> 
> For these ranges I think you should use the same bandwidth as other
> rules in the database, i.e. 2 and 16 MHz.

I found only two entries in the database with rules for the 900MHz 
frequencies: US and "world". I don't think the US rule is a good model 
here; it can use 16 MHz because it's a contiguous range, but the range 
for Brazil has a hole in the middle.

Since there's nothing that a found in these rules which mention a 
maximum channel width, the correct width is probably the maximum which 
fits on each piece of the range. That is,

(902 - 907.5 @ 4), (30)
(915 - 928 @ 8), (30)

As far as I could find, the hole between 907.5 and 915 exists because 
there are three 2.5 MHz-wide GSM uplink channels there. However, I also 
found out that there is a proposal within ANATEL (Consulta Pública 52 
from 2021) to expand it with another uplink channel at 905 - 907.5 
(there are actually five uplink channels in that proposal, the other one 
is at 898.5 - 901). I have no idea when this will become official, or 
whether it has already happened (and just wasn't reflected yet in the 
restricted radiation rules I had researched), and what effect it would 
have on 802.11ah users.

Given the uncertainty from that change, and given that so far there are 
rules for the 900 MHz range in wireless-regdb only for the USA, it might 
be wise to hold it for now and apply only the rest of the changes, 
without these 900 MHz ranges.

> Otherwise I think these changes look good. If you can send a patch with
> the changes I would appreciate it, otherwise let me know and I can send
> a patch.

I will prepare a patch tomorrow.

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
