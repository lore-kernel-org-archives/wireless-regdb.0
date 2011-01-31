Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pk1XJ-0003SU-MX
	for wireless-regdb@lists.infradead.org; Mon, 31 Jan 2011 21:43:50 +0000
From: Johannes Berg <johannes@sipsolutions.net>
In-Reply-To: <AANLkTi=b-Tm7r1eODgAQqpQJuimD0+dQkHFB4YV06kES@mail.gmail.com>
References: <AANLkTim3CG+aN9QGhGOfBD9+BSYsgQW_ACC0o+k9H-rt@mail.gmail.com>
	<AANLkTinuFzBMMLd08Zpkf8iGBO-YdM2Ni-KtNCNxuUbT@mail.gmail.com>
	<AANLkTi=b-Tm7r1eODgAQqpQJuimD0+dQkHFB4YV06kES@mail.gmail.com>
Date: Mon, 31 Jan 2011 22:43:45 +0100
Message-ID: <1296510225.3812.50.camel@jlt3.sipsolutions.net>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] Review of EN 301 893 1.5.1 and 1.6.1 changes
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@gmail.com>
Cc: Michael Green <Michael.Green@atheros.com>, wireless-regdb@lists.infradead.org, David Quan <David.Quan@atheros.com>, linux-wireless <linux-wireless@vger.kernel.org>, "John
	W. Linville" <linville@tuxdriver.com>, Kathy Giori <Kathy.Giori@atheros.com>
List-ID: <wireless-regdb@lists.infradead.org>

Note: this email is on a public list. If you can't tell that from the Cc
line of the email, I'm not sure you should be working in this field. If
you think I'm mocking you, maybe I am :P

On Mon, 2011-01-31 at 13:33 -0800, Luis R. Rodriguez wrote:
> FYI - European conformance spec for 5 GHz Radio LANs has some slight
> modifications which Johannes has pointed out which we have reviewed
> today in consideration for our new DFS design. The skinny is that our
> implementation of using 3 regions are OK and we will move forward with
> that.

I just fear that will not allow us to keep manoeuvring effectively in
the future, because then we need to change all the implementations,
potentially old ones, rather than just updating the database.

I wasn't so much thinking of the pulse patterns though as the other
timings like the airtime allowed to use before moving onto a new
channel.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

