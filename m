Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGFNR-0001pC-GR
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 22:12:26 +0000
Received: by mail-la0-f54.google.com with SMTP id y1so774028lam.27 for
 <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2014 14:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=ICJuE0FHNB7i2NdoqS+XtemCyWPakIAm9PuAJOc2Yvk=;
 b=iuRwWVJlMI5StshYP3zWzC4cFWs3LB3ScdpjpABzRYivdktcWu1YngOjYWUSYRuabM
 wFi8NrVeuLbgd4uhD1UKtE6Vbnleq4pdVDGWKNic6uI3BoBLwtXphZbd1uN/b6Bjw6mL
 kEob958ANGsCi2ozt5lQ+Z76xA30FhH7LDdP5w9plapF+Na2DwjOpI5KVhYEW38cA886
 UAjhobnT2jraRlPBiFgLAiiAUuSVoK/kaeP2X4LVulHpuEs9GVOuB2mMQoRyAsrWk7+2
 26RN3YW1JMt98JYXfUqQcAGO39IxwU5leouc+g/2uFZStrDv6vZ8EMeyw1vzq9s8Apzp tQiw==
MIME-Version: 1.0
In-Reply-To: <1392809288.4733.15.camel@jlt4.sipsolutions.net>
References: <1392231266-28479-1-git-send-email-janusz.dziedzic@tieto.com>
 <1392807806.4733.14.camel@jlt4.sipsolutions.net>
 <CALhHN=rAT=FeEJcbDJEPG+-knGgMvV8Mt5eVvWRWD-1BgZYLpQ@mail.gmail.com>
 <1392809288.4733.15.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 19 Feb 2014 14:11:40 -0800
Message-ID: <CAB=NE6WDvxXGT21H5-D4H3tSJ_iZufp6X05_quPpoAeaoMkOog@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 1/4] cfg80211: regulatory,
	introduce DFS CAC time
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
To: Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Feb 19, 2014 at 3:28 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> Ah ok, thanks.

Let me know if you merge this so I can apply and push the respective
patch for CRDA. Not sure if you saw but as proposed this means this
bumps the wireless-regdb format. Janusz, I see you submitted a
respective patch for iw and CRDA but not one for wireless-regdb, we'll
need one there in order to parse the new entries in db.txt.

John, this should mean we will need two releases for wireless-regdb
moving on so that older versions of CRDA can read the new rules under
the old format. Another option may be to have wireless-regdb spit out
the file in two formats and we modify the new CRDA to jump to the new
format section if it supports it. Otherwise I'm afraid we get stuck
with the latest rules for old kernels forever, or we make a branch on
wireless-regdb for the old format.

Thoughts folks?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

