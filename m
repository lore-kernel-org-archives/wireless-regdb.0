Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2SgE-0005Ig-7U
 for wireless-regdb@lists.infradead.org; Wed, 02 Jul 2014 22:07:07 +0000
Received: by mail-lb0-f177.google.com with SMTP id u10so8275241lbd.8 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Jul 2014 15:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=RV0p5hdlaTl3EITnJyVV7a2vVx/IrAEl0ujUz+YDAW0=;
 b=1F1F6B7pzsVboeO1AoOqKHUZSoGjw83MzBphniDCZEVGkblt5HZB0pN3VfBL6fmEsF
 XrwpmNKNkSBmUAxxEJYqzGNYAxkGx7jenDrWWQ5DxvwbbtSETQZ5vARtrHu6q7AXZoFw
 Jk9gH0gGXhWxWRpK5e1AxwkFAHj+kFehoNcR9Vy8bN/S6sFzU8Y/ajUKFs6BVX1fWmXG
 dr2QmcPVVSEFgSexqmW+tlVKhBNMNVPtrEYRdOHWuTPsjqasLBR1NHjbtYYo+/PH90sl
 9qFNfRhbLPT35M4bjd9BFQ6FLrJ3iGWPaClpWfUbVv0c5OZxWqrpsrlFZsmZjd8dNyYx 8ppg==
MIME-Version: 1.0
In-Reply-To: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 2 Jul 2014 15:06:22 -0700
Message-ID: <CAB=NE6WN=6cu1rfHjLV32bvwAY6tnW9wrpVx5WHfdu0SJMvC0A@mail.gmail.com>
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 2, 2014 at 5:02 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> db2rd, parse and print DFS CAC time
>
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>


This doesn't print the DFS CAC if its a in a line like this:

(5250 - 5330 @ 0), (20), (60000), DFS, AUTO-BW

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

