Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfvMQ-0008Ge-UB
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 16:28:43 +0000
Message-ID: <1354638542.9608.5.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 17:29:02 +0100
In-Reply-To: <237CF5B631AA3446BAC55A2F73815CEB014F2380@NASANEXD02D.na.qualcomm.com>
References: 
	 <237CF5B631AA3446BAC55A2F73815CEB014F2380@NASANEXD02D.na.qualcomm.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] regdb: allow 40 MHz on world roaming channels
	12/13
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
To: "Green, Michael" <green@qca.qualcomm.com>
Cc: "mcgrof@gmail.com" <mcgrof@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2012-12-04 at 15:02 +0000, Green, Michael wrote:
> To confirm...you mean enable highest HT40 channel  as ch 9/13 (center
> of the 40MHz channel is 2462MHz) for all countries that have ch. 12 &
> 13 allowed?
> This should apply to STA and AP.

Pretty much, yeah, this only updates the world regdom to allow this and
in the world regdom AP mode isn't allowed on channels 12/13 so HT40+ on
channel 9 only ends up allowed for STA.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

