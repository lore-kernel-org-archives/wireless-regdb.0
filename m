Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=n2ZuvmE0cdSEyXwGM4MGfc/IkfTQhh6a+pLtfjYy95M=;
 b=OI7z4SuMZp8Qti
 33nZkz4eEz2LXPv8RJ94gLYXFDSvBoy5CoR2u+xA8CXVruje3MP6iCkbmADQFBkmH/ovsB56+1ji5
 njTvDtxlPWEbB4ZguPqfMPT3jDTFZYsiKHtiR1ePbJLpRCe8kqCjS2K6kY/KIKtnn02mIpJ7oGw1n
 Ne6Qi7eMc/4H88zs9bD7XCvf0kW4QFXpSAv7LwNVCeCkpyaiig3gxgNhpaogYJ5o+luRel70eVP8j
 e37bdhkFLQIfXE5Anyb/wH2ME20NRuj4dQEEo27My6hoMlhQEb0BZkwiVrP+Qp+KYEHyuuvmPgefq
 7Bpmf9yQY2PDNKcFnDXw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvK5C-0002Ot-0k
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:54:03 +0000
Received: from mail-ed1-f72.google.com ([209.85.208.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gvK56-0005SW-RZ
 for wireless-regdb@lists.infradead.org; Sun, 17 Feb 2019 10:53:56 +0000
Received: by mail-ed1-f72.google.com with SMTP id j5so2270605edt.17 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Feb 2019 02:53:56 -0800 (PST)
Date: Sun, 17 Feb 2019 11:53:53 +0100
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190217105353.GA22074@ubuntu-xps13>
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
 <20190122211351.GW7206@ubuntu-xps13>
 <CABPxzY+jbfoVGF_fta3reHa5yngmp_+dVKCiu3DR-8WzzxAPow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABPxzY+jbfoVGF_fta3reHa5yngmp_+dVKCiu3DR-8WzzxAPow@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
To: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jan 23, 2019 at 04:19:26PM +0530, Krishna Chaitanya wrote:
> On Wed, Jan 23, 2019 at 2:43 AM Seth Forshee <seth.forshee@canonical.com> wrote:
> >
> > On Tue, Dec 18, 2018 at 01:38:15PM +0530, chaitanya.mgit@gmail.com wrote:
> > > From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
> > >
> > > Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> > > 57-64GHz band till 71GHz with almost same rules.
> >
> > This looks right to me based on my research. You're missing one thing
> > though. You need to provide a Signed-off-by tag, please see the
> > CONTRIBUTING file for more information. If you reply with your tag I
> > will add it when I apply the patch. Thanks!
> 
> Sorry, didn't realize missed SO. You can use below. Thanks.
> Signed-off-by: Chaitanya Tata <Chaitanya.Tata@bluwireless.co.uk>

Sorry for the delay. Applied now, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

