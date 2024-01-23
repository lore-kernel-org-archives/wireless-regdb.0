Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29735C46CD2
	for <wireless-regdb@archiver.kernel.org>; Tue, 23 Jan 2024 02:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NHASr/rieasqJSsS3YhokZIuVdPuMFtGGx95E+xrzos=; b=48hxf72+hctbGzOExUqYTZUo4h
	iYSbQ/pbaEzbzAqDSmaVL9hEeuR8wdx2tQUeaJ5Clc5znCYo/50s/EZZSsk+Mvm5tv+fMApxvA6Ur
	1Z9719tr6ljxPR2YfuredXEHV+LgAsy0hZEMU+DFzqeaa4H4Ea0qdNBUB60qy+9yE6VlA+WlxpKFE
	JadvMwv0GCD8OMCK9sk1qLOFlv2aSuexZLFpozdOD9kqz4NLRsD22OTDYmAsD883dygT8zniJ6+OX
	R9waAE4PfYJ/TXjH0ipUBNH2+vHNQlPXlWtSGsaazrvqFBPsEijM3V6k59tARRYMfqMe1XykOQrex
	K8nU9WBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS6Dn-00EqjB-15;
	Tue, 23 Jan 2024 02:09:03 +0000
Received: from mx0a-00186901.pphosted.com ([148.163.133.181])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS6Dk-00Eqin-0c
	for wireless-regdb@lists.infradead.org;
	Tue, 23 Jan 2024 02:09:01 +0000
Received: from pps.filterd (m0173333.ppops.net [127.0.0.1])
	by mx0a-00186901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 40MJ3Gxt016114
	for <wireless-regdb@lists.infradead.org>; Tue, 23 Jan 2024 02:08:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avaya.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=dk201908;
 bh=NHASr/rieasqJSsS3YhokZIuVdPuMFtGGx95E+xrzos=;
 b=XnmHjZezula4pHp+9CI8ylLvUY/79b9owErMAXB5Z41E4Iq/31mSbyBvYSr55xaOKtK+
 jlXvRKBsxqwKSkhz5us+IGc04Qpdp+/kKeOM8qy0wFW/clr4nqNqqHmAEhDPuPhGjAX9
 aNzVDGWmG99f12Elzpk0UZCIz+SSYxV0M1vkeALMQ9tclmimW40FIR864nZPGRfOipsJ
 nymUXrAkWU/Xhj9KOzc9kWvsItKhUnejG+/MY9uzyisBqSfn7GG1Bvx77AOyJqPxUVab
 +sxn/bZMOzYFxcn4pumIoZOZQj1VlNMLzz/Ma4gFyQ0qRbu4tbb1F4t0j4BC7pni/Gr2 6g== 
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2041.outbound.protection.outlook.com [104.47.56.41])
	by mx0a-00186901.pphosted.com (PPS) with ESMTPS id 3vr7exchxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <wireless-regdb@lists.infradead.org>; Tue, 23 Jan 2024 02:08:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKKS7urLIwUY/3GihtPlgT8tRakjt1wES+CleD8SdCMw3vQ0+dF3wciaqY/NtZXC6dCHeh6AUhZ+yuU2O+teofvamPgfVgqkqgdzI7luDtdJ9+sXgEkeLM2DimDIW9o3cK0xJqIA36QNsgEnrqVJSAK/Z0z6S9BOCQzsCSA/tKzfMTAHl9O6p5+HZRIncKzSMinG2Ny1Gx+MaiUuSSVdJG7pZLpQK9uejgABS9wHxVuQid69v8/0DB9485PRNxyDJO4+F3RTcS/f2LyOl+w3RWd1sdi/SNnd8O7XURdoDxyJUvla90qbcKx9ywb+bGlO3++0Ept3dUezAfBVfclv9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NHASr/rieasqJSsS3YhokZIuVdPuMFtGGx95E+xrzos=;
 b=R8RVUtP0nL7qrr7j3nnKc1TQ+zTqIV5j/8Gas5aO+nNKyvScDnjqVyfj295fNUc/XG39avNRR0TpBKtoDY/yRO5uMTWYzSK6IUX0mVVwsTxBh6oOTja5phO6meShs6fUbzONDWES2D9fag2YMNlYC3dwaO2EWNsvCm80cUvFCBbOHqrb30QbimDBhKF5sQ4VEjBXtwt8DtxIKAv4STMTNn5qTxBV3wishwId1B6rWFgT4kWyybUWLO93C9tYsMglXc6un1/gvvxte1eVWpVEpq89S1gR46SNiRpC6KlOVcxRd3sJCCcARp991wIdyY4nC6HWbjHV9b+8SwYGNjqYag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=avaya.com; dmarc=pass action=none header.from=avaya.com;
 dkim=pass header.d=avaya.com; arc=none
Received: from BY5PR15MB4787.namprd15.prod.outlook.com (2603:10b6:a03:1f5::18)
 by SJ0PR15MB4584.namprd15.prod.outlook.com (2603:10b6:a03:37a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32; Tue, 23 Jan
 2024 02:08:55 +0000
Received: from BY5PR15MB4787.namprd15.prod.outlook.com
 ([fe80::ec69:a56c:29fc:7470]) by BY5PR15MB4787.namprd15.prod.outlook.com
 ([fe80::ec69:a56c:29fc:7470%6]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 02:08:55 +0000
From: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Subject: [PATCH] wireless-regdb: Correct format of AU definitions for
 genregdb.awk
Thread-Topic: [PATCH] wireless-regdb: Correct format of AU definitions for
 genregdb.awk
Thread-Index: AQHaTaEeb/ORQD3AyUmaGXV5wGw1gw==
Date: Tue, 23 Jan 2024 02:08:55 +0000
Message-ID: <BY5PR15MB478732869CAB0F4914C1E34FB7742@BY5PR15MB4787.namprd15.prod.outlook.com>
References: <20240112040217.24356-1-me@ndoo.sg>
In-Reply-To: <20240112040217.24356-1-me@ndoo.sg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR15MB4787:EE_|SJ0PR15MB4584:EE_
x-ms-office365-filtering-correlation-id: 5d5c7e32-5742-4087-df5a-08dc1bb840cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rnlAg9K3EZ3pD1nECB28vLG+7Ms/lRHOnmiquT/51qhVTxPYjhMjbs/g7l4e/spN0kGwR8uQ12my4UNqaNE0Cb5gvEW95WS+Lg0u/JFK5ScsleP31ISWjzdvmmJLYd2gLYRQeFZaa6MdV0cpTfNZrGgl3r2f5fafytIKNuEk3KstRe02q4WwOEksHoocF9w7VAQWU2aUUL2pEmjolI1SSfEnz4oUg6o/R8xBwCkXIxXC1bvfwpLnALMzwipizc7ltM5AN4/mz6tYNCaiS6Qv0KuD5UbvOCrCkZKuEpQpgmpDkiFL9AczrtEPxih+EeQfrEMPxKF/xMk8Fp4pvPuUIhzgWoHrTA3fHovLatTP759JAe9HWLjTjB+dlTeLDUsEHe0SN22vjF5n12lNLcT+bgheoiIlbySFpFmWTVGPbzx10qDYU+ix5n0xfwo51C2F8+C/5JRLEV3PdOrrXJPjJCLGcsOWuyL+gQPKBNRPq+EI48DIABN9LkIUl4DMuK7pmaDWodR0BOmpgW3ImLxbZj7gjkdtBLevciJ84Jtz9rwSUUcdkvZsN6tuuFbHqIXoBHY0PxxX48g4/qjfAfBM3kg1GgrtoedwoZf3B5cJve2cx+XYOZAC7buOy6+3kpf9
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB4787.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(55016003)(6506007)(9686003)(71200400001)(55236004)(7696005)(26005)(86362001)(38100700002)(38070700009)(33656002)(41300700001)(8676002)(52536014)(8936002)(76116006)(2906002)(5660300002)(122000001)(83380400001)(66946007)(66556008)(316002)(6916009)(66476007)(64756008)(66446008)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lhpW5BKPDhXu0hv+LEW/OULL5hPAvj1vzdsgegXPfpxGs+CN5J7S6ri6/gFe?=
 =?us-ascii?Q?l87/Wax0vEyNnSkK4u+N+cwAPYosER70NWOAWgKrJwgdBkNKIa8EAMYPxwEU?=
 =?us-ascii?Q?MswNap0y7OpwocGzM4qlpa8hbYPugUPtp5vJH7pOTegdaBGwcsCF/ijlU7b1?=
 =?us-ascii?Q?2v0E6iadoEJPAS20sqDkH7rGF7V3BAkIpyhKWwUfiod1ov0xh3B3YDJKzvbC?=
 =?us-ascii?Q?dTypLA7f1KsAv9U2uBzcFEQfYZ2sxtzaZQkCxDSzAu3Rc9t5/0Lhtn/9FQ/O?=
 =?us-ascii?Q?DhjJ7VoMzBtvs2EkLK0nm3YFddhQDvZm2uAMd3xZtkZOWMj8e59cQFlK80Vu?=
 =?us-ascii?Q?Rs5ZPj1ZjcWxmS7fOT+OKi97A/bkHY5NqhD8NP3YP2MTKKDnD1O5ykySyxZX?=
 =?us-ascii?Q?Rh8YwF5x67gW3afbIztpOTkZpbR9FgMG46eXdsPT7HK8yDIZTAQFJoesR8pf?=
 =?us-ascii?Q?kFmiKQgM1S/V/pb5obMxTg0vYLtjsQbzHlU265dXBBW/Y8q7+bfeODmOJ+Wi?=
 =?us-ascii?Q?a5TrP+zoUkSLTUixjoqnuAXqIVC3tEf0+zBJjVWibUbVo7NzaxBaLYr0ZJSn?=
 =?us-ascii?Q?1fEaD3H+0jZnTKNqkKCBPryNLscLiqrOLv7KdIakO1SezIhJ+me4x0R0/brh?=
 =?us-ascii?Q?YL/0iu+28Um/razAcUdMOv5tOhQrZq4iWKCavpx7Qy3lpKpfr+obFikjNEiW?=
 =?us-ascii?Q?oqOD28DNYLeA1vtfkRnpXntx5pIuSIe5+8WW+O3Nc3F27XV3aUFOCeZt5wgD?=
 =?us-ascii?Q?Kj4Obhv/omcUg9qAEv+wX0GH+3rP9DIlUpU+OCHCtwO/nGgsEuiUmTxAu6DE?=
 =?us-ascii?Q?7J9qtIAKc6aAJoCjevuzjZNj6KQKPgTwQLcHQT5cRZTsUb7kAlqs7P233bTF?=
 =?us-ascii?Q?6RfOKLIbiH522SSJBc/uHyBYHr4S/wxi0Cc2KV9jn94oG4Q6ZYV9I6d1O+hZ?=
 =?us-ascii?Q?/bdPY5YGX+DqV0UXdoeL0cYr9Ob8Ec3g685ndfAIyAYu4RuH9xn+pZhiF/LU?=
 =?us-ascii?Q?nlzrzaScZBpwMr1hylQxxGl7o4BpBM/MrR63HUtQn48OnW+g+yiLFJQN8Q7K?=
 =?us-ascii?Q?PGZ1ZYH3xN0UGdBJ1uRDg28So+KIxhoknNQlchkiKUfR+QMRZvwOWb2l4v2i?=
 =?us-ascii?Q?WBQ7skWO6emsIlfnHpMcXpHvcxC4tgqyr5XvL6Wriq1GC3zP9WdS1Oa5Paoe?=
 =?us-ascii?Q?6DBR4o7bGOmLFTqI+eYrep/J9vXZy0YmeGuj/f0wUzsgRF4sQY53dWlMstPR?=
 =?us-ascii?Q?kTkBUtS1NXJWus1uGV6Q6ShanWfPbic5dvAI86DRrTYVwTH0hxHH+hWMpRhK?=
 =?us-ascii?Q?DmWu07q0BLXU8DMRxFe3yyeFNyZrR2bJloakxNs6rdoMYO8i8SvoTcdpGtoj?=
 =?us-ascii?Q?wSYFBwCalKhXSrKt4SG/is5THneNarSLi53LyyPdhReFOS1MdswMhcw7JFNj?=
 =?us-ascii?Q?+tXw8PlcmlzbJSCMqaCA6ko3E09GW/lRgU7HSA27NoWmh7+GjQzJmt8nhvAL?=
 =?us-ascii?Q?H30R4aflBv8F6Zy5D/Mr6g2KuIQ/WdP4rjzvFd36g7Bq+2OFdTFgaKgj6/Vq?=
 =?us-ascii?Q?+yy4gVOZiq4TDDasbT/7zJr/L7gwTYP2yQI5evN7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: EfJ5297XaMPwXn4mB4p0VsuJebroRE6WHiIIEYcd9f4MyuX/YbzZ0qlPOvZlvWkM2xU1T+/fTfDgwygdUV/x6HIByHs6Jpaex5POFMF8SSirFgen0Kj6yPhcSWwLMIIprON0D15Tl0XPx5ntlLW4A08QFjQEI1zBhGzlyFdWpfnddUkysp8Gznj9YQr6EDhf7gKJortPibNsngdXFjinkpK8fl9igicytgBwFESVYQatjVAoMVtgyGjFeo0AzWwdryB96sn5bcB2MmzLIyVB7kJg3eNjPhYH0YkP/tqsv/Nw2O2mBEx7E0HRVWsq82X3fhCf0l0qSzYUIPk6TfPh/VfWAICJo7KfI7SVs9xaEJUkcY34qngHPjHjj1ePibf5rHv9aea9rQIpi/2HeX3hzFCarIlK74dPV1VNaCqZvqwnCd6k+GOPdlPqidjjtAuwpj5x5Wq8OVlevyeUBhemC8pNDFpAdGP1gDyVRYMUMoQJruI1JefNBz4xPZwKIuZLkhNPg504OrkUUl8wobRVqNX+0g4cm2ABQ5AzC8WNlvBkoXoiMwPFEdJxC/3Cxi3KQiGzXulStm488KDDWUwV+WrWbax/hyT8J8M2jfS4UjDSvs0RNUrxjrq3J48H9e3YcZtji1VRdrx+9VWCWgkmHg==
X-OriginatorOrg: avaya.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB4787.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5c7e32-5742-4087-df5a-08dc1bb840cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2024 02:08:55.4329
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04a2636c-326d-48ff-93f8-709875bd3aa9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jeAhzzPuZRa/D/jBlRQWHGsdsZrzGcobfGRv/dahKiQWqBI0+k8yShdrxw/3tDuuWa+PZfzrObEsKggkjE7/Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR15MB4584
X-Proofpoint-GUID: zC6NfD3y6j2s-cM4ZH2b0H-8BmjTABeu
X-Proofpoint-ORIG-GUID: zC6NfD3y6j2s-cM4ZH2b0H-8BmjTABeu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_180900_445120_8A0C36C1 
X-CRM114-Status: GOOD (  12.90  )
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


In integrating the latest regdb package, I noted that the September '23 upd=
ates for AU resulted in the loss of definitions for 2.4GHz and beyond.  The=
 blank lines added in the previous patch cause the termination of the recor=
d processing in the genregdb.awk code generator.

I have attached the patch to correct this issue.

Lawrence Tuck (ljctuck@avaya.com)
Avaya LLC

--
diff --git a/db.txt b/db.txt
index fdc2c13..3800ae0 100644
--- a/db.txt
+++ b/db.txt
@@ -134,33 +134,24 @@ country AU: DFS-ETSI
 	# Item 58
 	(915 - 920 @ 4), (1000 mW)
 	(920 - 928 @ 8), (1000 mW)
-
 	# Item 59
 	(2400 - 2483.5 @ 40), (4000 mW)
-
 	# Item 61
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
-
 	# Item 62 (200 mW allowed if TPC is used)
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
-
 	# Item 63(a) (1000 mW with TPC)
 	(5470 - 5600 @ 80), (500 mW), DFS
-
 	# Item 63(b) (1000 mW with TPC)
 	# The end is 5725 but we borrow 5 MHz from the following less restrictive=
 band
 	# so we can get an 80 MHz channel.
 	(5650 - 5730 @ 80), (500 mW), DFS
-
 	# Item 60
 	(5730 - 5850 @ 80), (4000 mW), AUTO-BW
-
 	# Item 22
 	(5850 - 5875 @ 20), (25 mW), AUTO-BW
-
 	# Item 63AA (25 mW if outdoors)
 	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
-
 	# Item 65
 	(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR

