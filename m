Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VS9L9-0002eO-VE
 for wireless-regdb@lists.infradead.org; Fri, 04 Oct 2013 17:39:00 +0000
Received: by mail-la0-f54.google.com with SMTP id ea20so3596856lab.27 for
 <wireless-regdb@lists.infradead.org>; Fri, 04 Oct 2013 10:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type:content-transfer-encoding;
 bh=+Bp/I19zsRjtSeLuCxhDE1Gn9KLriyHRN7Q74QpFr4o=;
 b=n3JySdSBDAtwUDn918sIQ7RJkynKIMfOhIiHYCBF2/CTRVYl4N38DYh69Wm5w6RZVI
 pIt5z9avI1vrfoXDWdc2yPBzS1c3Kp7a6p+E88ch28+bdyoaBCA9xM20JWBXSsCtkeL0
 w96lQ7NvwdDpE2eFG89vpF4oFebNaVr1PeeCC89efgC5RGjfli6zHJbC/57AzEXFTAY3
 0dbQMhoUJ10jps8BM6bqGkb4XeeTIkbAq60j5PA/Uwz1UiZRfkyYLk5iCAfZmPDmfan8
 9hHhOu8i4OhdcRiNl2fw6BygeaQFW44CJVqWNx0sZKz8xH6oRpEyZ4VzcWIo70EDNa42 IyCw==
MIME-Version: 1.0
In-Reply-To: <CAB=NE6Vcqrs-US-HJzxcnFhjF0-dsnvPdcWoUpuo-UDV_5cReQ@mail.gmail.com>
References: <1372768095-26053-1-git-send-email-ilan.peer@intel.com>
 <1372768095-26053-4-git-send-email-ilan.peer@intel.com>
 <CAB=NE6VQXQPRK9_Q-Nh+ripRa+PdCd=4_EZvPxeghBjc32ejyQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD2DFC5@HASMSX106.ger.corp.intel.com>
 <CAB=NE6WY43BYDehH5-MyF0GQORC1dTrNToUsRVC-Q5bDwcna3A@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD31E3C@HASMSX106.ger.corp.intel.com>
 <CAB=NE6Vcqrs-US-HJzxcnFhjF0-dsnvPdcWoUpuo-UDV_5cReQ@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 4 Oct 2013 10:38:16 -0700
Message-ID: <CAB=NE6WmEQg68BViF9v+2D__p8Gc_5bCFUkBMfTz0A96C1jyDw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 3/3] [RFC] cfg80211: Enable GO
	operation on additional channels
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
To: "Peer, Ilan" <ilan.peer@intel.com>, Jeff Johnson <jjohnson@qca.qualcomm.com>
Cc: "Shalev, Oz" <oz.shalev@intel.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Jouni Malinen <j@w1.fi>, linux-wireless <linux-wireless@vger.kernel.org>, "Ginsburg, Noam" <noam.ginsburg@intel.com>, "Perelmooter,
 Liraz" <liraz.perelmooter@intel.com>, "Spinadel,
 David" <david.spinadel@intel.com>, Michael Green <green@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 18, 2013 at 4:34 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> On Wed, Jul 17, 2013 at 12:15 PM, Peer, Ilan <ilan.peer@intel.com> wrote:
>>> It was unclear for what exact channels you needed to deal with here.
>>> Given review so far wouldn't it just be DFS flagged channels on some UNII
>>> bands ? Then again if the indoor flag needs to be pegged to to a specific UNII
>>> band and we can do that on wireless-regdb do we even need the UNII band
>>> check routine helper?
>>>
>>
>> Generally it is possible that the indoor property is not pegged to the 'other_channel', or it is possible that it is pegged but they are not in the same UNII band, so the verification is still needed. I guess that once I get the list you requested things will be clearer :)
>
> OK so there are exceptions to the indoor flag affecting GO under these
> rules or not. Looking forward to the respin.

Anxiously looking forward to the respin :D

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

