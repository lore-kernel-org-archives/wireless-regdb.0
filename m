Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=RuJ8geKfdzKoADrqz1SC7i1IDkSgtcDCsVinime+YcY=;
 b=gzm+tsLYj3u26K
 gsPgjk1ynIbV9cJ896Jwbe9dJpaPwRjmapaAEPDcy7dV3X5XYaokw3U4Bt36ZhU7PigIe5va+Db3R
 sxK6sJffpjHMmeRuYVmaGOUyI1yuCZu4UKseKYg6Y86LbRcbiN87snP6lcrnf+RVlwePnkZBGKR1X
 R2ImAVt6uxhmCmXLi6LK6vxsyQw8NPYj4Gcy/b12p3NyOUeF+QB+yxpScaG4Y7kBBb60Ku7vpCX7f
 iM0imaAweUBNCQoODe8/n28B30BkS8bo7mPsk0wfnMB0zQrlw8H8eZZ+c++w7hkHFswDI6HHPHjUE
 pGWau/wSNOZNb+GZBa6g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPR8Z-0006bg-4A
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:02:16 +0000
Received: from mail-yb1-f199.google.com ([209.85.219.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPR8X-0008Jc-PP
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 13:02:13 +0000
Received: by mail-yb1-f199.google.com with SMTP id 202so10468260ybe.13 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 06:02:13 -0700 (PDT)
Date: Tue, 29 Oct 2019 08:02:10 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029130210.GM30813@ubuntu-xps13>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
 <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Harmonize ranges of
 CEPT countries (stand of July 2019)
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

On Tue, Sep 17, 2019 at 10:59:08AM +0200, Emil Petersky wrote:
> This patch unites entries for CEPT countries according
> https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> (CEPT ERC Recommendation70-03, Edition of June 2019) which lists all
> CEPT countries, who has harmonized those standards.
> 
> The most important (definition) entries are:
>   Table 1 / rows i and j (SRDs for 2.4 and 5GHz bands)
>   Table 3 / row b (2.4 GHz band)
>   Table 14 / rows e1, e2 and f (5GHz bands)
> 
> and Appendix 1 - National implementation
> with sub-tables and rows representing implementation of above standards:
>   ANNEX 1: NON-SPECIFIC SHORT RANGE DEVICES
>     Annex i: 2400-2483.5 MHz
>     Annex j: 5725-5875 MHz
>   ANNEX 3: WIDEBAND DATA TRANSMISSION SYSTEMS
>     Annex b: 2400-2483.5 MHz
>   ANNEX A: INFORMATIVE ANNEX COVERING THE APPLICATIONS OPERATING UNDER
> GENERAL AUTHORISATION...
>     Annex e1: 5150-5350 MHz    ECC/DEC/(04)08
>     Annex e2: 5470-5725 MHz    ECC/DEC/(04)08
>     Annex f: 5875-5905 MHz    ECC/DEC/(08)01

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
