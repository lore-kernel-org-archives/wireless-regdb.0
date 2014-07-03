Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2abm-000050-SB
 for wireless-regdb@lists.infradead.org; Thu, 03 Jul 2014 06:35:03 +0000
Received: by mail-lb0-f172.google.com with SMTP id c11so8877343lbj.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Jul 2014 23:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=9nTkn7id4pg3syy6LgFCJ/HyQXthJfgImjjDJqu3BIg=;
 b=HdRV3zncCpnsv9FGsWOI17zr78x54iUgsz4aKhLvO4dAkIGb655o4xTSoBHreu4LqP
 4WblflBXK3iv7Kap5qMyslO+4r1M4oFKIj94yM4QKsIEiAfvLK2FJZJ17wHlbB9pLgP9
 Dikcx2+92d7U0la3THxouXYdBn4Jv32haToms=
MIME-Version: 1.0
In-Reply-To: <CALhHN=pfaLS_Axuky82QkUy1yaJw7qd+_Sss5h3nti9Li2g1Fw@mail.gmail.com>
References: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6WN=6cu1rfHjLV32bvwAY6tnW9wrpVx5WHfdu0SJMvC0A@mail.gmail.com>
 <CALhHN=pfaLS_Axuky82QkUy1yaJw7qd+_Sss5h3nti9Li2g1Fw@mail.gmail.com>
Date: Thu, 3 Jul 2014 08:34:37 +0200
Message-ID: <CALhHN=oDHmz4Y4ZZUbyCU=gsM5_J=X7GH90qpCA_nqsjv9eK+A@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH] crda: db2rd, parse/print CAC time
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 3 July 2014 08:26, Janusz Dziedzic <janusz.dziedzic@tieto.com> wrote:
> On 3 July 2014 00:06, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
>> On Wed, Jul 2, 2014 at 5:02 AM, Janusz Dziedzic
>> <janusz.dziedzic@tieto.com> wrote:
>>> db2rd, parse and print DFS CAC time
>>>
>>> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
>>
>>
>> This doesn't print the DFS CAC if its a in a line like this:
>>
>> (5250 - 5330 @ 0), (20), (60000), DFS, AUTO-BW
>>
> will check this, BTW BW=0 is not allowed I think.
>

Did such test:
country AE: DFS-FCC
        (2402 - 2482 @ 40), (20)
        (5170 - 5250 @ 80), (17)
        (5250 - 5330 @ 0), (24), (60000), DFS, AUTO-BW
        (5490 - 5730 @ 80), (24), DFS
        (5735 - 5835 @ 80), (30)

And get:
./db2rd < db.txt

country AE: DFS-FCC
    (2402.000 - 2482.000 @ 40.000), (20.00), (N/A)
    (5170.000 - 5250.000 @ 80.000), (17.00), (N/A)
    (5250.000 - 5330.000 @ 0.000), (24.00), (60000), DFS, AUTO-BW
    (5490.000 - 5730.000 @ 80.000), (24.00), (N/A), DFS
    (5735.000 - 5835.000 @ 80.000), (30.00), (N/A)

Seems works fine. Did you install reglib, could be you are using old one?
I am using x86_64.

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

