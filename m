Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WH0Vb-0005Zu-AP
 for wireless-regdb@lists.infradead.org; Sat, 22 Feb 2014 00:32:00 +0000
Received: by mail-la0-f45.google.com with SMTP id b8so2980089lan.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 21 Feb 2014 16:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=H5YRFa/0LAc/zcs6hceJlPqP/yNcOkrb1UjJgu0qW34=;
 b=GNGjxX9kGfpSPnip6h4PpccJDj2RGf6Uk8X91110PXmCmptNv6lJ+f4tr62RKulArw
 KN9aaqkDa++O6IoYrfcX1u0FEaKw/TuoC8OiMwRXeHdThnmnlevMJT3CMuetMMjfFBU1
 k9cRNdEQ/ksSIQgbXXrB8tMcmsLukg43FUXR/BDCHW6FPho6KpecAKndXkW/HpuKYNiB
 2Rx3BkVXV/2o8sHpfHlZpaDq5fToIsj1xYQdxSnmEudfp7JFp5nu/aqCTSnWuw7Qb+lx
 C1e+LskdDYleNKfmwtZK7gdSo2UaNtmz5y54nPtHOfuYrXinuOTl9heeTbaO8p2fPbl4 aERA==
MIME-Version: 1.0
In-Reply-To: <CALhHN=qaD=WPxN=SUBiB0yWVMi3Tugsug6uDkjiiSJyCbVOeCA@mail.gmail.com>
References: <1392231266-28479-1-git-send-email-janusz.dziedzic@tieto.com>
 <1392807806.4733.14.camel@jlt4.sipsolutions.net>
 <CALhHN=rAT=FeEJcbDJEPG+-knGgMvV8Mt5eVvWRWD-1BgZYLpQ@mail.gmail.com>
 <1392809288.4733.15.camel@jlt4.sipsolutions.net>
 <CAB=NE6WDvxXGT21H5-D4H3tSJ_iZufp6X05_quPpoAeaoMkOog@mail.gmail.com>
 <CALhHN=qaD=WPxN=SUBiB0yWVMi3Tugsug6uDkjiiSJyCbVOeCA@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 21 Feb 2014 16:31:14 -0800
Message-ID: <CAB=NE6UV6QdAK-hz738KHg19KezBzSEun0Zz0zsiDuOnVecj-w@mail.gmail.com>
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Feb 19, 2014 at 11:12 PM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> We can allow VERSION=19 and VERSION=20, and handle this in CRDA
> dynamically. This should be quite easy.

My point was what about older versions of CRDA that get a new
wireless-regdb tossed onto the system?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

