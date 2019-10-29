Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=gWXB2NLqKt4F5KR3Sf/hTf2ENO+a5AHpcG35M9fMMRY=;
 b=k2D6HRoacx1VjJ
 sPrDEE7bpne2uNjVxM2GHbBwns9zL/t1gA5kTJLtiVCSxVHVN9VYMYE4IlLjQvWYyjPfHALdWVRm7
 WHX48QPxYT/tZ20EPG/om34U3X11zHkGSltqsajOboC5y4ShZgWFG45enRAG6c8i3m3TwrgE9BIW7
 454tMcci9A+RRMvs56KW0pqwnop8SGb4c0Me3eNVf4H6+8SwvTvJ1zAxSu0MGiNPwDu0T6QwarRyv
 zd3kMADg0i4Pdr7AoQYcmvilcpdOD1GhWgCvdhEP1IktNA9/n+D4IIy8jOvdw3Oqfrns2PB6pgv5I
 1rKjl6peVrWsAVeKzWUw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRff-00061b-IL
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:36:29 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPRfd-0004jW-BI
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:36:25 +0000
Received: by mail-yw1-f69.google.com with SMTP id q127so9153609ywg.22 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 06:36:25 -0700 (PDT)
Date: Tue, 29 Oct 2019 08:36:21 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029133621.GP30813@ubuntu-xps13>
References: <1566636490-3438-1-git-send-email-hanipouspilot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566636490-3438-1-git-send-email-hanipouspilot@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3] Russian entry is incorrect.
 According to the last regulations document of Feb 29, 2016,
 160 MHz channels and 802.11ad are allowed.
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
To: Dmitry Tunin <hanipouspilot@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org, linux-kernel@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Aug 24, 2019 at 11:48:10AM +0300, Dmitry Tunin wrote:
> http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> 
> Note that there was never a DFS requirement in Russia, but always was
> NO-OUTDOOR on 5GHz.
> Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> Also Russia has never been regulated by ETSI.
> 
> EIRP has been reduced by 4dBm because of TPC requirement.
> 
> Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>

Sorry for the delay. Applied, with some slight adjustments to the commit
message. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

