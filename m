Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:From:
 Message-ID:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=ecokfgn9lJ+rf2n5phf8pNz4KpN8v5DfAE8aGOcsNb8=;
 b=pecVhnaVrr/S+mEq+qw2xFDhY
 qwn8kXiPfUzvDmPayu31APVy+u1eKLj/yTvlqKNYew4LJXxBwHe3z8jgnl+i5wRosRmgArr3VzgW3
 FRsu8GsQPXnqh+ZqHKhcSzdivxoc23zh619I50UE6eFat8+pvDU+ZUdnnxI8/aFheB1GoYqxsPD0M
 BAFIhIb2YbGoPJDIjptsiilUi5qNi/afiKr4uw3LBTxQsDODM6MNoHJ/cNEKwg9iB+H0ukdTO9nPn
 xR+o5Rlgnq1R5yks/0IZPso0m5NPRjOLeGn2DHNctgm4CUFAtnxPQ61uR/GN6T+N1BSPz8psHDwVZ
 iH3MbQPnw==;
Received: from mx-out-2.hfg-karlsruhe.de ([193.197.160.5])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNQV8-0006pi-Ne
 for wireless-regdb@lists.infradead.org; Mon, 28 May 2018 22:20:29 +0000
Received: from postamt.hfg-karlsruhe.de (postamt.hfg-karlsruhe.de
 [193.197.160.12])
 by mx-out-2.hfg-karlsruhe.de (Postfix) with ESMTP id A4BDA2083A
 for <wireless-regdb@lists.infradead.org>;
 Tue, 29 May 2018 00:13:16 +0200 (CEST)
Received: from webmail.localdomain (webmail.hfg-karlsruhe.de
 [193.197.160.4]) by postamt.hfg-karlsruhe.de (Postfix) with ESMTP id
 3AA7D44B98C for <wireless-regdb@lists.infradead.org>; Tue, 29 May 2018
 00:13:16 +0200 (CEST)
Received: from webmail (localhost.localdomain [IPv6:::1])
 by webmail.localdomain (Postfix) with ESMTP id 29B88665A5
 for <wireless-regdb@lists.infradead.org>;
 Tue, 29 May 2018 00:13:16 +0200 (CEST)
Date: Tue, 29 May 2018 00:13:16 +0200
Message-ID: <20180529001316.Horde.N--dUzDwgeV9OdangpDcdQ1@webmail.hfg-karlsruhe.de>
From: christian.suenkenberg@hfg-karlsruhe.de
References: <20180515191126.19189-1-seth.forshee@canonical.com>
In-Reply-To: <20180515191126.19189-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz
 rule for France (FR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"; delsp="Yes"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello Seth,

it looks like you confused mW and dBm in your patch.
Sorry for the late comment, I'm following this list only
occasionally.

Quoting Seth Forshee <seth.forshee@canonical.com>:
> Based on [1] and [2], use of short range devices in this range
> is now permitted in France. Add a rule for this range, using the
> power limit of 25 dBm as specified in these documents and in
> ETSI EN 300 440.
>
> [1] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> [2] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf

The second reference was probably meant to point to:
http://www.etsi.org/deliver/etsi_en/300400_300499/300440/02.01.01_60/en_300440v020101p.pdf

> […]
> +        # short range devices (ETSI EN 300 440)
> +	(5725 - 5875 @ 80), (25)

This should be (14) or (25 mW).

Regards,
Christian Sünkenberg


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
