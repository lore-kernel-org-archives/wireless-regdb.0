Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=0S3ENMiCoQEauFRRtlKwR8XNNibNHbU+c0+NeaDgtDA=;
 b=DpEzjBYycOltCZ
 5iOIe9us/CrJQefPjI+UUVwzAkH00Zu8xKUUXAtN0gzzoAEh07aQtxwKv/9AzAGdiS4Sl7Ufpi71v
 YZ5//7i8wcWA4xScazHOWJVnTCjF/0YUoWQSlQgHRyAVkg9EYMbjFa+GMWfrpB1gcC495FyPaE3do
 7pADdv9tmb8bYPTNYlV84mXa1UgX5RV11vsWN63AYHFYa/vTZCAAq29NN0fGRBZ/fdfQu08Pme29X
 K6GtEqfA1Cq2L6JSaFTZheh86jhOa8+K/afpEDsZAYf0z4RFpp/8FdaRsUAJQAuQMcK8L0SEmNQxp
 AvjMdk3HyjsmDinKKHJA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209;
 h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yoCo4l4Isj8u2Za1bpUDJ/rkMzZhnvneRNoWwy3V1Zk=;
 b=I9oK7wOiyf+tcshkmgqrD/71EP
 esIQlFpzkHFF21Jsli3Pik1KEQ+D68FOx6wHs3ha8Orr4LjRGX1MIwh2mrrOnJoTryjYk6wa5JsOz
 V6VYmwlw26VFbR1ZEma0S0TrFZILSmajtbEefcgjjeXYs4myHdSQeK3L/zgxA0E6YdR9x/OKL9US7
 0IQh2o22NSj6ESlGIEH1xASgqkk6VzVyhtkfFhMPp02hg5A/81mtWXdvXhjATv62V7LAJujSrkLAX
 bMQ1pjsKqtr9uL6lA1iXv0yOntDFwSBYLJOwUyBVFVrBLf9hdqrkeWZLfOTxEFsx4NZnJ73lGSl2S
 vE/6k7gg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNenr-0005dD-H3
 for wireless-regdb@lists.infradead.org; Tue, 29 May 2018 13:36:45 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fNenf-0006FG-Dd
 for wireless-regdb@lists.infradead.org; Tue, 29 May 2018 13:36:31 +0000
Received: by mail-it0-f69.google.com with SMTP id q5-v6so11600986itq.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 May 2018 06:36:31 -0700 (PDT)
Date: Tue, 29 May 2018 08:36:28 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180529133628.GC3401@ubuntu-xps13>
References: <20180515191126.19189-1-seth.forshee@canonical.com>
 <20180529001316.Horde.N--dUzDwgeV9OdangpDcdQ1@webmail.hfg-karlsruhe.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180529001316.Horde.N--dUzDwgeV9OdangpDcdQ1@webmail.hfg-karlsruhe.de>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: christian.suenkenberg@hfg-karlsruhe.de
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 29, 2018 at 12:13:16AM +0200, christian.suenkenberg@hfg-karlsruhe.de wrote:
> Hello Seth,
> 
> it looks like you confused mW and dBm in your patch.
> Sorry for the late comment, I'm following this list only
> occasionally.
> 
> Quoting Seth Forshee <seth.forshee@canonical.com>:
> > Based on [1] and [2], use of short range devices in this range
> > is now permitted in France. Add a rule for this range, using the
> > power limit of 25 dBm as specified in these documents and in
> > ETSI EN 300 440.
> > 
> > [1] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> > [2] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
> 
> The second reference was probably meant to point to:
> http://www.etsi.org/deliver/etsi_en/300400_300499/300440/02.01.01_60/en_300440v020101p.pdf

Actually it was meant to be
http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN,
but wrong in either case.

> > […]
> > +        # short range devices (ETSI EN 300 440)
> > +	(5725 - 5875 @ 80), (25)
> 
> This should be (14) or (25 mW).

Good catch, it's not that I confused them so much as I just forgot the
mW. I'll fix that.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
