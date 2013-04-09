Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPTt9-0003SB-Es
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 08:26:49 +0000
Received: by mail-la0-f49.google.com with SMTP id fs12so1501372lab.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 09 Apr 2013 01:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=KMMeenHifWf826F8BQoqVtXqv8gCmSJbdU+phaSaTGc=;
 b=FsA4NiVOcuLhuZAjRRRl6gw0zAPijlztpPmkyAmrXD7fRIdEB5QOfRcCzzZjdaWcmA
 1EzKyhLv+rKAxVhsdoXakX2qqnbZRfVzSjTzk8aC8+LakNSB+xxkYzCaSGM8btBIi++w
 fq7iJfNEYVjM3gnJ78mP6mzMRtMqIJiF97xDiNY2nhff9ByO79h3JtUDbUA0ORXwQXhc
 fWW5eEoi6sIAwWjq6PYjuG+ki639v71BXikCFMth29ofY5arYuPvnRdNq2MHMiHUl7cF
 l+YKbWLtJCuYw3eg4/zEJ1n9FbPS9NoATOl5erh9JuKCR+1DuN7Xx82+DPuiWCoguoeC fGig==
MIME-Version: 1.0
In-Reply-To: <1365490278.8465.1.camel@jlt4.sipsolutions.net>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
 <1365486778-2336-3-git-send-email-mcgrof@do-not-panic.com>
 <1365490278.8465.1.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 9 Apr 2013 01:26:23 -0700
Message-ID: <CAB=NE6XjS7647FADXs7g9P4GmZPpdZmH1A9tNyY9u1_6QHX9og@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 2/3] wireless-regdb: enable VHT80 when
 world roaming
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, kandala@qca.qualcomm.com, linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, qca_vkondrat <qca_vkondrat@qca.qualcomm.com>, Michael Green <green@qca.qualcomm.com>, yunsenw@qca.qualcomm.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 8, 2013 at 11:51 PM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Mon, 2013-04-08 at 22:52 -0700, Luis R. Rodriguez wrote:
>> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>>
>> For VHT, the wider bandwidths (up to 160 MHz) need
>> to be allowed. Since world roaming only covers the
>> case of connecting to an AP, it can be opened up
>> there, we will rely on the AP to know the local
>> regulations.
>>
>> Based on a patch by Johannes Berg for upstream Linux.
>
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -6,10 +6,10 @@ country 00:
>>       # Channel 14. Only JP enables this and for 802.11b only
>>       (2474 - 2494 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS, NO-OFDM
>>       # Channel 36 - 48
>> -     (5170 - 5250 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
>> +     (5170 - 5250 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
>>       # NB: 5260 MHz - 5700 MHz requies DFS
>>       # Channel 149 - 165
>> -     (5735 - 5835 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
>> +     (5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
>
> I also have a separate upstream patch that I haven't sent here yet to
> enable 160 MHz by enabling the radar channels (passively), see below;
> any thoughts on that?

Enabling it passively seems fine to me. Michael if we take care of DFS
/ passive scan, etc, are we still OK to use VHT160 if we find an AP
that uses it on the DFS channels (assuming client follows channel
change announcements, etc)?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

