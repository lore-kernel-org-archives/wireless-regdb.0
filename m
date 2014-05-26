Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WorUt-0002BN-Nh
 for wireless-regdb@lists.infradead.org; Mon, 26 May 2014 09:47:12 +0000
Received: by mail-we0-f170.google.com with SMTP id u57so7913810wes.29 for
 <wireless-regdb@lists.infradead.org>; Mon, 26 May 2014 02:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=YoSikCzlr+ghlgafmYKt5ZFCp+N4sQ+qO768r1PoHao=;
 b=abbeZPq9nUL3YwsE3iW/G8d99nNocjrp1Yhcyui9crxMo9DBj6MSqYNXrGrYH0Hdot
 M3oklorMkn9eRGoj7ArLtLxSflAjKwv8hqxm2423ol36zB+RvQqQxms+7RrtkwGHaPrz
 8Ru21tQ1AWLlnlpvI9+U3m43DqGObekH/2GOH6nbiXVLS011eVxdr7BTP2JcuNZa0ePm
 0z438dMoGe/H11tfBqSjTzfgX3xejyODXWsYRmQldFyez/sM/AevZwLF3qE/cjZ/0qeT
 wats7YJ+rY0ml5X9ToEtxgPZnYEd8WeBYHtVjPmdvu/TeYO5stQh715QXi3PgGyl8FJX lecg==
MIME-Version: 1.0
In-Reply-To: <1401097086.29704.0.camel@jlt4.sipsolutions.net>
References: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
 <1401097086.29704.0.camel@jlt4.sipsolutions.net>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Mon, 26 May 2014 15:16:28 +0530
Message-ID: <CABPxzYKe5Cy36uc=C5wVEVZV0qiR=55yBw0LtzuRv412p58c9g@mail.gmail.com>
Subject: Re: [wireless-regdb] [regdb] Add support to parse 2000mW tx power
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Luis Rodriguez <mcgrof@gmail.com>, wireless-regdb@lists.infradead.org, John Linville <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, May 26, 2014 at 3:08 PM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Mon, 2014-05-26 at 13:09 +0530, chaitanya.mgit@gmail.com wrote:
>
>> @@ -74,7 +74,7 @@ function parse_reg_rule()
>>                       power = 23
>>               } else if (power == 500) {
>>                       power = 27
>> -             } else if (power == 1000) {
>> +             } else if ((power == 1000) || (power == 2000)) {
>>                       power = 30
>
> This seems like a pretty sick thing to do to start with, and certainly

Agree.

> power=30 isn't right for 2000mW...

Sorry, typo. Its supposed to be 33.

> Can't awk calculate the logarithm?
Does kernel support log arithmetic/Float operations.?

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

