Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF32C52D7B
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 18:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:CC:From:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Em7cUJw5izL4WWcctmkjBTWewXnAU1bKpfm7GAgQUvo=; b=BQV/M8XMPbfXc4M34aV+mZk4tF
	Ggs8xogU00e0mxxPNs/4TWB3yW6u9+NmsDSgPcwL7JTqlwWKrm2jn5c+v5ImncbjZtroljaPWLI5g
	6ZGZGKQcJZ8tZkRHB8V9gp9BGksVDga3vYnfBTXF0tMxzBmPsM5a0XGKOuwHWQD3w+tNSvaA4KgGB
	Rsu0C92bnOO6iI9cR9fKDcwd2339AMvuqMYzgo06+IVH1cKJs9rBwi4UkG2+eXKKzTqpLC5LPrUQ3
	+arOVezOdN+i/zzdaI/MqUeKD/XwzPNYjEJVUWD3d68KbhKcFp40kya9gg/oo8kGnLj8BI3SESv9G
	apB6RN/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwVw-00000004f8C-1UIb;
	Tue, 13 Aug 2024 18:45:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwVs-00000004f7k-3ocw
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 18:44:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47DCXA0s008159;
	Tue, 13 Aug 2024 18:44:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Em7cUJw5izL4WWcctmkjBT
	WewXnAU1bKpfm7GAgQUvo=; b=nJUo7rKo6ZPFcjqqhaeMkgIBH4OmVT+ZfJc4Nv
	94hX0Kaa7KVE8PPF5gNlxLErMSyXQUZTrv7lNyVRS6Avqt3QOpoqXF9XoTgnsTr9
	JU/882kSDZG6L3hToVBOC6xYUJXXy40M+/jJbagsbML+T0gkdKo4WlaqfNgp6cVz
	hjZ9T1AMAhAT4SnSKrbxLXTtQjvuz3vlr/R10bzOaYrvCQuD5fpV3vahBsyLgoGf
	dSoPTHZh6BuiFk6YkM0kb2keY3y5HVirfXCGC/LGRTvRIiV8g//BsD2F3Ge19xeS
	cDE14LXHuNvfO/IdhFVjjXL0/AcSRZry2LCDyYhzC4vIWtdA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40x15e8t3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Aug 2024 18:44:54 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47DIir6s028122
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Aug 2024 18:44:53 GMT
Received: from [10.111.178.117] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 13 Aug
 2024 11:44:53 -0700
Message-ID: <cfbfa8f1-3367-4bc9-b201-2faac3aa7581@quicinc.com>
Date: Tue, 13 Aug 2024 11:44:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chen-Yu Tsai <wens@kernel.org>
Content-Language: en-US
From: Jeff Johnson <quic_jjohnson@quicinc.com>
CC: <linux-wireless@vger.kernel.org>, <wireless-regdb@lists.infradead.org>
Subject: Should the wireless-regdb wiki be updated?
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: S5ZvGth25uDQ43M8Ph3z0S-HDnW80e6d
X-Proofpoint-ORIG-GUID: S5ZvGth25uDQ43M8Ph3z0S-HDnW80e6d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-13_09,2024-08-13_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 phishscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=680
 clxscore=1011 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408130135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_114457_053845_D849A36F 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

In response to regdb e-mails showing up on linux-wireless but not
wireless-regdb I went looking at the Wiki to see the current guidance:

https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb

I was surprise to see the following:

Sending updates to the regulatory database
Note: wireless-regdb is currently unmaintained, and patches or requests for
changes are likely to get no response.

Elsewhere in the Wiki there are some outdated references to Seth, as well as a
reference to "signed with his RSA private key" without any indication who
"his" is referring to.

This seems like old information that should be updated!

/jeff

