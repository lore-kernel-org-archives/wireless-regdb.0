Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DA8C3ABC5
	for <wireless-regdb@archiver.kernel.org>; Wed,  7 May 2025 17:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aVNB+XFkqP3XJzMYB+z3IjRZF4TP2bFiHljigZ35q5w=; b=eSCJhPP2Yw3RhYKlqHTiUUXEEf
	27D0sUbsm5qEqVgu12jrt1fqW9Zh6MPSQDvoQ+3AoL2xcAZFt2iLhIXuuk87QN6yUtk6RYbM9oAw7
	Q+qL0f85mQbbAcvcot1jVUXXJFda88LF0FcF7oLmqnXGn5Tu4+Jv0tl9czWqPC5+nIzHOvkja8Pb1
	BFk7n67635Lp1UmSwOa7hlB53xTcmEBAuV1FZfyjrxGcyNTHSHJaueeTJ5rsR3rYqPYwHSgfreRsS
	DzZSiRZ+UIEOfhjl/enPS5jGdlRXvkX1edYKuk7Ja64L8a4Oud+jbQLNRXWbW2c0rPC5zGDEZVBn9
	SabJB9yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCiWX-0000000GHux-2pw0;
	Wed, 07 May 2025 17:25:37 +0000
Received: from mx08-0057a101.pphosted.com ([185.183.31.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCI73-0000000C3Kr-22A9
	for wireless-regdb@lists.infradead.org;
	Tue, 06 May 2025 13:13:34 +0000
Received: from pps.filterd (m0214196.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5464cj00024638;
	Tue, 6 May 2025 15:13:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	270620241; bh=aVNB+XFkqP3XJzMYB+z3IjRZF4TP2bFiHljigZ35q5w=; b=NY
	V8nK7vMbN0bgr4XmIo6xpS8gNOzaquDx3GUKX7qN/mt3c+4nrxwawTjT3r8xSIiw
	9fNGzOQyRu4n+aotw9jMXS+aJWd0z0Fxa8/GZeJgx/oilalIPHaMt3waC9Cq/B81
	tFSCiIg+oK71BIPbKZINiJfhJfLZPN5caFZiNLrfuAF4/PaFWCeLjM2oqPfIB1o3
	+TGkMk38OC7C1enctJYsLCrGptPWLQid8ofepQvczn2fQ1evCmSAgemwNNyv7Bez
	PVFyPtzMd8PnMmQz8CU082xTd82N0IRoB+eI1V0a4jQR5tJWAlFj+fhff+fEObdI
	w70MUo7DYka2mMnULXoQ==
Received: from eur05-db8-obe.outbound.protection.outlook.com (mail-db8eur05lp2109.outbound.protection.outlook.com [104.47.17.109])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 46d755ateh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 15:13:28 +0200 (MEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gohSwkKikRy/64r9MaZBiNdvzIHuu1hhxs3ks24BPgI6Yy6dWIsR0Th2R3cGNo3+PtfKtOd8MA2tngVMWzpukMaSRYWtIK3ndMsuadQoNkQoiElBtMk73hE2gyUYT/XLrv20kXnMECO3g0GP/GAWqAruWMK86gTUadj5GRoRM89keQhiikznbXEWKS2TxPRV7WC+tvndgV5GbRHldRxV+1B9TQL8Zy+u09AVWqvaWtgJ793HfKpnPcYLD0A7xTSkhF1bfAPP5p4Zu6Zpl598v5isP0ZzL1Kw4yONRTi5WggP3c/vtSh42Lj7hQcHvg5Xz3RQ3Qfk6RHqXIXXK6zhUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVNB+XFkqP3XJzMYB+z3IjRZF4TP2bFiHljigZ35q5w=;
 b=QR0x5ZNnH8M6SCz0u6OUkNLFqpMX1un1cbknYmmNbNDdjXRyGChzUq4NhGvtBPQCdFWeqcwTiZ9pNIPo+G50Q6BzWppmiOl0eGNjU3aBB3EqLyXLooHAAZwKrdSsNgi0N6sqrtMHotlUUDeocrx/85E7xtqbFaf13GZ/I9rp1PcSwOANyUwo+W65wPYlshGDat2eVOwBPEp5cN9cSkf0d8uLbE3NiFzej/gh+ZRTbkRcw03jsC3gIy6i9ES49OE6VSeRPQtu1I2LMhCuTSNDlLd2BU2trVI5MnELy0T0aPEiYcThfk6SpK+YLy9eFauUTALiwEkEdL1j2fK/P5nPbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVNB+XFkqP3XJzMYB+z3IjRZF4TP2bFiHljigZ35q5w=;
 b=gZrGYZO7isglouTsblXqs70MOfcY9hblnhsMEYRBcU9tbs5fwoy8v5d3JVAwrygZVmxbQfkeZnbUGmNEkRpQlHOh0Hj+sNGStiOoewKb8CSWtd4uVKSjIzY2JuaUcyDcn/AyOdY/9ia9+D2/d/X93+GEH96JXv5eFF325mhudgE=
Received: from AS8P192MB2240.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:63a::18)
 by DU0P192MB1913.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:3b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 13:13:21 +0000
Received: from AS8P192MB2240.EURP192.PROD.OUTLOOK.COM
 ([fe80::bee5:29b7:49f2:cf70]) by AS8P192MB2240.EURP192.PROD.OUTLOOK.COM
 ([fe80::bee5:29b7:49f2:cf70%3]) with mapi id 15.20.8699.012; Tue, 6 May 2025
 13:13:21 +0000
Date: Tue, 6 May 2025 15:13:14 +0200
From: Alexander Wilhelm <alexander.wilhelm@westermo.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: wireless-regdb: Wrong ETSI tranmit power without TPC
Message-ID: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: HE1PR08CA0058.eurprd08.prod.outlook.com
 (2603:10a6:7:2a::29) To AS8P192MB2240.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:63a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8P192MB2240:EE_|DU0P192MB1913:EE_
X-MS-Office365-Filtering-Correlation-Id: 594e1895-53e5-448e-8bdd-08dd8c9fc689
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pl77JhtJ1gFWyNFh2Aaqtg8S04B1Bw+zVZ+jvKuwBPXUWh5Y39M29I+ko/hg?=
 =?us-ascii?Q?rmvvFeV4tZBY/13koFyLwvODWCDziUa2/zO/T0UVFrhq49zeYnRLWtNCjRzi?=
 =?us-ascii?Q?panvpfhL+tHskmfImxrUhE4f/j+QJmwG3M6Qq9FoJDe5PDO18u/+lrMQBiRd?=
 =?us-ascii?Q?Cde1yogTVN0MAVCkK9XJ6ZfUHMJY1Z1TZgjo2a7abI6x1OR76E22KFInrGOs?=
 =?us-ascii?Q?2AHh4OcF0JrVPf1vtkvDHQbIDrQI2PoLbh4JirJ2dJOO6WVYJ8M5F0vry5/l?=
 =?us-ascii?Q?D+1bb/CFcTfWu8c5fk4bUimFDeTp0OBCvSId0stxkG8k0xeyJVkqsOnzz3T/?=
 =?us-ascii?Q?2M+lPx3xphiGxk1vHy75nrDOCpV12nFWfNeM3E0enNJpw4eLPflm/TFoPmUv?=
 =?us-ascii?Q?1o+GB2M2GYhpkpf8qxEmeZuSyfkf1NGU5ZV4Tg6AiYNTKyYDVLFMKEYiwc+K?=
 =?us-ascii?Q?DLBCHe11CogSo5wNVCie2emREs17uHi3O2TnWBjvmNbYICLu9ZNChZgCosZv?=
 =?us-ascii?Q?cVtH3dmj8RrogT+MmNXtxoFeMHqihtglOqliUPPgOBUXkxPvKH70EuuTMRfK?=
 =?us-ascii?Q?ECE4IsAwf1b93BjAU7eer/6cWcWedIFwd/fJmuoIw/lpqDKHoZnFTCG25gzE?=
 =?us-ascii?Q?OR7AQ+y7Vn0fU0F4iMzCq2KaYCjvwz55F3+rWiBKMXMDNpdndil+ndQEeyyN?=
 =?us-ascii?Q?f3qg7/WTlZ61Cn/NXg0vzjYutUZ252ucj3spACHiwMn2iuDzC/8OZPWiMomf?=
 =?us-ascii?Q?cqV5Tk9yCEP6COrmjeADcZc58AlNIbNCFOTbLYTqkguLis2/1ID8ZietBV3O?=
 =?us-ascii?Q?VKkDNyvclKRoKduRc2kiMg7KURM3MVZkDOzPJoFtjs6ssritLCS6yxTRCgno?=
 =?us-ascii?Q?SG88caAAOso3CulQBBwvQDyautVuUx939yeomicRM8XpiC5BZriHZCzpL+yO?=
 =?us-ascii?Q?0Lq4h+UCPWhPIJc9DWUHbWtAJbnPqJkKk3FdvpaKYDPsVUcSFgYH51ptO8/9?=
 =?us-ascii?Q?C46ABumpDrqaoUcnxB0Ml4gyO8U4sLSo37cTHt029e2XagQbYX3QSNJwtfRA?=
 =?us-ascii?Q?HKOe5kTslWKw7rEKFa4bLBwU8h/LXsTjs/ahheo4zJP9MjYlHnLIVFEdALwU?=
 =?us-ascii?Q?lt0eVinMUlniqurNWo/hiCmZ+YTtPzO4jIQtno+8kdvxKApJ86NM9kSxOSuq?=
 =?us-ascii?Q?tl5BoWtvmrhPd3FF/xiijdt2w9MBLGeqIU+X+xA8SGyAMRA05hUcrqIe/mgu?=
 =?us-ascii?Q?HDC3Qf4UN/t+3G7LLRpIcDJUdIzxnOVNv0nftCsx+XGnXJhEE9vRhDoJ8dOy?=
 =?us-ascii?Q?mz9y63HKOL00tMuuc7NaIOOMyyFo2SyZxGvAJcWTQ5Gq8IShBeU1qEI59QbI?=
 =?us-ascii?Q?NUMMSovag+L3mLLkVdsmxKtB9duZbd1/0K2lyKCdsUgoYVA0U6IILUO7Volq?=
 =?us-ascii?Q?jH1+zGnyEMw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8P192MB2240.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VdvSX18rLKQf77QBPZEdKL/sfjLsTMYBT0z4ilrzRg58bJn3VthQNgTeAkZx?=
 =?us-ascii?Q?aJZhpR1Cx/YrOXkFMQnTANf2VeeKP36IyQWptKv65KdIyZlwkpjCD1ThwJAe?=
 =?us-ascii?Q?OGpNtHDJkYhZEFQEahiLOOcG3f/j18jaXtAlV0LyrPpszM4gAbFAo323zsi5?=
 =?us-ascii?Q?l2k8ot4EKzEgHWRdh+0pm+4qd3+W3CDXvW8pXTOdrYcDAj8oCf+tfq3nisl0?=
 =?us-ascii?Q?M/xs1jEIWYfYg21obEVMJJNS6xVBV9UYPwPDxCHb7o43ewr5o2rac2zhYKu3?=
 =?us-ascii?Q?4KAtzog7JnN/oQaUkgK9K8+zal6Hr8n2l11jMHfYb6hSRj6QRJSHpS7NSfCL?=
 =?us-ascii?Q?XpBaoRG1m53sZTwMFZvRlxrxuc8mbloIgo7k+W3epTuPiblCjHEAkW4jLZCM?=
 =?us-ascii?Q?zwoyMSeRTodr7kWzgfJ7A9Z1o1d1AqfRD/d4E0GAmszS8oS2darg0WYox1Ty?=
 =?us-ascii?Q?jwLCKho+eH8ukryp8lCFVs6yWxsBOp2GV6xca9NNPOBiyiYuP8QeExpAdaqp?=
 =?us-ascii?Q?QOXzvCLdvg0DOJh1o2F0ccvyWkF8wi10DvURLTmIhKJbNa3UmkJwmQhHk6V3?=
 =?us-ascii?Q?z+r6ueyKDsHDv6s9UqvdM8LIw0E1ZW0kIfoWP+jR/r/dR7zn97OJ/bhPFyto?=
 =?us-ascii?Q?lcz+9LOhQxvpD0IYwD1UcmRVeqH6yofn5lFjTYo0ObIRTa+O1EhScKuQAvYz?=
 =?us-ascii?Q?sW2g8B91HZDqf+oMD8TGFK0WoW8IxKj3Ljy7sl3hHXu0EJ1PdAVNoVSqnMzX?=
 =?us-ascii?Q?W9RYQUmnl454zpCqn418fYh5N8heVwshdgmnYA25aXzDrUI9rBmbfI/Mn7yI?=
 =?us-ascii?Q?XkCRoW33d1QYZ4Qowl2nJB4Q3aZK9BszYD3ffdLEc2XebL+XXxHoPOFGTzZ/?=
 =?us-ascii?Q?cOz7j6UwarsSoReOP7mSHdS4LbvtnvObnYe5ggw4oo4jkuCzb3iRJf+zzv4e?=
 =?us-ascii?Q?D1f020J/Hpg7EHcsWqbsYVRmBQpd3IicWgbLx4joXV1Ise+ylg48ltLNPNLl?=
 =?us-ascii?Q?rBJQDD49v1yjRyZWPXGXhWN284dWLEW+yMl0DJcyhIsI3njEi6g22MxokiYp?=
 =?us-ascii?Q?l/MN+qoflxGICBJ6K51AmN6ZwaQW87aQZL6VToqR1F4VU2ZoAgAqMuTdS9hp?=
 =?us-ascii?Q?Qu7nJ1mMlPZsBoMVpJnKPXzRC4UaFZ8H2IUA+2zXph8agY+J/kvy3aaMa9Pc?=
 =?us-ascii?Q?kBHJToU7YjmqB1UqP1YHcUKVZ6eZ8xWxphj/yNMpBna2BcuKi7en7fbSPiyV?=
 =?us-ascii?Q?qWzf3s6WA9nB3oKHb67nSov/KSAbHDsggrKuLPBF+F4mNIfdRaWdcLrCp3vz?=
 =?us-ascii?Q?Bfwa3Gh47POS+Wzu5YqE10GyAcEstwua+U5dif38jOTV487iK3i9YsY3z5bt?=
 =?us-ascii?Q?/zFeBc8yRBgNESd05JD6i9Qv05ZomtiNuRxIc8LbX+sV+UlBa9tuKb3whvSP?=
 =?us-ascii?Q?nDdwXtGg/VdaS1r5TBj/3yb8LTVyYL4mGAGhVHRZdcUpyHhB6Y1MBUiUnVKm?=
 =?us-ascii?Q?Fav20PBB51+yBHjkrBqQz/L9lRuAnlwFAETbIA1HvcAnCzzkUVlhGVaCSZo0?=
 =?us-ascii?Q?lMjfDonbP2aBaZ+4n8NGJWKngvafak2GZVx4G0BI?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: TJB1ZIAA1zT2qijJL8uoA3p0fG/WkfchPw5ZQNJsPa30hBkv4XkkCCDbAKB760/nzvk7vlDkMYQePlk2KDOj8g2Y2Wz518OSk5oM1hdq1EWy8g2uPw5AklFthLg5Ilks1+lq38hTtcnyfgj6cFwWUnC+7cJXkFu37uwP0vdV9SZuxe6lwT80Psczv0jK2rcQ0h0HvIYRCPYq8kXixSpVr0BQpF3DOkGN/Q364+CKHF1LpwtbeobbVtdvjbKDrvNJlLJlLSEw5uxLo7gCxBkChlVkb0nVRvC6psJ16h48LNPFTfIEHMqpjmuLzC0bmCvAIwOW/tgEqq3zAWmUrW+SyWE6guEHVPQrFG4fHZGYX5muDfs3gyem+XA1v7Nu49N/N33UbQgPLFIUC0Piy6r8VfzlpwdJHFBiVm0htvPxEOMRGW6y9i06qKV0ZjUD3Zh/hlR2kENH9FCpTlOlsIUZcVOh4a0HG1ygE3OBXMzWsn+mU09kl0rIwCBle1q0qEGfN8yQs6to3BOklkxtmRt6fRHJVaMJmoegWItiE5hA/Q+9nZBarFOh8q4rGBrFjqtIT63RGufPpUpq8B3WcKs7SXxHF2+AIYVY86C0C9CFBqWZpz119lHlWSgJWrJtvOB2
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 594e1895-53e5-448e-8bdd-08dd8c9fc689
X-MS-Exchange-CrossTenant-AuthSource: AS8P192MB2240.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 13:13:21.6403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kTA+fp8gdaetjCBn6+5mAmQRDx0781TRNsSxJ8a1VEX30Gz2N6084FfPqBnY6wiESZPr4ur67KQojqeodS47TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB1913
X-MS-Exchange-CrossPremises-AuthSource: AS8P192MB2240.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 104.151.95.196
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: DU0P192MB1913.EURP192.PROD.OUTLOOK.COM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDEyOCBTYWx0ZWRfXyja2IqpbtHni sd2x8XGLeQ6oH7JmRUJoromcLp6pZjoTe9+hLXHIH2sFkRxLveCvo9Z7NrwG2NIVnp/aqxeWd5F qFk22K2hwu+u0Z8WZpY2JvkLOnsDKBLfsZm25SHTuireSmsWwmoYKo8mP8gt51AVC+NEhgJIynK
 Yticg2J+b5R45OvkaBIUTOCkExaqidJseh8nX+LOQaHDgoZNZgEBmibNgWuKl9xqwJ+ELYFfYmg jMWRwkyPW46G3N07GAAbSn86BbXDYtvSq6S9bvZ04m4YTx/w2HUC97r/C2tQIzTynjnG45Ob4m3 /XW/hm7us0zbKG+jUWFKW+ftdwXSQUisYXMaA6UVc0LdX5aRqS2vn3e5s48JydsPWvT5IIa3vbV
 cG0cx4WIUEWRWU9vptn3ReE+skha2On3lawqEBjMSP1z38HNfEj0PxV+C1em8cuEcjsU9gJ9
X-Authority-Analysis: v=2.4 cv=C7XpyRP+ c=1 sm=1 tr=0 ts=681a0af8 cx=c_pps a=l7dDOtusiRNhBxiH5QrzSw==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=8gLI3H-aZtYA:10 a=QjqYJgfIJUVuE3_01asA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: 6dx9BD08Vb7fW8nvLddoo9goDoo1CvIW
X-Proofpoint-GUID: 6dx9BD08Vb7fW8nvLddoo9goDoo1CvIW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_061333_817103_BD535B39 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Wed, 07 May 2025 09:32:43 -0700
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

Hello devs,

please correct me if I'm wrong. Since TPC is not used, the EU Rules dictates to
decrease the transmit power by 3 dBm on some sub-bands. For the most of the EU
countries the mW instead of dBm is used. Therefore they are halved (e.g for
Germany (DE) in commit 81d251dda3985e1088bd89f5d9f565e63ba5a30f). The problem is
that the values are then converted to dBm and rounded down and result in a wrong
supported value. Take a look at example (Germany again):

country DE: DFS-ETSI
    (2400 - 2483.5 @ 40), (100 mW)
    (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
    (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
    (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
    # short range devices (ETSI EN 300 440-1)
    (5725 - 5875 @ 80), (25 mW)
    # WiFi 6E
    (5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
    # 60 GHz band channels 1-4 (ETSI EN 302 567)
    (57000 - 66000 @ 2160), (40)

For the frequencies 5250 - 5350 the power of 100 mW results it 20 dBm. Correct.
The frequencies 5470 - 5725 have a power of 500 mW. It results in 26 dBm. But I
believe 27 dBm are allowed. For the frequncies 5725 - 5875 the value of 25 mW is
also dictated. I'm not sure if I should expect 14 dBm, but I get 13 dBm.

Is there inconsistencies between dBm/mW conversions? Please give me a feedback.


Best regards
Alexander Wilhelm

