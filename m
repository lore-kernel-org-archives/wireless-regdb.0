Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-vc0-f175.google.com ([209.85.220.175])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDKqc-0003EY-RD
 for wireless-regdb@lists.infradead.org; Mon, 19 Jan 2015 22:31:03 +0000
Received: by mail-vc0-f175.google.com with SMTP id hy10so11037963vcb.6 for
 <wireless-regdb@lists.infradead.org>; Mon, 19 Jan 2015 14:30:39 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150119030011.GA95848@ubuntu-hedt>
References: <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
 <20150119030011.GA95848@ubuntu-hedt>
Date: Mon, 19 Jan 2015 14:30:39 -0800
Message-ID: <CALf=PEaeXSa8c14EGwnPXsTpp7m33iufGHfsNZ6MC96P_UxTBQ@mail.gmail.com>
From: Daiwei Li <daiweili@suitabletech.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add back regulatory
 rules for US
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Jouni Malinen <jouni@qca.qualcomm.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth,

Thanks for the prompt reply!

> This looks reasonable based on the documentation you linked to. I'm not
> certain about the EIRP values, but that's at least consistent with what
> was there before (i.e. they match the EIRP for the first DFS frequency
> range).
> I'm going to wait a bit to see if anyone has any comments about the
> patch, and if no one objects I'll apply it.

Indeed, I didn't know the EIRP values so I put them back to what they
were set to by QCA. Jouni,
I hope you can shed some light on where these values come from.

Thanks,
Daiwei

On Sun, Jan 18, 2015 at 7:00 PM, Seth Forshee
<seth.forshee@canonical.com> wrote:
> On Fri, Jan 16, 2015 at 07:42:12PM -0800, Daiwei Li wrote:
>> Hello,
>>
>> We've found that our devices can't seem to operate on certain
>> frequencies (e.g. 5660MHz) being used by access points like the Apple
>> Airport Extreme and Asus RT-AC68U. I did a git bisect and found that
>> 31dc1c5eca29d039ac8f26340defe44bd7e497c1 removed that band amongst
>> others. A more recent [1] FCC source implies that these frequencies
>> should be usable with DFS.
>>
>> Does anyone know the source for the commit that removed these frequencies from?
>
> The patch came from QCA. I'm adding Jouni to the Cc. Jouni, any
> comments?
>
>> Below is a patch that adds back these frequencies:
>> -------------------------------------------------------------------------------------
>> wireless-regdb: Add back regulatory rules for US
>>
>> The FCC approved UNII devices operating in the
>> 5470 - 5725MHz range with radar detection and DFS
>> capabilities. See the [1] source for details.
>>
>> [1] https://apps.fcc.gov/oetcf/kdb/forms/FTSSearchResultPage.cfm?id=41732&switch=P
>>
>> Signed-off-by: Daiwei Li <daiweili@suitabletech.com>
>
> This looks reasonable based on the documentation you linked to. I'm not
> certain about the EIRP values, but that's at least consistent with what
> was there before (i.e. they match the EIRP for the first DFS frequency
> range).
>
> I'm going to wait a bit to see if anyone has any comments about the
> patch, and if no one objects I'll apply it.
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

