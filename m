Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WmoMM-0004Ic-0w
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 18:01:54 +0000
Received: by mail-lb0-f175.google.com with SMTP id l4so696072lbv.20 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 May 2014 11:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=wfBv3eLxP4051dX5FKPJ3Q/489EeldfYoMvLqchoNoo=;
 b=AYXjfTqoRBubXq67Nfp6ac8dgaurrWMR+B5L2XDcRnBZwML4MLYmTPgvJni7evYNLc
 AvCV4QGQjfO2YWUyEBJeqTFqBtnDvXMglv5DuZU/SPlM6ujsN5YLxFt6QGHfU3tuLwqy
 uXbs7me7/yUety3RHaJ+WrWdEcyc/IiYBL8Xk=
MIME-Version: 1.0
In-Reply-To: <20140520142453.GB13981@tuxdriver.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
Date: Tue, 20 May 2014 20:01:31 +0200
Message-ID: <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time
	parameter
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 20 May 2014 16:24, John W. Linville <linville@tuxdriver.com> wrote:
> On Tue, May 20, 2014 at 12:33:51AM -0700, Luis R. Rodriguez wrote:
>> On Fri, May 9, 2014 at 1:40 AM, Janusz Dziedzic
>> <janusz.dziedzic@tieto.com> wrote:
>> > Introduce support for setting DFS CAC time
>> > in milliseconds.
>> >
>> > Eg.
>> > (5250 - 5330 @ AUTO), (20), (60000), DFS
>> >
>> > will setup CAC 60 seconds CAC time.
>>
>> Can you elaborate whether or not this will require a bump on CRDA  and
>> issuing of two new wireless-regdb files for the different versions on
>> the commit log?
>
> I would really prefer not to manage two regdb binary releases.
> Fear of that is what has kept me from merging this patch.
>
I can add support for version 19 and 20 in one crda. I am not sure
this is the best option.
BTW what about versions < 19? How do we handle this this days?

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

