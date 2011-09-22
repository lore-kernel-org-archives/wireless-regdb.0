Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.iopen.co.nz ([202.6.116.226] helo=mail.iopen.co.nz)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R6Zq5-0001I5-8C
	for wireless-regdb@lists.infradead.org; Thu, 22 Sep 2011 03:20:43 +0000
Message-ID: <4E7AA97D.40402@iopen.net>
Date: Thu, 22 Sep 2011 15:20:29 +1200
From: Linux Wireless Stuff for IOPEN <linwir-list@iopen.net>
MIME-Version: 1.0
References: <4E73F3FA.502@iopen.net> <20110919141340.GB2608@tuxdriver.com>
In-Reply-To: <20110919141340.GB2608@tuxdriver.com>
Subject: Re: [wireless-regdb] Update regulatory rules for New Zealand (NZ)
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 09/20/2011 02:13 AM, John W. Linville wrote:
> On Sat, Sep 17, 2011 at 01:12:26PM +1200, Linux Wireless Stuff for IOPEN wrote:
>> From Fedora 14 :
>> ==============
>>
>>> country NZ:
>>>         (2402 - 2482 @ 40), (N/A, 30)
>>>         (5170 - 5250 @ 20), (3, 23)
>>>         (5250 - 5330 @ 20), (3, 23), DFS
>>>         (5735 - 5835 @ 20), (3, 30)
>>
>> Updates for 2.4 GHz :
>> ===================
>>
>>   Frequency range is 2400 to 2483.5 (Ref 1)
>>   Maximum EIRP is 36 dBm (4 W)      (Ref 1)
>>
>> Updates for 5 GHz :
>> =================
>>
>>   5150 - 5250  23 dBm (200 mW) indoor only            (Ref 1,3)
>>   5250 - 5350  23 dBm (200 mW) indoor/outdoor,DFS+TPC (Ref 1,3)
>>   5725 - 5875  36 dBm (  4  W) PtMP/PtP               (Ref 1,3)
>>   5725 - 5825  53 dBm (200  W) PtP fixed              (Ref 1,2,3)
>>
>>   And possibly this via the Spread Spectrum Device provision
>>
>>   5470 - 5725  30 dBm (  1  W) requires DFS+TPC       (Ref 3)
>>
>>   Maximum power density is specified for some chunks.
>>
>> References :
>> ==========
>> 1 :
>>> http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/fixed-radio-link-devices/information-on-the-operation-of-wireless-lan-and-related-systems-in-the-2-ghz-and-5-ghz-bands
>> 2 :
>>> http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/fixed-radio-link-devices
>> 3 :
>>> http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/short-range-devices
>>
>> Cheers
>> The IOPEN wireless deployers
> 
> Thanks for the info.  Any chance you could propose this in the form
> of a patch?

TaDa!

kernel.org is still down so we've derived the below patch from ...

> http://linuxwireless.org/download/wireless-regdb/wireless-regdb-2011.04.28.tar.bz2

For the DFS items, if TPC isn't used the maximum power is 3 dB less, but
there's no way of representing that in your scheme.

-----CUT-----
*** db.txt      2011-04-29 07:17:40.000000000 +1200
--- db-updated.txt      2011-09-22 14:36:04.966154148 +1200
***************

*** 512,521 ****
        (5735 - 5835 @ 40), (N/A, 30)

  country NZ:
!       (2402 - 2482 @ 40), (N/A, 30)
!       (5170 - 5250 @ 20), (3, 23)
!       (5250 - 5330 @ 20), (3, 23), DFS
!       (5735 - 5835 @ 20), (3, 30)

  country OM:
        (2402 - 2482 @ 40), (N/A, 20)
--- 512,523 ----
        (5735 - 5835 @ 40), (N/A, 30)

  country NZ:
!       (2400 - 2483 @ 40), (N/A, 36)
!       (5150 - 5250 @ 40), (N/A, 23), NO-OUTDOOR
!       (5250 - 5350 @ 40), (N/A, 23), DFS
!       (5470 - 5725 @ 40), (N/A, 30), DFS
!       (5725 - 5875 @ 40), (N/A, 36)
!       (5725 - 5825 @ 40), (N/A, 53), PTP-ONLY

  country OM:
        (2402 - 2482 @ 40), (N/A, 20)
-----CUT-----

Cheers
The IOPEN wireless deployers

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

