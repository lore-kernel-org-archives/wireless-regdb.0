Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uzxiz-0000QN-SM
 for wireless-regdb@lists.infradead.org; Thu, 18 Jul 2013 23:35:06 +0000
Received: by mail-lb0-f174.google.com with SMTP id x10so2981265lbi.5 for
 <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2013 16:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type
 :content-transfer-encoding;
 bh=AuefDauhJZE68PBQ8Y9KjpvkhMF1evU/9bwaIUaNjjA=;
 b=k1INal+CHNFF1qCzocKqhZgiZhnuV+kdKrH0UUZ/2tWktHYlxQ6YiEhIPsMoZHfXBO
 +bQSHr0NCLELNYtC8Mfn6vRTCVZWEksLuMts0tbZi4GlDFMXwzKTJyG7C2DdOSvvo2Jt
 psY1rda2fdhq3j8VCezAUqoi77gO1mz4JmjnbuTS9Jr84iE5YJcJTErJydsxHeyjP7eD
 snBv4EfnT6LHFDadZIQyk9Yvutc5bYRA3AyN/EeYtlXgV+aP0vB3deSXZ3O0+vc/x63S
 zJmV4PQiuwv7D4aXvCgzslIo+ABbn59VffOCdIdjkehhcrD3h5dPBtYFl3A3jsffnNtd cTOg==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A01AD31E3C@HASMSX106.ger.corp.intel.com>
References: <1372768095-26053-1-git-send-email-ilan.peer@intel.com>
 <1372768095-26053-4-git-send-email-ilan.peer@intel.com>
 <CAB=NE6VQXQPRK9_Q-Nh+ripRa+PdCd=4_EZvPxeghBjc32ejyQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD2DFC5@HASMSX106.ger.corp.intel.com>
 <CAB=NE6WY43BYDehH5-MyF0GQORC1dTrNToUsRVC-Q5bDwcna3A@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD31E3C@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 18 Jul 2013 16:34:23 -0700
Message-ID: <CAB=NE6Vcqrs-US-HJzxcnFhjF0-dsnvPdcWoUpuo-UDV_5cReQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 3/3] [RFC] cfg80211: Enable GO
	operation on additional channels
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
Cc: "Shalev, Oz" <oz.shalev@intel.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Jouni Malinen <j@w1.fi>, linux-wireless <linux-wireless@vger.kernel.org>, "Ginsburg, Noam" <noam.ginsburg@intel.com>, "Perelmooter,
 Liraz" <liraz.perelmooter@intel.com>, "Spinadel,
 David" <david.spinadel@intel.com>, Michael Green <green@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 17, 2013 at 12:15 PM, Peer, Ilan <ilan.peer@intel.com> wrote:
>> It was unclear for what exact channels you needed to deal with here.
>> Given review so far wouldn't it just be DFS flagged channels on some UNII
>> bands ? Then again if the indoor flag needs to be pegged to to a specific UNII
>> band and we can do that on wireless-regdb do we even need the UNII band
>> check routine helper?
>>
>
> Generally it is possible that the indoor property is not pegged to the 'other_channel', or it is possible that it is pegged but they are not in the same UNII band, so the verification is still needed. I guess that once I get the list you requested things will be clearer :)

OK so there are exceptions to the indoor flag affecting GO under these
rules or not. Looking forward to the respin.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

