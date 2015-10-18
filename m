Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zntsn-0002wA-Lr
 for wireless-regdb@lists.infradead.org; Sun, 18 Oct 2015 19:44:42 +0000
Received: by wicll6 with SMTP id ll6so69664669wic.0 for
 <wireless-regdb@lists.infradead.org>; Sun, 18 Oct 2015 12:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=ywba97VwlL8HH12f2yZ3CbFjZrWWtKUAlmQAVZ6XMxw=;
 b=JzPWcRdm6hkFpk+F7AEE7iq8iQc/6zGQRZnUWWDka/jh5DAh3p1KPLux7fcwLf9qzz
 cWd/D3fFp2TreIQKGwomlDREvrezcMmgz45ldQNuFazZjIyIfAg/rl7cO0eijL/1YPe/
 0xpf+Mzf2u37kSlARHtdaEd1bCDgPhaMfnlhryuJ58QYLWd3AKpldWjNSQhDo0jDV5n4
 0MwCq8VA8TupwXU/UcFKh3u6R57z1wV4CWxAO9WRPFwoksB2ttM+r0s5hePj1tFA/uAy
 mJHr7+9CKShQ1tvaZupEQ4/iQIv404KXSC6TliHNhKpCM8O3LyCi6kNbfC3u8MNiI2e6 6dKQ==
MIME-Version: 1.0
In-Reply-To: <20151015180408.GA31612@ubuntu-hedt>
References: <1444761084-4399-1-git-send-email-andrej.vlasic0@gmail.com>
 <20151015180408.GA31612@ubuntu-hedt>
Date: Sun, 18 Oct 2015 21:44:19 +0200
Message-ID: <CAAudh+8q-7-Wz5B5hZ+hePJ-7=QNbbpVoc7Xpf4jsmKBqvkXfQ@mail.gmail.com>
From: =?UTF-8?B?QW5kcmVqIFZsYcWhacSH?= <andrej.vlasic0@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
	rules for Croatia (HR)
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

On 15 October 2015 at 20:04, Seth Forshee <seth.forshee@canonical.com> wrote:
> On Tue, Oct 13, 2015 at 08:31:24PM +0200, Andrej Vlasic wrote:
>> Update frequency allocation rules to mach data from table [1].
>>
>> Also increase allowed power limit for range 5150-5250 Mhz to 200mW.
>>
>> [1] http://tablice.hakom.hr:8280/vis?lang=en
>>
>> Signed-off-by: Andrej Vlasic <andrej.vlasic0@gmail.com>
>> ---
>>  db.txt | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index d57ea84..3b36616 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -504,11 +504,17 @@ country HN: DFS-FCC
>>       (5490 - 5730 @ 160), (24), DFS
>>       (5735 - 5835 @ 80), (30)
>>
>> +# Data from table of frequency allocations: http://tablice.hakom.hr:8280/vis?lang=en
>> +# For 5ghz range see http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85.pdf
>> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86.pdf
>> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_87.pdf
>> +# TPC devices on range 5250-5350 can use 200mW, and 1W on range 5470-5725.
>> +
>>  country HR: DFS-ETSI
>> -     (2402 - 2482 @ 40), (20)
>> -     (5170 - 5250 @ 80), (20), AUTO-BW
>> -     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>> -     (5490 - 5710 @ 160), (27), DFS
>> +     (2400 - 2483.5 @ 40), (100 mW)
>> +     (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
>> +     (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
>> +     (5470 - 5725 @ 160), (500 mW), DFS
>>       # 60 gHz band channels 1-4, ref: Etsi En 302 567
>>       (57000 - 66000 @ 2160), (40)
>
> In general the changes look okay to me and in line with the published
> regulations (I couldn't read some of the documents you linked to, but
> the limits do look to be in line with ERC/DEC/(01)07 and ECC/DEC/(04)08
> which are referenced by the frequency allocation table).
>
> It seems pretty arbitrary to change from dBm to mW however, especially
> for those rules whose power limit isn't actually changing. I'd prefer we
> leave them in dBm for consistency, in which case I think we end up with:
>
> country HR: DFS-ETSI
>         (2400 - 2483.5 @ 40), (20)
>         (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>         (5470 - 5725 @ 160), (27), DFS
>         # 60 gHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)
>
> If that looks fine to you then I can fix it up when I apply the patch.

It's fine with me too like that.

>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

