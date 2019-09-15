Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=vBFrP1YIhL7ubqpYqOE1r355n9Z9hkvE29QOKGhSeQA=;
 b=fWyl+398ZZACl0
 aw3Y/wjA7dnfvmS8fSfPizlgfurGI4l/XEl904lX8kNApjVcZh5G11+qW74YyG34Uf7uMlCIDMH8e
 SHFwICNkhtKDP8DotNYLuhPWV6lsts7ZXuFDuzUaVfYNEfWw5OZ4F55L9CkbPsyyw2KOzBWLo5R8L
 PTBGE8DFFiJNoXTAoGIRbLPzmUpiWeICmIZpMj4LLaGTwrlnXHs9guj9JcNCAHK6VNP883lmjy6EU
 290bm6sIlrRg7H6rWLuh38xseiSZWkkdVuS7bQjandxwxSu8P0yYV7nHk/VRUfwQR7+kGcFu+3xou
 wsVJhGMGc6YlZB4G+n4g==;
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cB7-0002bn-TL
 for wireless-regdb@lists.infradead.org; Sun, 15 Sep 2019 21:35:31 +0000
Received: by mail-io1-xd35.google.com with SMTP id r8so49304701iol.10 for
 <wireless-regdb@lists.infradead.org>; Sun, 15 Sep 2019 14:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc;
 bh=++bAoxlksPOcvEg1gGnU8F7I0tI2kxi/6+syB3SJEvg=;
 b=Flhji9abENEJeLZejltbeynVXYxC/G6vyZTcNsTMCQVWep/9mtlGjwyfJeRFlvYSZ/
 vUuogPV2g7PJFPhw3FCLx5o568AWtMp3PsXHZ1x5rrCytgQ5jfcZwtZpKgdD0wNdUeEL
 xAZGSEzXGZTif5C9cTY1bWWlWiEoptFNl7E2B0zX0/fbNVMkJA/dc12b7HKv3gUdtcIS
 M0io7pyCaOknsZQHvJLTxlh9Oz1Yd8ohZsMG6hXw4F/gqgZJl7ezZF1zQVuyUas43ZyO
 kdZfYDmDgHaC35UjL7n3K35O9zk+ptXJqZFPicUQXBeNfpyI9xdctnAellyUapwu/lNn qvVQ==
MIME-Version: 1.0
From: Olli Niemikorpi <mr.oole@gmail.com>
Date: Mon, 16 Sep 2019 00:35:16 +0300
Message-ID: <CAFXqH2MPhju-GNfwhcubLssZP5CuQAdENtQQ2TdgTNk0pur=Gg@mail.gmail.com>
Subject: [wireless-regdb] Wireless-regdb: Update regulatory rules for
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

Based on https://w.wol.ph/2015/08/28/maximum-wifi-transmission-power-country/
, maximum output power for 5Ghz is 30 dBm from channel 100 and above.
However, only 27 dBm is maximum in wireless-regdb. Could you please
fix it?

BR Olli Niemikorpi

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

