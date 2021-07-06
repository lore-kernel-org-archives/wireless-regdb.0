Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=HWHmKSYJu19ONY9HK5sSX+O7q/BZ4bP0jQvr0PM0jck=;
 b=kSqsMBVaXsZ2lS
 OPnD1MXUg1OiHI3DMJSHBKTvLFNUsEpI5AhCe0vwhtAn1m//MlRRgl8K8t2lB6X4M1iYM3GEndsHZ
 qwlDR45xCxSk19pouWHIklD9UFCoy/dZFAXnwUdRaz6u1285wXcTXKb7IaTWyrhWwzyMH5uyfY5Gc
 2LGr4oMI5ZLsueuP1d0RIES0cEaQUjNTE7QwN+GzbNX3/zLt75HOD8PwTx19y2vhED9T4C5l4fg8l
 sKYslfcCInQ4D66q12iRELhok2Lv9yt1J+h2l8XiDBuPvHGmfWkj8RUIGOFts/IDajFupUjx64VXj
 croOITjc81QNrGd0Bevg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0nFz-00CBJz-ES
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 15:45:08 +0000
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1m0nFv-0007uo-NJ
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 15:45:03 +0000
Received: by mail-il1-f200.google.com with SMTP id
 m15-20020a923f0f0000b02901ee102ac952so12878064ila.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 06 Jul 2021 08:45:03 -0700 (PDT)
Date: Tue, 6 Jul 2021 10:45:01 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YOR6fRX+RkpjWECF@ubuntu-x1>
References: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
 <YL+RDtGatz/ybG+M@ubuntu-x1>
 <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: recent FCC report and
 order allows 5850-5895 immediately
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
To: b.K.il.h.u+tigbuh@gmail.com
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

I've been on vacation; sorry for the delay.

On Wed, Jun 30, 2021 at 05:17:37PM +0200, b.K.il.h.u+tigbuh@gmail.com wrote:
> > On Tue, Jun 8, 2021 at 5:47 PM Seth Forshee <seth.forshee@canonical.com> wrote:
> > I think we concluded previously that both 5730-5850 and 5850-5895 should
> > have a max bandwidth of 160 MHz to permit use of 160 MHz across these
> > channels.
> >
> 
> Yes.
> 
> > We also discussed using NO-IR for 5850-5895. The regulations forbid
> > active scans, and PMTP-ONLY does not prevent them. NO-IR appears to be
> > the only option which conforms to this restriction, though that will
> > also block running an AP in this range.
> >
> 
> So we would not be able to operate an OpenWrt or other Linux-based AP,
> while other vendors would be allowed to do this? How is this
> acceptable? How does this help in liberating the band?

We're allowing clients which use the rules in the db to connect to APs
in the band. We may be able to get APs supported later on by getting
changes to break up passive-scan and no-IR. But with what we have to
work with right now, and based on my interpretation of the rules, I
think this is the best we can do currently.

> > I also read the max EIRP for clients as 30 dBm without any TPC
> > requirement. Did I overlook something which limits the EIRP to 27 dBm?
> >
> 
> The 27 dBm EIRP is needed for 20 MHz operation due to spectral density
> requirements. Is my information correct that regdb has no notion of
> specifying a separate limit for spectral density? (If it did, we might
> be able to double the EIRP for 2.4GHz of 10MHz channels)
> 
> I have summarized the reasoning in a comment of the original patch,
> but let me cite it here then (copied from the more recent link you
> have now given):
> 
> > "(iii) For client devices operating under the control of an indoor access point in the 5.850-5.895 GHz band, the maximum power spectral density must not exceed 14 dBm e.i.r.p. in any 1-megahertz band, and the maximum e.i.r.p. over the frequency band of operation must not exceed 30 dBm."
> > "the Commission limited indoor access point EIRP spectral density to 20 dBm/MHz with a maximum EIRP of 36 dBm over the bandwidth of operation (e.g., 33 dBm/20 MHz and 36 dBm/40 MHz)"
> > "To keep the potential for causing harmful interference low, the Commission required client devices to operate under the control of an access point, and limited client device's power spectral density and maximum transmit power to 6 dB below the power permitted for the access point."

Ah, thanks, I had forgotten about this.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

