Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=YgbzDc5s0/HafMJ5+NStS3zkrnpeTVwCJ0jcQB5I1/Q=;
 b=pZKStshWCocFbL
 vADWnnWTw6IjlE2+ToDc+fULN1mNj6PnydfvItSWphkHYUQNb6KduVyt2shnq2N5uljj4irI2T0oa
 BfS7kGUd1tmV92yEqOuhfbrWFm+/Z1reVEUktci1eLPd26tcJgubQeozrXEn1KUGN5MDbB2qlNeOR
 gp+YCLHCGmt/jKhRMm+T+dC/BQGkZU4G4Les//52e+1flI6OJ5QUgf+2fqlWvrHuwLIG0zbzkUaxV
 UGe0RHOx+YzoWfj3yI4S0vWO10rWUHR/SYCSVlshymxcWyqmsyzV+tQrJjKna7pmGjCd+j4DxEZ+L
 yus1cGlpwUtEKW1wjiyQ==;
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdH9b-0006Ay-DH
 for wireless-regdb@lists.infradead.org; Mon, 13 Feb 2017 13:58:58 +0000
Received: from localhost (localhost [127.0.0.1]) by mail.neratec.com
 (Postfix) with ESMTP id 74A3ECE0326 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Feb 2017 14:58:29 +0100 (CET)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wgO5jlYMTjwZ for <wireless-regdb@lists.infradead.org>;
 Mon, 13 Feb 2017 14:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by mail.neratec.com
 (Postfix) with ESMTP id 5022DCE034A for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Feb 2017 14:58:29 +0100 (CET)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rKZMtaXRgV5s for <wireless-regdb@lists.infradead.org>;
 Mon, 13 Feb 2017 14:58:29 +0100 (CET)
Received: from [192.168.11.50] (unknown [192.168.11.50]) by
 mail.neratec.com (Postfix) with ESMTPSA id 32B12CE0326 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Feb 2017 14:58:29 +0100 (CET)
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
 <1486453950.2643.1.camel@sipsolutions.net>
 <20170207140434.GA109741@ubuntu-hedt>
From: Matthias May <matthias.may@neratec.com>
Message-ID: <a79eaf02-b384-4c5b-3116-c1386ef98850@neratec.com>
Date: Mon, 13 Feb 2017 14:58:28 +0100
MIME-Version: 1.0
In-Reply-To: <20170207140434.GA109741@ubuntu-hedt>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 07/02/17 15:04, Seth Forshee wrote:
> On Tue, Feb 07, 2017 at 08:52:30AM +0100, Johannes Berg wrote:
>> On Mon, 2017-02-06 at 14:50 -0600, Seth Forshee wrote:
>>> +	(5150 - 5250 @ 80), (23), AUTO-BW
>>
>> For 20 MHz this is right, since the document says:
>>
>>     The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10 B,
>>     dBm, whichever power is less. B is the 99% emission bandwidth in
>>     megahertz. The e.i.r.p. spectral density shall not exceed 10 dBm in
>>     any 1.0 MHz band.
>>
>> However, for < 20 MHz, like 5 or 10, which we in theory do support, you
>> can't use that much due to the spectral density requirement. It seems
>> possible that that's where the 17 dBm came from, since 10 + 10 log10(5)
>> is about 17.
> 
> Yes, thanks. I had forgotten to consider bandwidths less than 20 MHz.
> 
> Seth
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
> 

According to  .../include/net/cfg80211.h

>static inline int
>ieee80211_chandef_max_power(struct cfg80211_chan_def *chandef)
>{
>	switch (chandef->width) {
>	case NL80211_CHAN_WIDTH_5:
>		return min(chandef->chan->max_reg_power - 6,
>			   chandef->chan->max_power);
>	case NL80211_CHAN_WIDTH_10:
>		return min(chandef->chan->max_reg_power - 3,
>			   chandef->chan->max_power);
>	default:
>		break;
>	}
>	return chandef->chan->max_power;
>}

This looks to me like it already handles the reduction of power
according to bandwidth.

BR
Matthias

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

