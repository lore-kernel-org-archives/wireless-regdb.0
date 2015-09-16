Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc4WI-0002gT-LH
 for wireless-regdb@lists.infradead.org; Wed, 16 Sep 2015 04:40:36 +0000
Received: by lbbmp1 with SMTP id mp1so96673096lbb.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 Sep 2015 21:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=6ha04yBNW3UxLV484sSDGCRKX7AQVOcHKYC6fedrSN4=;
 b=p4NjmiZ1JjvMA0uK10l+4d0uoPTLM2F2pUYJwXQDPYNTOjxcVhf1GXOV+qaWBOykBl
 sd4tcwtfMDGUY/pZgMuClJnM+K2LPOYvglq4xyWaKX09xqgrGMToEbrSIPV35KmELTyb
 DJPattY6NNv7uvpemG1Sz2AJ8Yddmcn6LaPBr3/yabNEZa8Z7HoH6O9cmCiTWE4pOUq1
 C1/hp13FqrBdeU4tpAtCcHhWb/CNnEg7dNDa5JnYFlMHlz+yBa9m6cmrdY7TYfOYktdt
 HJjjxPh3CDTWmAB2xTbjazOr647+5QHo8Ixmtgo8SHWI1UHlQmUoJnaCgz1Zb+YsJjnU 3y7g==
MIME-Version: 1.0
In-Reply-To: <CAH9F5r=JY=QcPGHrvvcWHMfNy7C370kaYs2iAND3Ku_aJ8WHCQ@mail.gmail.com>
References: <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
 <20150915164346.GC146373@ubuntu-hedt>
 <CAH9F5r=JY=QcPGHrvvcWHMfNy7C370kaYs2iAND3Ku_aJ8WHCQ@mail.gmail.com>
Date: Wed, 16 Sep 2015 10:10:12 +0530
Message-ID: <CAH9F5rmHRCPTuzcJCdVLEV_OJNwZp23dmJY_hsjeTKsk6pZJUg@mail.gmail.com>
From: Atul Joshi <atul.suresh.joshi@gmail.com>
Subject: Re: [wireless-regdb] Regulatory Domain for Hong Kong
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
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello,
One more thing. If HK falls under DFS-ETSI, will it use 10 min CAC time ?

thanks
atul

On 15 September 2015 at 22:20, Atul Joshi <atul.suresh.joshi@gmail.com> wrote:
> Thank you for the reply.
> It would be good if you can update the database.
>
> thanks
> atul
>
> On 15 Sep 2015 22:14, "Seth Forshee" <seth.forshee@canonical.com> wrote:
>>
>> On Tue, Sep 15, 2015 at 04:11:27PM +0530, Atul Joshi wrote:
>> > Hello,
>> >
>> > We are trying to find out which regulatory domain HK falls under.
>> >
>> > From db.txt
>> >
>> > country HK:
>> >
>> >                 (2402 - 2482 @ 40), (20)
>> >
>> >                 (5170 - 5250 @ 80), (17)
>> >
>> >                 (5250 - 5330 @ 80), (24), DFS
>> >
>> >                 (5490 - 5710 @ 80), (24), DFS
>> >
>> >                 (5735 - 5835 @ 80), (30)
>> >
>> >
>> >
>> > So the DFS regulatory domain is not specified hence We will not be
>> > able to start the AP on the DFS channel.
>> >
>> > Can somebody please clarify?
>> >
>> > In other cases e.g. GB
>> >
>> > country GB: DFS-ETSI
>> >
>> >                 (2402 - 2482 @ 40), (20)
>> >
>> >                 (5170 - 5250 @ 80), (20)
>> >
>> >                 (5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR
>> >
>> >                 (5490 - 5710 @ 80), (27), DFS
>> >
>> >                 # 60 gHz band channels 1-4, ref: Etsi En 302 567
>> >
>> >                 (57240 - 65880 @ 2160), (40), NO-OUTDOOR
>> >
>> >
>> >
>> > The regulatory domain is specified.
>> >
>> > So does HK fall under DFS-FCC or DFS-ETSI?
>>
>> Based on [1] it sounds like it should be DFS-ETSI. Do you want to send a
>> patch? Otherwise I can update the database.
>>
>> Thanks,
>> Seth
>>
>> [1] http://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkta1039.pdf

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

