Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from slowthinkers.net ([82.95.118.26]
 helo=density.slowthinkers.net) by bombadil.infradead.org with esmtps (Exim
 4.80.1 #2 (Red Hat Linux)) id 1atL6l-0006N5-9R for
 wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 20:21:52 +0000
From: Anne Marcel Roorda <marcel@density.slowthinkers.net>
In-reply-to: <20160421185134.GD95003@ubuntu-hedt>
References: <1958820.LBuzOElZFT@perisens15>
 <20160421131938.GA95003@ubuntu-hedt> <2919568.ssjlN6KUVX@perisens15>
 <20160421185134.GD95003@ubuntu-hedt>
Date: Thu, 21 Apr 2016 22:13:14 +0200
Message-Id: <20160421201315.9C536206F0@density.slowthinkers.net>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
	Germany (DE) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>


On 21 Apr 2016, Seth Forshee wrote:
> On Thu, Apr 21, 2016 at 08:08:46PM +0200, Maximilian Engelhardt wrote:
>
>> The comments to my initial mail indicated that the statement in the ERC 
>> recommendation I linked are alone not enough to add this frequency ranges for 
>> other countries. Unfortunately I don't have the possibility to do these checks 
>> for countries other than Germany.
>
>Yep, I understand and am in agreement. I know how challenging it can be
>to try to track down this information.

  I could do the same for NL.

  At the moment entries for NL are listed as center frequencies
(almost, 5490 - 5710 @ 160 should be 5550 - 5645 @ 160), while for DE
the whole band is listed (5470 - 5725 @ 160).

  Power budget is listed in db while the law specifies mW.

  What is the prefered format, and would a rewrite for NL listing the band
and power in mW be acceptable ?

Thanks,

- marcel

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

