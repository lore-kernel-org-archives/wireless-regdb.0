Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcEn1-0007b6-O2
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:29:28 +0000
Received: by mail-lb0-f176.google.com with SMTP id z5so3416566lbh.21 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=Ok74Ff2tyLNp+J2VOGCcZMOZ9e3ljKQ5cnHXfTNfdFk=;
 b=Fd5y+eXNuGdLRyRXfUZBHL9bGXfX54EkaG9xhY4uuGrc1+lvpZTs0JXTcC60xj5k+t
 XAe5enyYHv/g6g347KSZBzhWPK+sr/oo55lv+TS0isUXE45Jote7cL80ruidvLUgETT6
 aU6J8qSkQJ9LsN3OPaqBUvpYh7MYFBeu2Cush0xHVk9xatFwUSyEmMWO1QJMTXKZlAAY
 nkzL3t0FN12O4aK0rNHlEaFHsyU2J72uDqrKOKnRRWs5f9Ppm0pM4OwEeRcaT7O6LCIz
 RA8/Xxw04KxFY9y955ba21EBYAZf62p5Nqw4OT1GbgQqVtfhZlnlVXhovPRkQo9o0a0S JQdw==
MIME-Version: 1.0
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 1 Nov 2013 14:28:42 +0100
Message-ID: <CAB=NE6W+hf6_+d1Koz84GVcaFHK8xUperA9yht6WfyEw=Gs_pg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 0/7] wireless-regdb: DFS regions and
	optimizations
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Oct 30, 2013 at 10:45 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> This patch series associates a slew of countries
> to DFS regions and then provides updates to 4
> countries based on the new CRDA optimizer. The
> optimizations have no functional changes other
> than reducing the size of the regulatory domain
> data strucutre that would be used to send to
> the kernel.
>
> Luis R. Rodriguez (7):
>   wireless-regdb: add DFS FCC regions
>   wireless-regdb: add DFS ETSI regions

This patch was missing one country although the commit log mentioned it.

>   wireless-regdb: add DFS JP regions

This one as well.

>   wireless-regdb: optimize two of DE's rules
>   wireless-regdb: optimize two of ES's rules

This one conflicts with Xose's patch so I'll drop it.

>   wireless-regdb: optimize two of IL's rules
>   wireless-regdb: optimize two of NL's rules

I'll just respin.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

