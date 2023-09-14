Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:CC:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Ii/7f2+RLkgXE6gJRQjQUuTBawbwe20lwM88U7E7B9k=;
 b=dqDCsI1IORM3C0
 KqXrGIbwH+XKU/GIjAoDd/lCBAcI5sSw4mD40URKx5SwK4pGxQL5HDejwQP7CIdMzymSnMgtP4unw
 7k44wnU1yPy0uX+0Sq3LdxjzwRUXGx1QZ/MOTRSp4/G2QLPyFxa9yreB5rarDePRPSFRJMe6jEQHF
 zgCCW5W9cLxKNBiYzMD7FzcjiQgc1ROMt6cFAhiNeROzqG2g2UvXv4ulM8XN0dhOSSVPUr+4R+J1R
 7eE5jJstd26INySrF0dVdso2ery6iWnkUKilR0e1LEVU89A4ywatULlm4nTVbHGK3EOlTqPgAKh7T
 0bTuG5Jzv9lgc0EqP1bg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgdWR-007JCF-1G
	for wireless-regdb@lists.infradead.org;
	Thu, 14 Sep 2023 04:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com;
 h=message-id : date : mime-version : subject : to : cc : references : from
 : in-reply-to : content-type : content-transfer-encoding; s=qcppdkim1;
 bh=qxa0umifniA79gkJomirt37sBRAKhbHvcq4sg/MXTXU=;
 b=GxSnR5Oouw7yhdXBfCd+QUb28tVkCMmg9HqzTRIjvQNmGfEN+sqiVKZyNqa6FF0bHHZa
 Jg3SQVACasVUTOxJkSchBXszCl7FJfqi50YO+2o3OGPZOixrypqFWQ0/XCL0Ndv6XRnP
 Dlk/oyeMQdoHFvuxjaoGLrg+3PnMZw/MWxkC+tBrBFBe25s50KjzJTeVpWjyqzNLaKjO
 XqJv/7PfI84NADxFmRwdMTFq9GQ8cyAILxSwK7TIDiE/O8Nl4SkG4VkS04hhxPv59n3x
 0zUEpFEaiVbs4T3d4mSu9teLiY0m+SdakL/B2v8d76WoWnXq9hN1nV8EA9oAJ2F3coIz XA== 
Message-ID: <2bb228f8-f3dc-6c37-90b9-4708ae5131fd@quicinc.com>
Date: Thu, 14 Sep 2023 11:59:53 +0800
MIME-Version: 1.0
Content-Language: en-US
References: <20230315132904.31779-1-quic_adisi@quicinc.com>
 <20230315132904.31779-3-quic_adisi@quicinc.com>
 <4cb3e92530d3f4db3b414e2a7536a0f01b765c4d.camel@sipsolutions.net>
 <46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
From: Wen Gong <quic_wgong@quicinc.com>
In-Reply-To: <46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
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
To: Jeff Johnson <quic_jjohnson@quicinc.com>, Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 9/14/2023 11:15 AM, Jeff Johnson wrote:
> On 9/13/2023 7:58 AM, Johannes Berg wrote:
>> So I'd say we shouldn't touch any of the code under #ifdef
>> CONFIG_CFG80211_CRDA_SUPPORT any more since CRDA will not continue to
>> developed with any updates here.
>
> On a related note, what will happen to ongoing wireless-regdb support 
> now that Seth has stepped down as maintainer? Have enough vendors 
> moved to self-managed such that regdb is obsolete?
currently ath10k chips are not self-managed.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

