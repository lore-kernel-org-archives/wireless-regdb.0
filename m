Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X03WO-0004od-V7
 for wireless-regdb@lists.infradead.org; Thu, 26 Jun 2014 06:51:01 +0000
Received: by mail-la0-f41.google.com with SMTP id hz20so1541345lab.28 for
 <wireless-regdb@lists.infradead.org>; Wed, 25 Jun 2014 23:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=JUAR+EijLvvFEsIrpL1I3DVTC0v8n41jtFidMtzKhtc=;
 b=u2L7AkRP4SDs2oLSA1SeZda/GGW7QoSAQiOlzaXk8bdoS0KXBmH4ySxFvLX0ytGnXL
 IoTCpL9vWQHYr1d52EG7eQDlTnCsYTSuzB2FssSHqCBdXWVBNaOGAJ9oBjEQtmKBbBwu
 YpDu7UwNiwkSUuWLdDyxccBZjXPl0dfAmtWyY=
MIME-Version: 1.0
In-Reply-To: <53AB0828.8060207@candelatech.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <20140623205451.GG1390@garbanzo.do-not-panic.com>
 <53A89A0F.9090509@candelatech.com>
 <20140624004442.GH1390@garbanzo.do-not-panic.com>
 <53A8E3F9.7000001@candelatech.com>
 <CAB=NE6XJaHNAL17mN7Ghw9GnatOwaOacikv5XupK7xKjUe=m_Q@mail.gmail.com>
 <53AAFD75.7090603@candelatech.com>
 <CAB=NE6WY978KkB6KL3MLDJOekgwBk4r--vjQ-+Qke6SLJn9EGg@mail.gmail.com>
 <53AB0828.8060207@candelatech.com>
Date: Thu, 26 Jun 2014 08:50:33 +0200
Message-ID: <CALhHN=rNtG7Kibwgbubu3JfKCK4pQpLTHiCEE_yLYMweKaZDcQ@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
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
To: Ben Greear <greearb@candelatech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kalle Valo <kvalo@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 25 June 2014 19:34, Ben Greear <greearb@candelatech.com> wrote:
> On 06/25/2014 10:20 AM, Luis R. Rodriguez wrote:
>> On Wed, Jun 25, 2014 at 9:48 AM, Ben Greear <greearb@candelatech.com> wrote:
>>> I started trying to do some more DFS testing on a 3.14.8+ kernel,
>>> and from what I can tell, the US region is configured for
>>> DFS-Unset.  I was assuming this should be set to DFS_FCC.
>>>
>>> I tried installing the latest regulatory.bin.  crda is whatever
>>> is standard on Fedora 19.
>>>
>>> Do you know if DFS is supposed to work at all in the 3.14 kernel?
>>
>> DFS region support was added upstream via 8b60b07805
>>
>> mcgrof@ergon ~/linux (git::master)$ git describe --contains 8b60b07805
>> v3.3-rc1~182^2~44^2~384
>>
>> Now, that doesn't mean a driver will have DFS support of course. I'm
>> not going to treasure hunt that for you.
>
> The driver (ath10k) works, and if I manually force the 'US' regulatory domain
> to use DFS-FCC in set_regdom in reg.c, then it shows up as DFS-FCC in 'iw reg get'
> and hostapd & driver properly detects radar since airport is nearby, hostapd
> chooses a different channel, and things go on working.
>
>>> I'm certain I had this working earlier on this machine,
>>> but I was on a somewhat patched linux.ath tree at the
>>> time it seems....
>>
>> There's an issue Krishna reported about internal db now parsing the
>> new db.txt format properly after the antenna gain removal but a patch
>> is supposed to be on the way.  You don't seem to be using that though
>> so you may want to debug things a bit further.
>
> Is the 'regulatory.bin' from today's wireless-regdb repository
> correct?  I did not try regenerating it..I just did a git pull...
>

Best get latest regdb, crda:
wireless-regd/ make; make install
crda/ make ; make install (skip warning about world regulatory domain
- I think we will fix this soon).

Next:
modprobe cfg80211
iw reg set US
dmesg (check reg messages)
iw reg get

You should get correct DFS region.

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

