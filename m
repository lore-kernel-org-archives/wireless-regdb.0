Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4091DC46CD2
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Jan 2024 15:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UZK42AmS9bAwsB1T9T9MmYvm05g/H++u3VhAyg77S0=; b=Wtu+s9jgt+NAYI9ApSuaU6sdd/
	BKXO5Ln3TnOHUzsu5kiX4zdKKYacXleTsKKmPHvSUkXcIh4NHk+UdgfJcidumHLWE5kvL9iR+SBvQ
	rMsmMFF0ztsqsL5hzrOJXdMUrUja11hRz+QQ3sla0eWxIgsNKTNp7LpUHgClidHkNCc91gWIvMd7o
	sqvsRAqXxHq+5t+K0fG4jAKaGERqIA1tVnYuEZqYslDf9pCQyVYlICec4X/NDnSghcBBimuvseYtK
	Ki/nQD2TIL71MsNS3LJmE+d3gFE8jlQl5Y+PwjP6HPB8uf5eQXdS1QJWBIO3vuqySsOEhOqFfmHaQ
	XTtJVc8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUqCU-0000000HCxJ-3plA;
	Tue, 30 Jan 2024 15:39:02 +0000
Received: from mx0b-00186901.pphosted.com ([148.163.137.181])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUqCR-0000000HCw1-1a4l
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Jan 2024 15:39:00 +0000
Received: from pps.filterd (m0173337.ppops.net [127.0.0.1])
	by mx0b-00186901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 40UFDNgI016489;
	Tue, 30 Jan 2024 15:38:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avaya.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=dk201908;
 bh=3UZK42AmS9bAwsB1T9T9MmYvm05g/H++u3VhAyg77S0=;
 b=MweWPdykOhFBCm3kf6leKKQPrUWteCgGeU9Rg55+54w13AMKJi6ysABb1IwIlYnSjOr0
 FoewNrnw47vdXb0xkmYlXhS0cWQUeKoO6/HhsCvOY4zxjPJuXKE8JOd/EeayQZQbCwI8
 asa7nrki9xu6Gh8IR8FjRA4GceMjwqNFwLBiKq38fQuqdbYafgi5zIboEZ4wXbuz2l8U
 6kEjTWSSjJjBgWjsZp2ir807Z4unY7yMqlAG0sNOPH4d4HzLyNIWT21CJfGe5sbtDVeG
 4I6qjpjBo2/80FE7zUFVXHvBUkZm0SWFNknlAe57h0ffzXGRCy/QHIegp+BpzeVDQuGz BA== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2041.outbound.protection.outlook.com [104.47.73.41])
	by mx0b-00186901.pphosted.com (PPS) with ESMTPS id 3vvrv68c1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jan 2024 15:38:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cf0pjk8e35QfEDHcobTLqe36Bm5OwRybUwQ4/MUO+8Z1mQ+XdBGKIlFQEhPRyEixvMJxVVYbF0Sm8Bymx45WjlwgcbrInxOZS/wskWABJn5207DGyaS4rYKoM/a/RUrUnL6doH4Xrqavxh/a2O1Nl0AUpOeJs0fp2LSPd+jYRnGwwKsLIXeIK/VWqW4kKFCr41svqgV5rzuiubSE9qu0OHu2XZR8Q+97oD8oQrw3X2EL9nJKpmiEL08k9JLVLX5MkT6RNjlnIZsBUgCrAJqNALKYIf1bnjm68/Frza3KoRmk/DmXwp/bk8bLvjKf8b7GaNvziYqs+wH+hGinKKYbBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UZK42AmS9bAwsB1T9T9MmYvm05g/H++u3VhAyg77S0=;
 b=T81i+kpijEfRbrZaJ5LTJD9ZGi5ztZeq+Ku3jkIlWsD5HqpMaWqtpP/asv3ZG9xbVvDetM7z5a81tdobLn3J40QJoPfHtINxZW31I7WvLlK2+oMa45ITuBqsI0+dcMKLMlqbB6yfMm+l9YRfT8WD5Q+cW1GGEBqAJzE8u0umyxFPx7hK+Q/L4MgbgzF8EZuX5zFA2YjNlygxlJzqDO7OeaNJOMHN9xcGik0AcQeCQ66norLUGhz0I7qIkZJMlFiELYjcpGIcoJ5HsZhirL2XjnT/wYGbZI1gj4kBkkrK/T2GJFd/LVXtHBjMKQE3IpFPEhlpfwXScq2S8QIyGterWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=avaya.com; dmarc=pass action=none header.from=avaya.com;
 dkim=pass header.d=avaya.com; arc=none
Received: from BY5PR15MB4787.namprd15.prod.outlook.com (2603:10b6:a03:1f5::18)
 by IA1PR15MB6007.namprd15.prod.outlook.com (2603:10b6:208:454::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.22; Tue, 30 Jan
 2024 15:38:53 +0000
Received: from BY5PR15MB4787.namprd15.prod.outlook.com
 ([fe80::ec69:a56c:29fc:7470]) by BY5PR15MB4787.namprd15.prod.outlook.com
 ([fe80::ec69:a56c:29fc:7470%6]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 15:38:53 +0000
From: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>
To: Johannes Berg <johannes@sipsolutions.net>,
        "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Subject: RE: [External]Re: [PATCH] wireless-regdb: Correct format of AU
 definitions for genregdb.awk
Thread-Topic: [External]Re: [PATCH] wireless-regdb: Correct format of AU
 definitions for genregdb.awk
Thread-Index: AQHaTaEeb/ORQD3AyUmaGXV5wGw1g7DnCQoAgAABFACAC366sA==
Date: Tue, 30 Jan 2024 15:38:53 +0000
Message-ID: <BY5PR15MB4787BC7FF959CF6A040235E3B77D2@BY5PR15MB4787.namprd15.prod.outlook.com>
References: <20240112040217.24356-1-me@ndoo.sg>
	 <BY5PR15MB478732869CAB0F4914C1E34FB7742@BY5PR15MB4787.namprd15.prod.outlook.com>
	 <e5aefc295fbb78bc464be939e50a1b47ca6b2cb4.camel@sipsolutions.net>
 <daa219cf533d7ccf09bd8991ac174086b908a860.camel@sipsolutions.net>
In-Reply-To: <daa219cf533d7ccf09bd8991ac174086b908a860.camel@sipsolutions.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR15MB4787:EE_|IA1PR15MB6007:EE_
x-ms-office365-filtering-correlation-id: b8351c24-08cd-4954-ba8d-08dc21a99039
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DU9ZiV8LpZf2zH41Ip/mgl4WX1v2DAME1dtcTxaJ72c/reLBQYGLfs7yQncb45nqZN5T0w1SmPhdwwm5EmcAEij5IiI/jRQbgoDdrNXVRAobSuC97Ecjt3OIpkB4zKDc/jpLeFrQy3qThEJLpXpfWUo6C4PM3qj1er6s7ujTvIlq/RmL72/LRSJ+YAv39F2kM7qWh9LkXYCqGfSPtt6TQZ/SEeSwluYkKtyBQ11dyI1+vJ4d1PFKTwQ8Yl8tLkMFWdPdM9RhQdbHftsmmsCunkBCsd543UkhyE3FzQyGoBQwwhzOE3A+1N3gJvSn8xAjlRKF11F9homTT33REZZgLnHAIGsTLFhTHMq6LX176Vmbbb89/mo2kKPjbN4yIRRkwFnIE9N/nstnxpmFDiaNhzTrVcSIbTuOZCyBrhobQyYi4ciNQ39owXXbmht2SYzfBYKlyJApFo6KLO0q5G3zKCnYK1voGU0Oz0HPe/VkzHzX748CDIIwAG+e7W0rqLn+qT3wyOBNi/Hw6X4PksmNDwpdOy9hFWXDe0jYB981+KL8ZAgQumM4LBdpEnIZW301ulG782+qo06w47WzsBuO8e5/yOFew0G4dizioJZ3KyBKX5Klc/0t85GQtzSnFFSNMuuIl6OuGYaAWDO8gw+Dog==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB4787.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(396003)(136003)(376002)(366004)(230922051799003)(230173577357003)(230273577357003)(64100799003)(1800799012)(451199024)(186009)(38070700009)(66899024)(4744005)(2906002)(41300700001)(9686003)(26005)(316002)(53546011)(71200400001)(83380400001)(6506007)(7696005)(55236004)(55016003)(66476007)(66446008)(66946007)(76116006)(110136005)(86362001)(64756008)(66556008)(478600001)(38100700002)(122000001)(8936002)(52536014)(8676002)(33656002)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VG8yZWk0K3VSQk96ZTBWMUVnckF1MWttYzY4VHlUN1dzaUpNN1ZuUitWc0pw?=
 =?utf-8?B?NVQza0piS2NKcU5FeEtvbyt4ZTIzNGQ0V2hxSEdESmp0THBZMUZNTk1QcGZm?=
 =?utf-8?B?VGZnVWZZcXFNK1RTaEpxWW5FY1VvKzFrRkpoUlRaMjRid0lwR0hvRVVUSHUv?=
 =?utf-8?B?aWVZM2RSZmkzbGlscjN3eGcvYXI1RWtTeVlJVGV3QWczTDlUOEQvQ1ZEMzB0?=
 =?utf-8?B?VTdMc3p1TWQ5UnJTbUpSY1hQV1VISzczQjhOVkhsdlZrSnlrVTVjMUZnQUp3?=
 =?utf-8?B?Y1Byd0tPeUE2YjVCUUVXbGhUa0FBU0VEMlpuUlFxRmhKZTRmZ1JnTjg5c1Qw?=
 =?utf-8?B?a0plV0N3Wmx3aFdsV1Q0Y05RN2pmMlI5N1lEMjZBNFBTYW01VFNRYkhnT0VI?=
 =?utf-8?B?dnRhOERRWCtTdmNlc2lsekY1WnlhdXVGRmVDOGpueHFpM2l6bVpQUnArK1pM?=
 =?utf-8?B?VTQ1VkQzR2RRNXg1OG1ZOTdYM2hiMDI4V285K0pKVXhRUWY4L1RMRWkwVHFQ?=
 =?utf-8?B?eURDd2diRGhPNWcyM1l5U21qb0p2ZmVuNWQ4REhuNE4yVVAyenlrY3lCcWUw?=
 =?utf-8?B?Q2VSZEIzaThBZnNVVzZ6STNPZU5CdFZKLzA5OFk2NzNCc0lPQW9Zb0JZektH?=
 =?utf-8?B?VkYvTlRnTFJMOGVzSzRRUVJkNmZ1c0Y0ZENOUUQvajVHU1NmZEtSeEpPM3JI?=
 =?utf-8?B?S2JYUFhtME9GazY2S1ZTVW00djlpZUQzZzBDT1RjQ2R1MnJaRTNyN3pOY1hM?=
 =?utf-8?B?VW40NHFJYVg1M2d6ZFhqR2Y1S2paYjQwQ3QrRzJNNU9PVDBZallrVFRDOVJk?=
 =?utf-8?B?YWdkTys5cmhOTkovZHJyZmlaMHA4QWxyWFhpUlVqUE55dWJ2aEpDYjJaR21Q?=
 =?utf-8?B?N2w2MVRnOWYybXM0WUxoWUNhK2FWOWtSZ2pLcThQU3A1RlJQRVBsTUlTU1hP?=
 =?utf-8?B?aHNJcHJJQnJNNVUwTXhaUy9YYU9qMEJoVE92WkU2dTJZNmhFSGV0QWZQMngy?=
 =?utf-8?B?OUIycW1TbzIvS0dnYm5KdG9DNjl3aCtDVE9ra054VG9NVnBOQ0dGZFBkY3BM?=
 =?utf-8?B?UFBnRWhtWmNtTGZqQTI0c2RGNFEyZldjVGQ4SUJGQVhLdExvYlhLOG5ybDNt?=
 =?utf-8?B?TkhTVERCSmdWU01KWkQwMVBYUzlPckpyZFZlWTJ3TDdIRU9jQWZhVitiTkll?=
 =?utf-8?B?Myt2S29UWjA0T2MwNDNlMzVDQ1p2akhDWTJKamc4WWVkbnN5UmVxMDhPTVBT?=
 =?utf-8?B?bURYNDc5TE0yTnkxSHl4cmRtaVIrUzEwR0lIQk52VjBtLzRMTkVaLzFjbDJG?=
 =?utf-8?B?aWlVTjZUdXYyQVVBUzNwTUNYR3l0T1R1QTV1WWtIbkwyTkhFeTJ0dm9nUFZ2?=
 =?utf-8?B?d1JRSFhKcmZYQUcvbHY3WVFJMExrT25ZOXo4ZlRaU2RIa2cyQ0Y4NEFhYVlD?=
 =?utf-8?B?UWlMV3ZhM0ppdHVWTHU0eTNFcUxORWRBNnhvRW5EN2JMVGs3eTJVOGhVWXZZ?=
 =?utf-8?B?WGJySnJKNkpib1JydXIyQ0FpdVRsNjNUQ2dZOTMySGthRVRZbEwxNFlxbVo0?=
 =?utf-8?B?bXJXcmJ3MjN2TzlqRUN2TkQ4ZGZlSE9TKzIrYzJyc09Ta1JHRE10RkZvN3JI?=
 =?utf-8?B?WGlRQ1IrWkx6OElyUmhlMEpjemhtMzJFcStFbjhyVk1FdG92cjRER1JUUkFa?=
 =?utf-8?B?OW55RncrSmMyS2hRUkhLSGFIRDQyUUdqOUFoNUlXQ2JmWnUxUEx3MkZhVWxQ?=
 =?utf-8?B?amYrTXhIazNubC9QMG5yYkJ2S1BMVXlPMmFlbytnTHhQTkN5T24xSDNMbjVX?=
 =?utf-8?B?c0pMeWxqUmZiUzlDN1VIclFJdWd3ZXFUMmJXMEpWaHhmVnFBbGVuNzhuV1NZ?=
 =?utf-8?B?MS9nWVJYTldoMmF3dEhGVDNJVXRNclpITlY1UFZGVzF0OHp3TW5wVnM1cHZh?=
 =?utf-8?B?WXd3L3JRVmxpRllZMm1SR3daN0hXeWM1YVNySjRIZm1pMzRTZGoyNFdmSmRq?=
 =?utf-8?B?ekZGYlJVcXJtb2dxcUhrbnBhSVN3QUNqUjFybE5iaHVJQVB6cGJpeStFZzUv?=
 =?utf-8?B?VWM5eDRKNmRtdTIyVWVoV0o4dXdPVkVzN3pBZnFtUjMvTW14MnJweitoM2Na?=
 =?utf-8?Q?zVAK8eL2QMJAoJMQI1Ya20ekT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: nYP63qZkv6MMYv2cjrl1ttfJ1dHhw25jLHQODI0iYLDVBdZEJ8YlK813EhW/p8nz+OYuTlz2nittJC+9apS77Ul+qIK+VjCEuP5WHe/sZQ/gexCA4JIDhPp5UMUnczGK640Ty/LLikPY4cjmFiK97+tGMXcFih5Q7vrWKz3I8OQbG4IQcaBKd4jzjHMK1a7Or5NwjVvzvHQlAgkqTpn+bcUrNJyqDRug+RNb7vc/EFzFM18CyNOpBY9I30ZgNIx6guxS/UmHKl9z1plOTmOTj8uF/i8veRCPf8ea7F3zaagEzu1/REqVP2x6AAvWjI/RS/D1+aHKImIsL1jtKfBXxtv2QLzkWTb6YyrMGZfiRLZMnhwnL3X7SNa9Ew1tE8ZALHmrMYwMvnr7dgDJIzKvA37FjB7OFmG5QVyTvOO+YkBWdaPeP1Y7dg0JFQEpNb2rlh6/Sy+453LAfwaE6bHJqS9YOdcabZGKd1Zf/AjthptJnB3dyNvonVQQf+tKN9+3tyotyHlr+X8Oqv3PJCNd4mTMx3CTRLi+uqTBMq/3G9dhUjwwG9PJtswwO31eoZnbLhG8r+XOlJayrVxY0vxk1qcbFyOl819i3R0aIdCfp5ZB0LQw36+g5+kj0bX0z+59G2RfJ++4blNNUaB+FCw1cg==
X-OriginatorOrg: avaya.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB4787.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8351c24-08cd-4954-ba8d-08dc21a99039
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 15:38:53.2116
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04a2636c-326d-48ff-93f8-709875bd3aa9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5t375CUA68aAFyiFrzjqQTOB7orwIerSNmU77QKqb6dMVIXZ6+NrAIYGw/LJC2IrH0lm+GEYhpFeFFi5Ed8Ofg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR15MB6007
X-Proofpoint-GUID: PcnlUVK1LosxfeQhj821WzGdXBZBxPjp
X-Proofpoint-ORIG-GUID: PcnlUVK1LosxfeQhj821WzGdXBZBxPjp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_073859_679831_1C18ABE2 
X-CRM114-Status: GOOD (  14.53  )
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

DQpZb3VyIHBvaW50IGlzIHdlbGwgdGFrZW4uICBJIEFNIGRlYWxpbmcgd2l0aCBhIGxlZ2FjeSBl
bWJlZGRlZCBwcm9kdWN0IHRoYXQgaXMgcHJlLTQuMTUuICBJIGFncmVlIHdpdGggeW91cg0KcG9z
aXRpb24gYW5kIHdpbGwgZ2V0IG15IGxpbnV4IHN1cHBvcnQgdGVhbSB0byBsb29rIGludG8gcGF0
Y2hpbmcgdGhlIGdlbmVyYXRvci4NCg0KVGhhbmtzLA0KICAgTGF3cmVuY2UNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEpvaGFubmVzIEJlcmcgPGpvaGFubmVzQHNpcHNvbHV0
aW9ucy5uZXQ+IA0KU2VudDogVHVlc2RheSwgSmFudWFyeSAyMywgMjAyNCAzOjA0IEFNDQpUbzog
VHVjaywgTGF3cmVuY2UgSiBDIChMYXdyZW5jZSkgPGxqY3R1Y2tAYXZheWEuY29tPjsgd2lyZWxl
c3MtcmVnZGJAbGlzdHMuaW5mcmFkZWFkLm9yZw0KU3ViamVjdDogW0V4dGVybmFsXVJlOiBbUEFU
Q0hdIHdpcmVsZXNzLXJlZ2RiOiBDb3JyZWN0IGZvcm1hdCBvZiBBVSBkZWZpbml0aW9ucyBmb3Ig
Z2VucmVnZGIuYXdrDQoNCltFeHRlcm5hbCBTZW5kZXJdDQoNCk9uIFR1ZSwgMjAyNC0wMS0yMyBh
dCAwODo1OSArMDEwMCwgSm9oYW5uZXMgQmVyZyB3cm90ZToNCj4gSGksDQo+DQo+ID4gaW4gdGhl
IGdlbnJlZ2RiLmF3ayBjb2RlIGdlbmVyYXRvci4NCj4NCj4gQml0IGNvbmZ1c2VkLCB3aGVyZSBp
cyB0aGF0IGdlbmVyYXRvcj8gQW5kIHdoeSBub3QganVzdCBmaXggdGhlIGlzc3VlIA0KPiB0aGVy
ZT8NCg0KT2gsIHlvdSdyZSB0aGlua2luZyBvZiB0aGUgKmFuY2llbnQqIGtlcm5lbCB0aGluZz8g
VGhhdCBnb3QgcmVtb3ZlZCBpbiBrZXJuZWwgNC4xNSwgYW5kIGV2ZW4gdGhlIG9sZCA0LjE0IGxv
bmd0ZXJtIGlzIG5vdyBFT0wuLi4NCg0KSSdkIHNheSB3ZSBkb24ndCByZWFsbHkgbmVlZCB0byBz
dXBwb3J0IHRoYXQgdXBzdHJlYW0gdGhpcyBtYW55IHllYXJzIGxhdGVyLg0KDQpqb2hhbm5lcw0K

