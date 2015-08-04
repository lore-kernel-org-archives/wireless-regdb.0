Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMRSK-0001tV-Ls
 for wireless-regdb@lists.infradead.org; Tue, 04 Aug 2015 01:55:54 +0000
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
 [209.85.213.173]) (Authenticated sender: b93043) by smtp.csie.ntu.edu.tw
 (Postfix) with ESMTPSA id 6850F2387A for
 <wireless-regdb@lists.infradead.org>; Tue,  4 Aug 2015 09:55:27 +0800 (CST)
Received: by igk11 with SMTP id 11so83739165igk.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 03 Aug 2015 18:55:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGb2v66U87FeBvE+PDAhz11=knyGBwaztoqqwcNQeceQsSN3pg@mail.gmail.com>
References: <1437622380-4154-1-git-send-email-wens@csie.org>
 <1437622380-4154-2-git-send-email-wens@csie.org>
 <20150803182730.GC21180@ubuntu-hedt>
 <CAGb2v66U87FeBvE+PDAhz11=knyGBwaztoqqwcNQeceQsSN3pg@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 4 Aug 2015 09:55:06 +0800
Message-ID: <CAGb2v667QvWzFvrYBWwZU8eGxMHfgh2LmsQUoYziD6UhEuQk3A@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2 1/5] wireless-regdb: Update
 U-NII-2c (5470 ~ 5725 MHz) rules for Taiwan (TW)
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
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Aug 4, 2015 at 9:26 AM, Chen-Yu Tsai <wens@csie.org> wrote:
> On Tue, Aug 4, 2015 at 2:27 AM, Seth Forshee <seth.forshee@canonical.com> wrote:
>> On Thu, Jul 23, 2015 at 11:32:56AM +0800, Chen-Yu Tsai wrote:
>>> Taiwan's Ministry of Transportation and Communications revised its
>>> frequency allocation rules [1] on 2014/11/17, allowing usage of 5600 ~
>>> 5650 MHz, previously allocated to weather radars, to U-NII applications
>>> with DFS support.
>>>
>>> Also, the technical regulations [2] show that for 5470 ~ 5725 MHz U-NII
>>> applications, the peak transmit power shall not exceed the lesser of
>>> 250 mW (slightly less than 24 dBm) or 11 dBm + 10log B, where B is the
>>> 26dB emission bandwidth in MHz. This is slightly more than 23 dBm for
>>> 20 MHz channels.
>>>
>>> This patch updates both. Also add links to the two documents into the
>>> database.
>>>
>>> [1] http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc&filedisplay=Table+of+radio+frequency+allocation.doc
>>> [2] http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
>>>
>>> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>>
>> Sorry for the slow response to these patches.
>>
>>> ---
>>>  db.txt | 10 ++++++++--
>>>  1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/db.txt b/db.txt
>>> index 982db34..5114557 100644
>>> --- a/db.txt
>>> +++ b/db.txt
>>> @@ -1118,11 +1118,17 @@ country TT: DFS-FCC
>>>       (5490 - 5730 @ 160), (24), DFS
>>>       (5735 - 5835 @ 80), (30)
>>>
>>> +# Source:
>>> +# Table of Frequency Allocations of Republic of China (Taiwan) / Nov 2014:
>>> +#   http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc& \
>>> +#      filedisplay=Table+of+radio+frequency+allocation.doc
>>> +# LP0002 Low-power Radio-frequency Devices Technical Regulations / 28 Jun 2011:
>>> +#   http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
>>> +#   (section 3.10.1, 4.7)
>>>  country TW: DFS-JP
>>>       (2402 - 2472 @ 40), (30)
>>>       (5270 - 5330 @ 40), (17), DFS
>>> -     (5490 - 5590 @ 80), (30), DFS
>>> -     (5650 - 5710 @ 40), (30), DFS
>>> +     (5470 - 5725 @ 160), (23), DFS
>>
>> Based on [2], it looks like this range requires TPC, in which case the
>> power limit should be dropped by 3 dB on account of our not supporting
>> TPC.
>
> Will fix.
>
> Is there any plan to support multiple rules per band? Such as different
> power limits with vs without TPC, or something like DFS vs indoor only?

BTW, this band has the exact same restrictions as the US, as specified
by the FCC. The relevant rules were added in

    f894543 wireless-regdb: Add back regulatory rules for US

and expanded to cover the whole band in

    3c61549 wireless-regdb: Update 5GHz rules for US

These show the power limit at 23 dBm as well. Any comments on this?


ChenYu

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

