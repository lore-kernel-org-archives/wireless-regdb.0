Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=SVLWKtTkZgitNnh6q9vEsLHUw6Gnvhc8jOD6CLUEHSM=;
 b=K2COTrpLzocVBs
 6QDjoM80EN2H1uoDEvh3vKfCzvciStnnBTp+QMVPRXfPC4ElyLKh8KQaDtsCW5g7kPyXUssVE5nZ3
 eirBP9RM2i4Qygv+QNDBrprOFqUmmjLqqildv4Z5WpK5xYzrA3vtsD4MZbtOYgX5sRVu9Rbia3u44
 bFiX0DcAX+bv80F64f49LfVcPT3NyP3CYKRkY3wYHCj2pf8r7k+gAF+3f78+2hK5Vo6oD64ORm9uL
 VwdwKReSl3XJOzi+dg7E5/TSBx/UFKBiqVGdzsACRvXiwjFIaEQDm33BU1Q/ylZDbqKaMREQYj1nY
 3STbmF5MtNrzBbLlK7QQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRF3-0000mk-Kt
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:08:59 +0000
Received: from mail-yb1-f199.google.com ([209.85.219.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPRF2-0000ZH-AP
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:08:56 +0000
Received: by mail-yb1-f199.google.com with SMTP id w13so10518815ybj.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 06:08:56 -0700 (PDT)
Date: Tue, 29 Oct 2019 08:08:53 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029130853.GN30813@ubuntu-xps13>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
 <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
 <76f464e9-8806-ecbf-2dc8-67bb4190ecc7@streamunlimited.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76f464e9-8806-ecbf-2dc8-67bb4190ecc7@streamunlimited.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Create entry for
 united European region
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
To: Emil Petersky <emil.petersky@streamunlimited.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 17, 2019 at 11:55:07AM +0200, Emil Petersky wrote:
> Create entry for united European region, as usage of frequency bands
> is harmonized over EU and almost all CEPT countries as well.
> 
> All EU countries and almost all CEPT countries accepted decisions
> 2005/513/EC (5GHz RLAN, EN 301 893)
> and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
>  EU decision 2005/513/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
>  EU decision 2006/771/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> Harmonized CEPT countries:
> https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> Such decision make sense to create united European region (EU) in regdb
> 
> United region for EU in regdb will enable much easier handling of proper
> wlan parameters on embedded devices sold across the Europe.

I'm a little curious about this one. I do agree that it would simplify
things, but is an EU contry code something standard that wireless APs
generally will advertise, or that clients will understand?

And we do still have all the individual countries to maintain. Maybe it
would make sense to define an EU region as rules that countries could
inherit, and then have rules for any deviations from the common EU
rules. Thoughts?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
