Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=0bATWpnG7okea2Ck9ESe7ou57s6lUAmzVXhl3jniZqM=;
 b=Mb+tHFLxGsjPy6hcb47+tIl1D
 zlE9l/ZsAr19pRFPb176dC3HAWreikWUj4x5LsuC7ElbDeRyDnTeyPlLKX3zQ/cjZjMJGoeENLX7W
 JUZ3A2tHdT+01QjKHD503U2O9FFYPyzUS0vRur3ywTnI489IgLOvNWQLDbw5HPM3Kiq6Lg7hWR0YY
 09w6qqbxdDltkNagF0dSAS8Ed/wFkjfG7Awpu7GxhNS+V9s/PQkYFG6mxfRCmCOjuhSnAK7a3nxH0
 mWH4kYjJJjBCQC2smZU90YMkLsuxygtzGYHDOEVlK41Ufi8tOcam++vxQHP9l9kjVm1Dv44c8KRNv
 ZS6/4cf7w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5VJ8-0001mS-LY
 for wireless-regdb@lists.infradead.org; Fri, 29 Jan 2021 15:03:35 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1l5VJ7-0005j7-FF
 for wireless-regdb@lists.infradead.org; Fri, 29 Jan 2021 15:03:33 +0000
Received: by mail-io1-f70.google.com with SMTP id s21so7018843ioe.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 29 Jan 2021 07:03:33 -0800 (PST)
Date: Fri, 29 Jan 2021 09:03:30 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YBQjwtOxRKN3NpVj@ubuntu-x1>
References: <20201220212721.22450-1-illia.volochii@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201220212721.22450-1-illia.volochii@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Ukraine (UA)
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
To: Illia Volochii <illia.volochii@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Dec 20, 2020 at 11:27:21PM +0200, Illia Volochii wrote:
> This patch is based on the latest Ukrainian norms https://zakon.rada.gov.ua/laws/show/z0201-15#n48.
> 
> * Extend some frequency ranges.
> * Increase EIRP of frequency ranges.
> * Set wmmrule=ETSI to frequency ranges that are related to EN 301 893.
> * Permit outdoor usage of 2.4 GHz band channels.
> * Prohibit outdoor usage of some 5 GHz band channels.
> 
> Signed-off-by: Illia Volochii <illia.volochii@gmail.com>

Applied, with the 2.4 GHz rule updated to add NO-OUTDOOR as we
discussed. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

