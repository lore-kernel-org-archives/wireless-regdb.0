Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=2fpWou5Rsg4eY6yKneKN1C0EfQtafaWsdCD5ut38Ku8=;
 b=chY7+b7cxpAmzN
 sFxIulJI3d0HSOZdZ+V0HG532dPn8TR2Kp0eSBb3priYhsmgiZ+RrVFoWwaVHaTjmsEP1QI2w7SK1
 oBfjrxWtmeIQzMcnHlKFTcmnjhfAn2fjepCAvJmPGuQ69+HR8j7BnBiYkj8h29iREnxCC6EMTm8ZV
 5OCjSLgVVkGbi5n6/7J/r+8kLhbEJOo2ygk4pnkC7T1R3AB/htHggv1ywCVxS422jsCo5nx5+309J
 PKoWQDjFBFSdS1Y77aBSn3ShaJ1Qs2QmXta0XSIybBPSN+xn0C5dGW+wn9vIMW9cVoBma3fChYgyg
 J7aPeVj9g7GheAAumcpg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqBx-00005w-Vw
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:15 +0000
Received: from mail-qk1-f199.google.com ([209.85.222.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jTqBw-0004hU-KE
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:12 +0000
Received: by mail-qk1-f199.google.com with SMTP id f132so3360452qke.11 for
 <wireless-regdb@lists.infradead.org>; Wed, 29 Apr 2020 10:08:12 -0700 (PDT)
Date: Wed, 29 Apr 2020 12:08:09 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200429170809.GR3158@ubuntu-x1>
References: <20200323122938.7997-1-me@ndoo.sg>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323122938.7997-1-me@ndoo.sg>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for Singapore (SG)
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
To: Andrew Yong <me@ndoo.sg>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Mar 23, 2020 at 12:29:38PM +0000, Andrew Yong wrote:
> Add 802.11ad 60GHz band:
> https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSSRD.pdf
> Changes to IDA TS SRD, Issue 1 Rev 4, Jul 09 - Table 1 (31):
> "The band 57 - 66 GHz at <=10W (e.i.r.p) is an additional frequency allocation for Wireless LAN / broadband access applications."
> 
> Harmonize 5470-5725MHz band non-TPC transmit power with other FCC Part 15 Section 15.407 and EN 301 893 domains (AU, BG)
> 
> Patch v2: 5150-5250MHz does not need to observe TPC thus remains at 23dBm
> 
> Signed-off-by: Andrew Yong <me@ndoo.sg>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

