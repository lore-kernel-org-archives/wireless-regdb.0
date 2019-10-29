Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=54kVNJK5VxeG+sQ8oohLO0SQFvyGYmHXnC6YTaQjoRA=;
 b=Vg/SiuEZjlJyZi
 +LXqffDY6RRU68ZYRDvRD9K+Y916zOihoIGe9rWRqF79jFdQ+s0MIrkuZIF+q9otFowfu+ICOrTsg
 2vyOHYVsjta1tgZry6+eq1i41U1uyaCW5NCdoN7qeXszLV3cBquLAk3PErWMrygNifGUqBRzGxUk6
 BDJBr6smdmlonoJSeUqAFBnFe/sCCYsFWhUMmNfsYahXiVo3ThLfzJvV5S6SBEdh1aylawry2lA2P
 DNqeES0AjlurH7SYli9xywNWXElI9iIwJYxpq1YQzLtGHVKigVse2hWTHT0BDQGrMVoiqyt5Akqpy
 vRlrxb8E6iwSLJGH9fiQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSuP-0005nY-F8
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 14:55:47 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPSuO-0007lL-54
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 14:55:44 +0000
Received: by mail-yw1-f69.google.com with SMTP id s128so940951ywb.16 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 07:55:44 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:55:40 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029145540.GS30813@ubuntu-xps13>
References: 
	 <CAFXqH2MPhju-GNfwhcubLssZP5CuQAdENtQQ2TdgTNk0pur=Gg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFXqH2MPhju-GNfwhcubLssZP5CuQAdENtQQ2TdgTNk0pur=Gg@mail.gmail.com>
Subject: Re: [wireless-regdb] Wireless-regdb: Update regulatory rules for
 Finland (FI) on 5GHz
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
To: Olli Niemikorpi <mr.oole@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Sep 16, 2019 at 12:35:16AM +0300, Olli Niemikorpi wrote:
> Hi,
> 
> Based on https://w.wol.ph/2015/08/28/maximum-wifi-transmission-power-country/
> , maximum output power for 5Ghz is 30 dBm from channel 100 and above.
> However, only 27 dBm is maximum in wireless-regdb. Could you please
> fix it?

Transmit power control (TPC) is required in this band, see [1]. Since
Linux does not implement TPC, the maximum EIRP must be reduced by 3 dBm,
so the value in the database is correct.

Thanks,
Seth

[1] https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

