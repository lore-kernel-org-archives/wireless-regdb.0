Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPZ06-0003Qm-FZ
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 13:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1365515658; x=1397051658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6M5dLyATrp5Qj3bz7gdNsGa4+ECibfHxNN+jBZTFLCE=;
 b=dV55lvY/q+7uUig3FRqNFy+vAQQ1FEM4Xue/TqPlF1Iu+AI3JeqGWkPh
 a6tYumkvW6kg+FVblvQl7p1cqhfOJ+5i0Tr8ay9EMZxWmfhYVm82Jlr7O
 5ntFAKXLZf5bGGMdTRLSNhTyyyNZSKsAXUTAMvOGs9mvWMOa8TfALmoK/ g=;
From: "Green, Michael" <green@qca.qualcomm.com>
Date: Tue, 9 Apr 2013 13:54:14 +0000
Message-ID: <237CF5B631AA3446BAC55A2F73815CEB07DFE41B@NASANEXD02D.na.qualcomm.com>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
 <1365486778-2336-3-git-send-email-mcgrof@do-not-panic.com>
 <1365490278.8465.1.camel@jlt4.sipsolutions.net>
 <CAB=NE6XjS7647FADXs7g9P4GmZPpdZmH1A9tNyY9u1_6QHX9og@mail.gmail.com>
In-Reply-To: <CAB=NE6XjS7647FADXs7g9P4GmZPpdZmH1A9tNyY9u1_6QHX9og@mail.gmail.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 2/3] wireless-regdb: enable VHT80 when
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>, Johannes Berg <johannes@sipsolutions.net>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Kandala, Srinivas" <kandala@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, qca_vkondrat <qca_vkondrat@qca.qualcomm.com>, "Wang, Yunsen" <yunsenw@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

If this discussion is about Japan, then yes, VHT160 on the allowed channels for Japan, can be enabled now.

Or is the question about enabling VHT80 & VHT160 in world mode(s) using passive scanning?

Michael Green
green@qca.qualcomm.com

Qualcomm Atheros, Inc.
781-400-1491 (office)
508-380-4921 (cell)


-----Original Message-----
From: mcgrof@gmail.com [mailto:mcgrof@gmail.com] On Behalf Of Luis R. Rodriguez
Sent: Tuesday, April 09, 2013 4:26 AM
To: Johannes Berg
Cc: John W. Linville; wireless-regdb@lists.infradead.org; Kandala, Srinivas; linux-wireless; qca_vkondrat; Green, Michael; Wang, Yunsen
Subject: Re: [wireless-regdb] [PATCH 2/3] wireless-regdb: enable VHT80 when world roaming

On Mon, Apr 8, 2013 at 11:51 PM, Johannes Berg <johannes@sipsolutions.net> wrote:
> On Mon, 2013-04-08 at 22:52 -0700, Luis R. Rodriguez wrote:
>> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>>
>> For VHT, the wider bandwidths (up to 160 MHz) need to be allowed. 
>> Since world roaming only covers the case of connecting to an AP, it 
>> can be opened up there, we will rely on the AP to know the local 
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

Enabling it passively seems fine to me. Michael if we take care of DFS / passive scan, etc, are we still OK to use VHT160 if we find an AP that uses it on the DFS channels (assuming client follows channel change announcements, etc)?

  Luis
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

