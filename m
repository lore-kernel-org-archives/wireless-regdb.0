Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:CC:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sng+g+3FXMCwSm7aUa3JGRb6N9b3b6s2V6EuTootoyw=;
 b=v5LKtX4Rl4Av0X
 YU9q89acGRIpIcPDmR7ykCWOBVqJx9hej/iHhtAaZdt7av7WjyUQbDAVgzJwWSa4HaAh1pT9SNXRS
 2GxgTD9GQnEJTqOJC2xzwAbaoqoVBWTCG55zJw9hTHfLg0Tz0C4wsnXJdtnfsyqfqnr4508KS2clF
 TsKEQAAq8L6oVvzzw/mRjAfsWcJDGeeRYGq6Kga8OKlmH4gujOLK+N+1c1G/RnKu7gFjeZi1XU0rF
 6ZqGY3wAWJ7sR9KN6AP1tBAstWZLIYC8RJ7BtCWP4T5AFiAXZvuFgpHoyHw51xibKYBAgwL009reb
 RzwIGDxT/9lnJZ071t1A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgcpT-007ES3-0f
	for wireless-regdb@lists.infradead.org;
	Thu, 14 Sep 2023 03:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com;
 h=message-id : date : mime-version : subject : to : cc : references : from
 : in-reply-to : content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Oum9B+ZueXk07z0wEEOFPseDq75McWYB77ymeZAJQ4k=;
 b=kst2bIB0XgGl6vyLEH2CrI2Sm2AZJRZph/9HG3H78sxjfBy8BOc1xwpG6FJC+2cSlO+c
 kgFbHeVxxAJYDyViQ+rDbOykT6aB4Bb24hzQF/mGbDU/oB1m60lzGvthLlTgQUTDmSi6
 NrCrVvjoFMJo5IlKs3qsy1uSgczEplG+iqcZLRuwCJ3JGbesXakV5/ouqOKkXo0Le+P5
 CpR+DsRb8jSfmRBlRX3HX+mizO9I/25APQyG0AaO+2s314rcSPhdbE5KXDdkwR+C59jO
 HxnOSAPnJiQR63WpyQMGVV132E9PhbLRGcQVvtkRdRF4Ugbrmv1C/TrOwvYIZyd9dImU CA== 
Message-ID: <46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
Date: Wed, 13 Sep 2023 20:15:40 -0700
MIME-Version: 1.0
Content-Language: en-US
References: <20230315132904.31779-1-quic_adisi@quicinc.com>
 <20230315132904.31779-3-quic_adisi@quicinc.com>
 <4cb3e92530d3f4db3b414e2a7536a0f01b765c4d.camel@sipsolutions.net>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <4cb3e92530d3f4db3b414e2a7536a0f01b765c4d.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH v3 2/9] wifi: cfg80211: save Power
 Spectral Density (PSD) of the regulatory rule
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 9/13/2023 7:58 AM, Johannes Berg wrote:
> So I'd say we shouldn't touch any of the code under #ifdef
> CONFIG_CFG80211_CRDA_SUPPORT any more since CRDA will not continue to
> developed with any updates here.

On a related note, what will happen to ongoing wireless-regdb support 
now that Seth has stepped down as maintainer? Have enough vendors moved 
to self-managed such that regdb is obsolete?

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

