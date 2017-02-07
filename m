Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb0a6-0005Fl-Jl
 for wireless-regdb@lists.infradead.org; Tue, 07 Feb 2017 07:52:56 +0000
Message-ID: <1486453950.2643.1.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 07 Feb 2017 08:52:30 +0100
In-Reply-To: <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
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
To: Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
Cc: cory novak <cory.novak@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2017-02-06 at 14:50 -0600, Seth Forshee wrote:
> +	(5150 - 5250 @ 80), (23), AUTO-BW

For 20 MHz this is right, since the document says:

    The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10 B,
    dBm, whichever power is less. B is the 99% emission bandwidth in
    megahertz. The e.i.r.p. spectral density shall not exceed 10 dBm in
    any 1.0 MHz band.

However, for < 20 MHz, like 5 or 10, which we in theory do support, you
can't use that much due to the spectral density requirement. It seems
possible that that's where the 17 dBm came from, since 10 + 10 log10(5)
is about 17.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

