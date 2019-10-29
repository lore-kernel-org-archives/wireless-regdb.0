Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=i1v73uWRpGtUaG8nb76sqh27etMhLCMhSXm570UwuPI=;
 b=qYxk4lnBkW6le3
 wrAckWi226DkdQEv43LekxS4/g4vH/w68ZnSXszw9V/EEX5rgdzbfdiDhFfsNivrEUqF7/yrep73K
 nGsoyVb9NnIi0mKZF/l64ihvfglssCnCNopTCg/JzuNicOVtztZv16qnHC46dh0UEWEM1P4VEplh+
 iWdVl22FWbLhNW0dsmGyj/SiGQaeygWicaEZwGr9J/j2+1tHYRkBQ5URHd0F6SQ2I3ijkiiz6yQ/q
 jjKhhGfTlW4zzw2XNdhTYhn0yY8QXHk4g3MCPe/vHF9TMjto3Ruixd4F/dNQjzyxV4uzN4FEgc/w0
 FcHR0vUr/WeDbY4vuf/w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPR8J-0006XZ-Vb
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:02:01 +0000
Received: from mail-yb1-f200.google.com ([209.85.219.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPR8I-0008Hu-IF
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:01:58 +0000
Received: by mail-yb1-f200.google.com with SMTP id y64so6952740ybf.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 06:01:58 -0700 (PDT)
Date: Tue, 29 Oct 2019 08:01:54 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029130154.GL30813@ubuntu-xps13>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Fix ranges of EU
 countries as they are harmonized since 2014...
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
To: Emil Petersky <emil.petersky@streamunlimited.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 17, 2019 at 09:58:27AM +0200, Emil Petersky wrote:
> Dear Seth,
> here you are, hopefully now it will work as it should.

Sorry for the delay. This patch is applied now, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

