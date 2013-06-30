Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtRRf-00048Z-R5
 for wireless-regdb@lists.infradead.org; Sun, 30 Jun 2013 23:54:16 +0000
Received: by mail-lb0-f170.google.com with SMTP id t13so2039876lbd.15 for
 <wireless-regdb@lists.infradead.org>; Sun, 30 Jun 2013 16:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=hirL0WnM6nMXwHPEWHl08zngFHeIQw5i3Irw2cPp++A=;
 b=KSxMw8Y6NWCZOG+DX/pWrvN0VPUodH7rNPKmIx/wH2q39TQM8hEKlKrQ4lG+2UxjFO
 3fBVh+4TB+BRwsTKbIwP3cC6K2J6Uy05kSW5q5kQMH0hsxpV+OtQOuM90KWBfhhC97aW
 F2bJXZvOUvn8vBdVjAXJm9gIk37U6Aj3WHMEoSf/cfaRjLICryAXMdgnbziUS40ihjrc
 aRc1OOnUWTbf1of0PzjyI3n9OBk5xpTEZ6SkKo7zetD6thLMvzY6h6PneIbwZq5YdK4K
 ZMZd4BkERocmeVp6x8gbSMSP9Fj1oXlpiDHgeaoaRICYuoBq/03MNpjs9Y6tUJRQOfFJ N6Yw==
MIME-Version: 1.0
In-Reply-To: <1372636171.5155.56.camel@deadeye.wl.decadent.org.uk>
References: <1372636171.5155.56.camel@deadeye.wl.decadent.org.uk>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Sun, 30 Jun 2013 16:53:33 -0700
Message-ID: <CAB=NE6XEtR3bB11JqArDZB-bg=xbWJp3QKvPvxsh+SaWHERySg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] reglib: Validate all structure and
	array lengths
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
To: Ben Hutchings <ben@decadent.org.uk>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, alexandre <alexandre@cmu.edu>
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jun 30, 2013 at 4:49 PM, Ben Hutchings <ben@decadent.org.uk> wrote:
> Add checks that:
> - Signature length does not exceed the file length (this was already
>   checked, but did not account for signature lengths greater than 2 GB)
> - Database length is long enough for all structures we expect in it
> - Array length calculations will not overflow
>
> To keep these checks simple, change the types of array length and index
> variables to unsigned int (must be at least 32-bit, matching the file
> format) and the types of byte-length variables to size_t.
>
> Alexandre Rebert <alexandre@cmu.edu> reported and provided a test case
> for the signature length issue; the others I found by inspection.
>
> Signed-off-by: Ben Hutchings <ben@decadent.org.uk>

Thanks! Can you resend and include linux-wireless as well for a wider review?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

