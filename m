Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=S5Sv1vkSkT5pEmAfzANYA1zOc29CTwbfHe9I1zsgW30=;
 b=j/WF7mRrvwpx6P
 B9jUhkeHIYuu/acD+YfhPiSHCiLMX1N+WuMn59V5FvCHwP24KsuRGPP2aNu3rnPQ2pR3Atc9d8VKI
 gh5+ZPBi2l9x8knoS9ogVuI/UffjhwJRtF0AWV172067PHI3rt4+URyHRGFGNPdbdpheCRa5MTd5C
 yIrqYoKmgUXI1/U6ists9fTa30a00FXsOk4oSwNalEykmUukPWSAHtNEb6ocE2S3txHVSjx2lEgVj
 p3a4jyRJ1Zq6irUNDKgnM3J+LDTmqTb4nGEO6ri+gxqWlgS43j1E0hNpLHo8DVLyuOhg8N6/NW1G2
 t2IXrJgXunQbE6sOUlbQ==;
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgfzT-0005jD-70
 for wireless-regdb@lists.infradead.org; Wed, 22 Feb 2017 23:06:33 +0000
Received: by mail-qk0-x242.google.com with SMTP id n127so2605507qkf.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 22 Feb 2017 15:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=VsyaL+PXpAzwNHjFpV6aP7MmQKWlGZRGhPdI/UuPoEU=;
 b=CxnSEwb6zE5bRrwNjbIsNgaBAC27J1LTHCPAw9fxW97uPPitMSZqChq9lRYX4Aun27
 3MAS0IVitLRLeM8tVyzx1Xliq+cjCeD3zdcDiO6SRJMvWIPy2/Dja7nFF7DVGv5ytmqC
 XDjp8hIPXHo0qZD5u6bpBcDN2zQEwETsiW+pD5IeCIvE/aydROpmWF48gtAJJ1nK4yaW
 bhaMtxWZC5W31MrKCvyb+H5phaIgwcwjsRLxTKs5HGK76MzjjMeRdSNqcfm1Q77Go3f4
 MsJINL5+s0Zx5Ub1in0H9+u7f8fdeCI891Lvp6HhtNMRddV98k7w8ZVfo9Lc9Z+673Y8
 ggZQ==
MIME-Version: 1.0
In-Reply-To: <20170222213057.GA33925@ubuntu-hedt>
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <20170222213057.GA33925@ubuntu-hedt>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Thu, 23 Feb 2017 09:35:53 +1030
Message-ID: <CAN+fvRb8R_3QyrnFFp0gd8PCcFXwbitNyh8K=ONqbmsGTrBsHQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 23 February 2017 at 08:00, Seth Forshee <seth.forshee@canonical.com> wrote:
> On Sat, Feb 18, 2017 at 05:05:15PM +1030, Ryan Mounce wrote:
>> Sourced from the latest legislation at
>> https://www.legislation.gov.au/Details/F2016C0043
>
> This link isn't working for me.

Oops, I truncated that URL. Working link (also in the patch itself):
https://www.legislation.gov.au/Details/F2016C00432

>> The current rules exceed legal limits between 5250-5330MHz, and permit
>> illegal operation in 5600-5650MHz (reserved for weather radar).
>
> The changes also increases the limits for most other ranges, by quite a
> bit in some cases. Seems that this should also be mentioned in the
> changelog, and I'd like to be able to check those changes against the
> documentation.

All of the updated power limits are converted to dBm but otherwise
straight out of the document, so they shouldn't be a problem. I'll
update the changelog to note this.

The frequency ranges have been "rounded down" to conform with the
apparent convention of only including ranges used by standard 802.11
channels, rather than using the actual frequency ranges as has been
done for some countries (and most 60GHz rules). My preference is the
latter so that there is a clear correlation between the regdb and
relevant documentation, and so that the regdb may become useful beyond
802.11. With your blessing as maintainer I will also make this change
to the patch.

Regards,
Ryan Mounce

> Thanks,
> Seth
>
>>
>> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
>> ---
>>  db.txt | 15 ++++++++++-----
>>  1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index 05108e0..b951e0c 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>>       # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>       (57000 - 66000 @ 2160), (40)
>>
>> +# Source:
>> +# https://www.legislation.gov.au/Details/F2016C00432
>> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>>  country AU: DFS-ETSI
>> -     (2402 - 2482 @ 40), (20)
>> -     (5170 - 5250 @ 80), (17), AUTO-BW
>> -     (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>> -     (5490 - 5710 @ 160), (24), DFS
>> -     (5735 - 5835 @ 80), (30)
>> +     (2402 - 2482 @ 40), (36)
>> +     (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>> +     (5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
>> +     (5490 - 5590 @ 80), (30), DFS
>> +     (5650 - 5730 @ 80), (30), DFS
>> +     (5735 - 5835 @ 80), (36)
>> +     (57000 - 66000 @ 2160), (43), NO-OUTDOOR
>>
>>  country AW: DFS-ETSI
>>       (2402 - 2482 @ 40), (20)
>> --
>> 2.11.0
>>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

