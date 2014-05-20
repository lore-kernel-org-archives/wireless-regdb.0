Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmp5q-0005jY-R1
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 18:48:55 +0000
Received: by mail-la0-f52.google.com with SMTP id gl10so735537lab.25 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 May 2014 11:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=vgyKUTonkWFMdSK7Cn6Ef4FHADBn/Zrl3nYxuUUEiSk=;
 b=fcx+5Zprj8Xhp09SrAmDV9FacSZT0J1LcfokiwMHkM79+xC4Q1BVidu+53G3EvFeCk
 deDjBUIw6LvGE/QdnLptuFQh1gLB9eSvDH9pF0Ukdw2vkSnnrlaMreiZXlGHq9iF+Fqy
 YuzUOzHJLvx3Suqyk3TO5h9xt6dwsnCDMeN+oY9n7fnOgQqvcM+r2ah+TkJOIeLJxnYS
 sk5mDnYEol2NF10EIHXk0JHTyaN27UHISSgzmbJFFnGEx6xQkK4twYrOkn+mD6tqzgJS
 AX2535TRWjS1KuZWh5aptWFPfymzwqDfYMoNEO6SaSk4rso8MO5y5fLR4QC4pco1xpDP Kkug==
MIME-Version: 1.0
In-Reply-To: <1400610273.4474.6.camel@jlt4.sipsolutions.net>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
 <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
 <20140520180832.GD13981@tuxdriver.com>
 <1400610273.4474.6.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 20 May 2014 11:48:11 -0700
Message-ID: <CAB=NE6WiuydxR62dvua_OEyV+sqxvH8aOUHOBLS3ePz1dGCLAw@mail.gmail.com>
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 20, 2014 at 11:24 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2014-05-20 at 14:08 -0400, John W. Linville wrote:
>
>> > I can add support for version 19 and 20 in one crda. I am not sure
>> > this is the best option.
>> > BTW what about versions < 19? How do we handle this this days?
>>
>> What about older CRDA with newer wireless-regdb?  Do we need to worry about that?
>
> I think we should, but if we can't then at least can we cut to an
> extensible format?

Janusz,

this is in short part of the work I expect to be dealt with as part of
the change. What I think we should strive for since we have control
over the format, is have extensions which upkeep old CRDA versions
working, and only if new CRDA is present would we use the new
attributes. Please see if this is possible.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

