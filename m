Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=t7mWC0FtKYM6Na/f/jes8uEk0JeZl6ggRrmJBdlCxAM=;
 b=ihemLaeNDqpkRY
 ZR3X0UXmEf1fHgA4TY0WGfb20Qv24JC8SUEq/EKg0Cw5kMZmdmlUtyCB+ZEoAwKkhb98DdftYl9fn
 2uaDFG3MWDifpQDpsPuTK9qatK/hbYaoPEd+kJ06DrbUlMfjyMvVltzBlFFUrfV2aRezST7AzAdA2
 ABgYUaJ3DbC0TSEJqyiEFlw/ZugLqHWfKyMAzfE6UsUzaUAl9fR7BxQ6fXK/YrkF1vO+UPsTxMSwY
 c1AIQMp4Bb5wt16X7BDMierV70ATul7s+XH4EkO8HHeXf0cmyJW5aJOv3Yy6t5qmm/nkfLvy/7lap
 0H/E11KeH8qYb21YbAMg==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309;
 h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=azd659SGNhyyJJ79qewYn8m0RM6DKPq4+6FyCxUUyOg=;
 b=Lab6AthwsVDKl5xWwp5pgI2SmE
 grvXU2olpY2Cp7KR6Sorrq19MdxoESeuo2gxTtDjkxmSGiA4of6r7+XuuXSkv/FHZx7zhc3enfiEF
 q/dGic6azmzzIzntklFvTqDgD59IPTvD0Qtfmj4SKRGXah8R3dYih7cw7us5G7MMU15BYtPLlwi9W
 cBByIl0RroaMtxp5FsJoBTOkTKvMb0e3NtkrQyrRHAyMGSW+rjrnA/P9OpQjQp+KG7LLsC2p5Guuj
 hAqHYE1J5CUqY4VLoKkNAxJjthhQp9fPlgi1Ssy4Ede0QOjk9VYiFWdyBcVmD1sqzWWPQkFT7UHdS
 T3fJePJw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbjsk-00HRbP-PO
 for wireless-regdb@lists.infradead.org; Wed, 28 Apr 2021 13:05:36 +0000
Received: from mail-oi1-f200.google.com ([209.85.167.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lbjsg-0004IN-4v
 for wireless-regdb@lists.infradead.org; Wed, 28 Apr 2021 13:05:30 +0000
Received: by mail-oi1-f200.google.com with SMTP id
 n63-20020acaef420000b02901027a455040so25244781oih.23 for
 <wireless-regdb@lists.infradead.org>; Wed, 28 Apr 2021 06:05:30 -0700 (PDT)
Date: Wed, 28 Apr 2021 08:05:26 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YIldlmkRu633DDY8@ubuntu-x1>
References: <20210428115428.AEB37A0151@smtp03.mail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210428115428.AEB37A0151@smtp03.mail.de>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Great Britian (GB) on 5GHz
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
To: mj888@mail.co.uk
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Apr 28, 2021 at 01:54:28PM +0200, mj888@mail.co.uk wrote:
> Hi Seth,   Please change wireless-regdb for Great Britain (GB) on 5Ghz (band C - 5.8Ghz)   As per Ofcom statement from 24 July 2020 - Improving spectrum access for Wi-Fi Spectrum use in the 5 GHz and 6 GHz bands https://www.ofcom.org.uk/consultations-and-statements/category-2/improving-spectrum-access-for-wi-fi    DFS IS NOT LONGER REQUIRED ON 5.8GHZ (BAND C - 5725-5850 MHZ) FOR INDOOR USE / DEVICES UP TO 200MW   
>  I believe required changes are as follows:  - (5725 - 5875 @ 80), (100 mW), DFS  + (5725 - 5850 @ 80), (200 mW)        Thank you     

The proposed changes to IR 2030 are contained in Annex 3 of the document
you linked to. I pulled up IR 2030 from the Ofcom website:

https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf

As of yet this document does not contain the proposed changes. I'm not
familiar with the process for chaning regulations in the UK, but based
on section 1.6 it sounds like the document expresses that Ofcom made a
decision to amend the regulations, but that the document itself does not
have the effect of actually putting those changes into effect. If you
are more familiar with the process and I have misunderstood something,
please clarify.

You are correct though that this range should be 5725-5850 MHz. Seems it
should also be NO-OUTDOOR.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

