Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=YNlIWIrf5KtbsER159BUJugi2kUBnWmstQPuscDVL/s=;
 b=o17bN2lW5NuApc
 iL72+q39G7OxPyomC2pKzHMN3FdIrb8B3o4tf7B7rSZ4Ug45Z1a+OXsH2RbdYKrBdTs8ID+rgF/BI
 gsSgy6emng6UJDgMTll8/AN7KFzWkCDfaJ7vmhYYbSH0I+nBi1F+lTAOvLXBbfAaLKfURbypybSFv
 wY4q5s4KH09DZSOgXu3qhOm6asuzcxSgDBwRgjXrH6/4zDgcZi2ysaYmoECwOcaPqnQE7UHgpLBiF
 blFVgbo/X8iKY0jSDlYl2CMkMpc6xiXLivYwcJotQYubLRL58EgLgTw+/l2Wj8raYe8cFeEj9CwCq
 c5ZhkqUF7hYS7BbToLbA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqWH-00043r-SF
 for wireless-regdb@lists.infradead.org; Thu, 04 Jun 2020 14:06:59 +0000
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jgqWD-0005mF-FJ
 for wireless-regdb@lists.infradead.org; Thu, 04 Jun 2020 14:06:53 +0000
Received: by mail-il1-f200.google.com with SMTP id q14so4008005ils.18 for
 <wireless-regdb@lists.infradead.org>; Thu, 04 Jun 2020 07:06:53 -0700 (PDT)
Date: Thu, 4 Jun 2020 09:06:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200604140649.GA5650@ubuntu-x1>
References: <534f77b3-c172-a5ef-ebe9-beaf123a200e@ironai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <534f77b3-c172-a5ef-ebe9-beaf123a200e@ironai.com>
Subject: Re: [wireless-regdb] Questions about max EIRP, ERP and antenna
 gains
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
To: Vincent Wiemann <vincent.wiemann@ironai.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 02, 2020 at 07:40:10AM +0200, Vincent Wiemann wrote:
> Dear Seth,
> 
> for about 7 years the OpenWrt developers are quite confused about the correct handling
> of EIRP values concerning the antenna gains.
> This patch is part of OpenWrt as an out-of-tree patch since then:
> https://patchwork.kernel.org/patch/2854533/
> 
> Please answer the following questions:
> 
> 1. You've defined a max_antenna_gain value. What does it mean?
> 2. As far as I can see it's not being used anywhere, is it?

This was before my involvment with the regdb, so I don't know the
history, but antenna gain was removed here:

https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/commit/?id=e56cd9618e3e5bf8ff96b799544b85170e34d9c3

The antenna gain values were included in the old binary db format, but
are currently always set to 0. It was omitted entirely from the new db
format, so while it's probably not impossible to add it's not just
sitting unused in the binary format anyomre.

> 3. While EIRP values contain the antenna gain, why is there no definition for maximum
> ERP values?

I thought that these essentially described the same thing, just
expressed differently. Why would it be useful to have both? Can't one be
calculated from the other?

> 4. Is it possible to include definitions and a flag for radio amateurs (e.g. the AREDN would benefit from that).
> 5. Aren't there any differences regarding multiple antenna chains? E.g. in Germany the Bundesnetzagentur clearly
> stated that the whole device needs to be seen as acting as one radio and therefore the accumulated EIRP of the antenna
> chains must not exceed the regulatory limit. Is it defined this way globally?
> 6. How to e.g. handle 40 MHz channels compared to 20 MHz ones? Does only the spectral power limitation apply?
> Is it like that in every country?
> 7. After asking the Bundesnetzagentur about whether it is allowed to use custom antennas and modulations on e.g. PMR
> frequencies (for which only ERP limits apply and which they confirmed), we wonder about the ERP restrictions on 2.4 GHz
> for "Funkanwendungen mit geringer Reichweite". It looks like as though it is possible in Germany to operate a WLAN as
> such instead which limits the ERP to 10 mW, but allows to use unlimited-gain antennas.
> This would allow us to operate long-distance links. E.g. with a 26 dBi dish which is the practical usable limit we
> would end up with about 4000 mW EIRP. Would you add these ERP-only limits once we've confirmed it?
> 
> The main reason for asking you these questions is that I'd like to resubmit Felix Fietkau's patch together
> with definitions for an external PA gain and the antenna gain.

I don't know the answers to your specific regulatory questions. But as
far as changes to the regdb, these changes may be possible, but it would
be easier to comment if you could give some example of what you think
these changes would look like. And any such changes would need to be
done in conjunction with the kernel changes which will consume this new
information.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

