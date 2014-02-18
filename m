Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFt3x-0002JF-AM
 for wireless-regdb@lists.infradead.org; Tue, 18 Feb 2014 22:22:50 +0000
Received: by mail-lb0-f178.google.com with SMTP id u14so12513833lbd.23 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 14:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=03rKVUMJME+ZBiIoFFnMtIcyU9O+U/QGDoXNVIx2UBU=;
 b=l0gtcsXX/eUsgUXtgS1MGYoFyUbqznyjqD1+aXhCXMH9tE/yruBqpiK+PmjHBG3MaP
 +x1fQ04BQliKRbNHUu29P3SjNLB8/7SyNVzVrv8FJYzH2QAu/kS5nF1YCwdCuavgMCbo
 newrhLqFkn7Z8TKYGRlGtmeQJdWqAnLDbnown0JTkl8XXKZKPSSlXblVDlNS5vJp8I3p
 p5s6k1Y7gV/4v7JHP9/HvObeMU6o1oUYkSwkt3mLIiLQYpquoJGBBJ2YgROEEn8/2/JR
 IwaOb4my1qVH4JnJx9xVxGS31tb9lrryI+gBLeo1a1dVlybj07aihXA7hvb8KtVk8O30 2Upw==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A03336BCAF@HASMSX106.ger.corp.intel.com>
References: <1389801162-14488-1-git-send-email-ilan.peer@intel.com>
 <1389801162-14488-5-git-send-email-ilan.peer@intel.com>
 <20140125002002.GB28512@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A03336BCAF@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 18 Feb 2014 14:22:05 -0800
Message-ID: <CAB=NE6XgDSLE__a3Ud2yWVCkqxudA5_NGBaN9R_aqfBsF93bwQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2 4/6] cfg80211: Add an option to
 hint indoor operation
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

On Sun, Jan 26, 2014 at 2:11 PM, Peer, Ilan <ilan.peer@intel.com> wrote:
> Actually, when the hint is processed, REG_REQ_ALREADY_SET is returned, so the request is immedialty freed, and the last request is not updated. I thought that this should suffice. Do you see any other issue with this?

Yeah that seems hackish -- please add another enum entry and document
it to allow further hints of similar kind to be added.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

