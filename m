Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=NkTU0gyCg7gDp+B1B4MFrbew4E3APiA6towFg83Y0iA=;
 b=lIgQmtpx9o/9Zg
 QgLa92de5gS5WCPFr6gvLzEjxXScxhn8A4xKIvIdL0EUoP1gwGClOGIQ3iBkBdq7x07k5Z5r2twJG
 7PNFY3fNe+bMp3Je64TglrzAo8YOqPuaWlWWZUVbypScvJofNTVaVDDNC1dOQGz9ty6Jbb7Wxqe3r
 mnHrerlYH7WNanr3dkESGMj2cGOP1v559YKy++zEtU1MBfCSDrWh08VLCn8SNtOJuhYfqrXHqiLe7
 Bv0ftHeUwm0+7GrEAX2tslxtPYkRUaTaWV3F6jxoQkGniRSOJSRLXNjjjZQvClUKCscwcbUWL++ma
 gnxOYbkKGjGNv1SH15OA==;
Received: from mail-eopbgr690050.outbound.protection.outlook.com
 ([40.107.69.50] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjcNL-0002O5-6n
 for wireless-regdb@lists.infradead.org; Wed, 16 Jan 2019 04:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quantenna.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Fos8zz+f+XBAjJF36lxbUl0Ds5k+Eu3o/hvPz0y5Yo=;
 b=tIMFolyo2O3NjfpV0szmbHXiEvD2QHM1Mb1coFo8N6lj1Uzhrkj4GTJzSeNdYT1HUbyzqNvmuOjDJuIdoJsPo+kfx+iM11uDq8jr7yocb6TWx8f8yHRItwkVb+dAIsqsxYSv73zUdKc4g5vWYJae5mhO0JOfGFT+kfHvJjahIAY=
From: Igor Mitsyanko <igor.mitsyanko.os@quantenna.com>
Date: Wed, 16 Jan 2019 03:58:18 +0000
Message-ID: <cdcde7a4-a2b0-5d4b-83e6-cfbffdfe93d9@quantenna.com>
References: <423eaa39-fc06-6a5a-a8fd-5e15d503dff5@quantenna.com>
 <03c1e278fdd880bf7409c0b1c03366178b765cda.camel@sipsolutions.net>
In-Reply-To: <03c1e278fdd880bf7409c0b1c03366178b765cda.camel@sipsolutions.net>
Content-Language: en-US
Content-ID: <F5CFD8C6ECBC544EAC51B8C5DAF97B5D@namprd05.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] Tx power for slave devices in ETSI DFS region
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
To: Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 1/15/19 5:45 AM, Johannes Berg wrote:
>> Question is: does wireless core assumes that each device can do radar
>> detection in slave modes (eg acting as a STA) and it is enabled by
>> default? I couldn't find any logic in kernel which would limit 27 dbm
>> power to 20 for STA devices.
> 
> No, we shouldn't assume that it can do radar detection by itself ...
> 
> I guess we should have some code? Or just fix the regdb?
> 
> johannes
> 
> 

Maybe we have to do both, as there are multiple things to consider:
- current regdb values are fine for AP mode
- Tx power values can be 3 dbm higher if TPC is supported. This is 
mentioned in a comment in regdb, but not used anywhere.
- if STA detects radar, non-occupancy period must start
- when non-occupancy period elapses, STA must do CAC before returning to 
channel. I guess CAC must be triggered by wpa_supplicant?


I'm not sure how to present additional information in regdb while 
preserving backwards compatibility. Maybe we can:
1. Have a separate rule marked with NO_RDETECT flag which will advertise 
lower Tx power. Linux wireless core will have to select rule with 
highest Tx power if possible, for better results.
2. For TPC 3dbm gain, have a flag TPC_GAIN
As an example, AW rules will look like:

country AW: DFS-ETSI
	(2402 - 2482 @ 40), (20)
	(5170 - 5250 @ 80), (20), AUTO-BW, TPC_GAIN=3
	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, TPC_GAIN=3
	(5490 - 5710 @ 160), (27), DFS, TPC_GAIN=3
	(5490 - 5710 @ 160), (20), DFS, NO_RDETECT, TPC_GAIN=3

Linux wireless core will have to update Tx power values when switching 
from AP and STA modes, and somehow notify drivers.
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

