Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHVbi-0005UR-Hz
 for wireless-regdb@lists.infradead.org; Sun, 23 Feb 2014 09:44:23 +0000
Received: by mail-la0-f48.google.com with SMTP id gf5so1160447lab.7 for
 <wireless-regdb@lists.infradead.org>; Sun, 23 Feb 2014 01:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=0TTrh/50eIWFUGfP9LKHNFXiZiRvGRxI2JHoJeyTGmQ=;
 b=ZNpG6xkHLmttuzHLuSIIpOwDZaL7qiZsEkzzzgNROxVYHbocSEp0zQJHNw0E35c0zu
 S7Q0umEn+IdhS6/tdYAalppJhnVJ0iliB1o+3GRru8e0Z3BFYlKlGEQTahYu8oyHDSqq
 vyCtYofdgjN1IV/wKKlNJGu3jalLcG2pC5Y5IfLcZpfWt3B37bjG4VJ3W7bZVO7AG/mX
 4dR3hCP2Awhrmb87NZP4Qmj4vKq6LLRjXLw7R2zB4r8zuJLpwrilWf9m1cfESSwcexXN
 /KHmR3sOufxl3FUDKvH+5FmUu95d91zEd2f9TAppTd+fxZhmlzIC6NjKXj42+ksEvj9c djxQ==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A033385F7A@HASMSX106.ger.corp.intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
 <20140219001458.GF14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A03338353E@HASMSX106.ger.corp.intel.com>
 <20140219160301.GH14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033383EED@HASMSX106.ger.corp.intel.com>
 <CAB=NE6WD93GCtsKpXUJB8pZ-+9wOcF1E4QxNX4rRyed26JCHoQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033385C8E@HASMSX106.ger.corp.intel.com>
 <CAB=NE6VHVuRkxK0GbTNfkz2Cn+Bv19hO7cKe35KQhPVbUCB_bQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033385F7A@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Sun, 23 Feb 2014 01:43:38 -0800
Message-ID: <CAB=NE6Vj9=fKu48DTXX10PnajSz4ThwToLGh3evNDe3kHsG78A@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3 6/6] mac80211: Enable initiating
	radiation on indoor channels
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
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Feb 22, 2014 at 11:23 PM, Peer, Ilan <ilan.peer@intel.com> wrote:
>>
>> On Sat, Feb 22, 2014 at 10:55 AM, Peer, Ilan <ilan.peer@intel.com> wrote:
>> > AFAIK, one of the options they are considering is to allow such relaxation if
>> beacon from several (>1) different BSS was received.
>>
>> This can just go upstream, ie the existing implementation can be modified to
>> account for this for FCC only.
>>
>
> Yep ... this is WIP with the regulatory people ... need to get some answers ...

Tell them I said hi.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

