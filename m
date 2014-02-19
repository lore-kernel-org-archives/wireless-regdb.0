Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFuoz-0005o6-EI
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 00:15:30 +0000
Received: by mail-pd0-f170.google.com with SMTP id p10so16945603pdj.15 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 16:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=xMe6lholO2+ZbOypRpUbO9MWnu1gLiBsPg0yIsX3Ld8=;
 b=vRYnT3vOUxAeWCA2k23X6GLJ3nkoFc4TBJPC9QmGhqjxuSvdkdsnjDWGJ2OUFqeyHY
 IPhlwNtvNTbpylSrrnm594AAGWja24hsv7zJNHHVZyPTF+6uqVZalvYSlGvrog+EzHlO
 FD4L1EznEKcLfuVcSIhdiuG6+fx34m8uZPsbN+S/ku1DgwjbMUJe4S6/nwFLihkY7PVd
 l9SCOlMAaVe2iHMj3u5xDDKgdWmayPOC9KFgL7oGJMgjSROUGNWns1R+zepext0YbGMi
 dZj6ZrLMCPgPDzMBADyICv6tO6kbsNLkcJfMVaYQ+Hxf9LE+m1MHb9I1ppuwo3kl3qJ7 nWHw==
Date: Tue, 18 Feb 2014 16:15:01 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140219001458.GF14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
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
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jan 27, 2014 at 12:21:58PM +0200, Ilan Peer wrote:
> Allow active scanning and frame injection on channels marked with
> IEEE80211_CHAN_NO_IR iff the channel is also marked with
> IEEE80211_CHAN_INDOOR_ONLY and the wireless core thinks that it
> operates in an indoor environment.
> 
> Signed-off-by: Ilan Peer <ilan.peer@intel.com>

I don't see why being indoor should allow to override the NO-IR
flag. I do see however why being indoor should enable to IR if
you are IR if you have the indoor flag. Enabling to IR if you are
indoor for all NO-IR channels is... pretty permissive I do not
see the correlation.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

