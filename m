Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2aU7-0005sv-1z
 for wireless-regdb@lists.infradead.org; Thu, 03 Jul 2014 06:27:07 +0000
Received: by mail-la0-f46.google.com with SMTP id el20so7631000lab.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Jul 2014 23:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=XTRy5XtQ3IQBeSYUXnsa0f0FfZVY2QUvCBgC3MPQbRw=;
 b=tWwdS8TcrM16T63RqgawfzK9CMweSToT8tCKYBVJE5urm9vcSK3+mQf82/pSQGEaou
 MExxLF05WqFGPIcnqUf9acZtnJO+36k0z9wZkb2REUAd+/C295vfQ5+3Fqvo8Li2YnY/
 sXkYwY6qYDmlsdYAsGsBDUGW05twEdOBmjPHE=
MIME-Version: 1.0
In-Reply-To: <CAB=NE6WN=6cu1rfHjLV32bvwAY6tnW9wrpVx5WHfdu0SJMvC0A@mail.gmail.com>
References: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6WN=6cu1rfHjLV32bvwAY6tnW9wrpVx5WHfdu0SJMvC0A@mail.gmail.com>
Date: Thu, 3 Jul 2014 08:26:40 +0200
Message-ID: <CALhHN=pfaLS_Axuky82QkUy1yaJw7qd+_Sss5h3nti9Li2g1Fw@mail.gmail.com>
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

On 3 July 2014 00:06, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
> On Wed, Jul 2, 2014 at 5:02 AM, Janusz Dziedzic
> <janusz.dziedzic@tieto.com> wrote:
>> db2rd, parse and print DFS CAC time
>>
>> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
>
>
> This doesn't print the DFS CAC if its a in a line like this:
>
> (5250 - 5330 @ 0), (20), (60000), DFS, AUTO-BW
>
will check this, BTW BW=0 is not allowed I think.

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

