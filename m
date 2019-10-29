Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=vwrY04WlrIrG/ZX/Vs+dFxkuDt6S2Xg9wbfd0IeKe9Y=;
 b=MCPfxJl8ovtk1j
 /305FX8f3F1qGqpeNQqt577ncVhFfsOA+RBAQTeqcqB42qADhMmXd/prwQI9o6iDtdYpTuy2qF0Tz
 usYLjFqk6twY5MOsGrqhW6vFsy+/FEVaFY49c6EQjSkkzaOXpPRdzr1Pk7ngGle2w9Duc6D9qVMym
 x/LfOKRNtIa7kO7133BlxblYCiOy4hXIQmlmbMw6Qj4jHXbC9M9LoJkqBZ3W+MjdZ0kfyU00nQO5s
 cF6/LZZCnajD4t8YWgGB4stKrxNRncU7hYkm9DYrNysBpxxPDPcDgbLCP4cNM3DXX2LWRToqO/I7d
 8CScFBandUg+pa8us0Sg==;
Received: from bsmtp2.bon.at ([213.33.87.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPT6g-0002nP-Jl
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 15:08:28 +0000
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
 <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
 <76f464e9-8806-ecbf-2dc8-67bb4190ecc7@streamunlimited.com>
 <20191029130853.GN30813@ubuntu-xps13>
From: Emil Petersky <emil.petersky@streamunlimited.com>
Message-ID: <31a00c5d-bb58-d423-d625-9ba4ebd177cc@streamunlimited.com>
Date: Tue, 29 Oct 2019 16:08:24 +0100
MIME-Version: 1.0
In-Reply-To: <20191029130853.GN30813@ubuntu-xps13>
Content-Language: en-US
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth,

it seems, that EU domain is advertised by APs/Routers here in Europe.
I know, that many clients use EU domain (at least internally in firmware) as well.
I would like to add it and use it along with setting for individual EU members.

I've made statistic of one WiFi scan in an apartment house in Vienna (Austria).
Results are:
35 x EU (Mostly UPC/Ralink Access points)
30 x no region info
 7 x AT
 3 x DE
 2 x NL

Thanks and best regards,

Emil





On 29/10/2019 14:08, Seth Forshee wrote:
> On Tue, Sep 17, 2019 at 11:55:07AM +0200, Emil Petersky wrote:
>> Create entry for united European region, as usage of frequency bands
>> is harmonized over EU and almost all CEPT countries as well.
>>
>> All EU countries and almost all CEPT countries accepted decisions
>> 2005/513/EC (5GHz RLAN, EN 301 893)
>> and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
>>  EU decision 2005/513/EC:
>> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
>>  EU decision 2006/771/EC:
>> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
>> Harmonized CEPT countries:
>> https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
>> Such decision make sense to create united European region (EU) in regdb
>>
>> United region for EU in regdb will enable much easier handling of proper
>> wlan parameters on embedded devices sold across the Europe.
> I'm a little curious about this one. I do agree that it would simplify
> things, but is an EU contry code something standard that wireless APs
> generally will advertise, or that clients will understand?
>
> And we do still have all the individual countries to maintain. Maybe it
> would make sense to define an EU region as rules that countries could
> inherit, and then have rules for any deviations from the common EU
> rules. Thoughts?
>
> Thanks,
> Seth


-- 
Emil Petersky

________________________________________________________________________

StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Office: +43 1 667 2002 4679 Fax: +43 1 667 2002 4401
Mail to: emil.petersky@streamunlimited.com
Visit us: www.streamunlimited.com

Meet us at:
CES - Las Vegas, 7 - 10 January, Westgate Hotel
ISE - Amsterdam, 11 - 14 February


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
