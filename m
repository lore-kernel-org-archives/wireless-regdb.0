Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail.atheros.com ([12.19.149.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pk1d9-0003Uw-CV
	for wireless-regdb@lists.infradead.org; Mon, 31 Jan 2011 21:49:52 +0000
Received: from mail.atheros.com ([10.10.20.108]) by sidewinder.atheros.com
	for <wireless-regdb@lists.infradead.org>;
	Mon, 31 Jan 2011 13:49:31 -0800
From: Michael Green <Michael.Green@Atheros.com>
Date: Mon, 31 Jan 2011 13:49:39 -0800
Message-ID: <93781E992CBA7843962D8B0E7D683F3C16FE767CC6@SC1EXMB-MBCL.global.atheros.com>
References: <AANLkTim3CG+aN9QGhGOfBD9+BSYsgQW_ACC0o+k9H-rt@mail.gmail.com>
	<AANLkTinuFzBMMLd08Zpkf8iGBO-YdM2Ni-KtNCNxuUbT@mail.gmail.com>
	<AANLkTi=b-Tm7r1eODgAQqpQJuimD0+dQkHFB4YV06kES@mail.gmail.com>
	<1296510225.3812.50.camel@jlt3.sipsolutions.net>
In-Reply-To: <1296510225.3812.50.camel@jlt3.sipsolutions.net>
Content-Language: en-US
MIME-Version: 1.0
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
To: Johannes Berg <johannes@sipsolutions.net>, "Luis R. Rodriguez" <mcgrof@gmail.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, David Quan <David.Quan@Atheros.com>, Kathy Giori <Kathy.Giori@Atheros.com>, linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

Luckily, the "harmonized standard" is by law, one and only one for DFS conformance across all European Community countries. 

There are no differences in pulse patterns, non occupancy, channel close time, etc etc. across EU countries.  I have not gotten any indication from anywhere that there will be deviation on a country by country basis in Europe affecting DFS rules.

BTW, as of June 30, 2010, EN301 893 V1.5.1 became mandatory.  All devices placed on the EC market must meet those latest pulse patterns per V1.5.1.

tks,



Michael Green
Atheros Communications, Inc.
mgreen@atheros.com
Desk:   +1-781-400-1491
Mobile: +1-508-380-4921

-----Original Message-----
From: Johannes Berg [mailto:johannes@sipsolutions.net] 
Sent: Monday, January 31, 2011 4:44 PM
To: Luis R. Rodriguez
Cc: Michael Green; linux-wireless; wireless-regdb@lists.infradead.org; Kathy Giori; David Quan; John W. Linville
Subject: Re: Review of EN 301 893 1.5.1 and 1.6.1 changes

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

