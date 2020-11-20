Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=uueWleoB7A1DVNe1+tlzVsNz8T9vTjV8CfLMqeuy/CQ=;
 b=jnmdUAqWZ8CmHvxt17NLkTCjv
 OTLzd4n49hKsATI8rFohrEReK2vsN8QN5Qc492G/TVsRx4Q1CHGBbR7P5UcRxOFqJxcI5SgJsZDdB
 mfh/hxRIDX9PhyHco+oKHODcX/FqoXZyOzb8sjqrzvSEViONCa5MVGHvjAb0o9NjCF2tVCzTaSTf4
 jV2IsvJp1tjovaEpXjdrHzb1vyQHzOaoywPY8GNTXQ6JeDpLcIoT8RmNVO1yWDOG8Lh5YvtRMcGEk
 eW5NCoWWhTBgNXkSMxQLZZo3HNICF4+0DXHm9vAkoizP1K4mjwfounJi7Wa2UyWib3lUFEeo7GSBj
 1z/lAxNiQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kgBmb-0001Mi-0e
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 19:09:23 +0000
Received: from mail-oo1-f70.google.com ([209.85.161.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kgBmY-0001Cs-Kg
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 19:09:18 +0000
Received: by mail-oo1-f70.google.com with SMTP id f73so4350058oob.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Nov 2020 11:09:18 -0800 (PST)
Date: Fri, 20 Nov 2020 13:09:15 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201120190915.GO5439@ubuntu-x1>
References: 
	 <CAPgWZqy_bD7KP_ONv1C7tUVw4TLw3QK_xcyYXpi_WH1=4VJwQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPgWZqy_bD7KP_ONv1C7tUVw4TLw3QK_xcyYXpi_WH1=4VJwQw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Kazakhstan (KZ)
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
To: Pavel Starosek <starosekpd@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Nov 12, 2020 at 12:46:34AM +0600, Pavel Starosek wrote:
> Based on [1]:
> * Extend 2400-2483.5 MHz range
> * 5150–5250 MHz range may be up to 200 mW
> * Add 5725-5850 MHz range for indoor usage
> * Add 57-66 GHz range.
> * In 5470-5725 range change the bandwidth from 80 to 160
> 
> [1] http://adilet.zan.kz/rus/docs/V1500010730
> 
> Signed-off-by: Pavel Starosek <starosekpd at gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
