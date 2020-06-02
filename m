Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
 From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=j6F3Yg7VXEMApLNrCLUM/7fAFHY4FmfF1cU+onFXY84=;
 b=g3+QoYGzobWbcj
 RuT6IVUDZ1SdrA7/GOB0Qv+LnvtuKo7gT30pR12rAB5xCMGk9MCqPfG8SctjhPbf9aNJ4MxZVdsK0
 S5Y1eoujMOJMBrPYDANZozji9sN6NM/C/0geqOFnUQZvfAP2XRrg/fP8V2SSRJQ27UC2DkSGG5gm/
 cvS0TOHpEBYFAarcJLQkQhqD1F7grF2939foXbKEEkktHwFqc8omKFhxt4yj3kqtaCxFQSSY0MINA
 Kk+ybKhMCZnX8jIw/RX7FJP7wVcNCWSeWLjlccUxdnUKiydGflShNOylK+hlfmx+yuzX48+iySiix
 sK4C1q6gxTT+qWBzzPhg==;
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzeo-0006vG-Qp
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2020 05:40:17 +0000
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Message-ID: <534f77b3-c172-a5ef-ebe9-beaf123a200e@ironai.com>
Date: Tue, 2 Jun 2020 07:40:10 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] Questions about max EIRP, ERP and antenna gains
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
To: seth.forshee@canonical.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Dear Seth,

for about 7 years the OpenWrt developers are quite confused about the correct handling
of EIRP values concerning the antenna gains.
This patch is part of OpenWrt as an out-of-tree patch since then:
https://patchwork.kernel.org/patch/2854533/

Please answer the following questions:

1. You've defined a max_antenna_gain value. What does it mean?
2. As far as I can see it's not being used anywhere, is it?
3. While EIRP values contain the antenna gain, why is there no definition for maximum
ERP values?
4. Is it possible to include definitions and a flag for radio amateurs (e.g. the AREDN would benefit from that).
5. Aren't there any differences regarding multiple antenna chains? E.g. in Germany the Bundesnetzagentur clearly
stated that the whole device needs to be seen as acting as one radio and therefore the accumulated EIRP of the antenna
chains must not exceed the regulatory limit. Is it defined this way globally?
6. How to e.g. handle 40 MHz channels compared to 20 MHz ones? Does only the spectral power limitation apply?
Is it like that in every country?
7. After asking the Bundesnetzagentur about whether it is allowed to use custom antennas and modulations on e.g. PMR
frequencies (for which only ERP limits apply and which they confirmed), we wonder about the ERP restrictions on 2.4 GHz
for "Funkanwendungen mit geringer Reichweite". It looks like as though it is possible in Germany to operate a WLAN as
such instead which limits the ERP to 10 mW, but allows to use unlimited-gain antennas.
This would allow us to operate long-distance links. E.g. with a 26 dBi dish which is the practical usable limit we
would end up with about 4000 mW EIRP. Would you add these ERP-only limits once we've confirmed it?

The main reason for asking you these questions is that I'd like to resubmit Felix Fietkau's patch together
with definitions for an external PA gain and the antenna gain.

Best,

Vincent Wiemann

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

