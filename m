Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=CIDtMyLkp4WE+2jaorDC+Q+en5xra8S0sHe7BZPuBx4=;
 b=Su4EiAydNcN+9n
 4rVRmv22uQCVw+VWPvyrhPffMtwFRPeSRSHOfeuypDZStARdBfZ6NYgzTgbNW6/iZnw28gCMrDnRC
 1a11lPFarr2M+X+Kyitsp4hlgo4s4tyljJUhmHVutxyPFyJ+UyMYv1JtfhF2voJ5jy5dlJwt3T8Mg
 OLxvc/HDQSle59AS5yvTPHYoJYeYDV2PNVrSCpxzSkGy80vqX7g3hRakt5LSYh/F6BgMpHd0B8EQZ
 TOtQ1Rl1HxDtyi2AJJFTzMjxENbXG6nKWHxkZXDBmPQJ2lttwjgEdgCg3vsD1hgTAw3tGZtwu3Cab
 JqrKtorMeMucIhBstLEw==;
Received: from mail-db3eur04on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::604]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJmdi-0005Yb-Ky
 for wireless-regdb@lists.infradead.org; Thu, 25 Apr 2019 22:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlxX1npCltul2djtNg6qLFOiGx6SH1E0ZPpes2xHWdo=;
 b=XvL92DqIbPBps3uU+uqkBRlErwva5tPlMfba/Qts9GcpTT6bs9xcjuLOuSvZMgtKe+cQBOHx2qhW+n/pbgqXKciVV5ULp+9wG2reJpfEl8o4gaH0dOPqB7gg0hznreLxEOHcknnUk/3yp6XVKDgX4Y627qog2DBOWY2XcMrooAU=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Thu, 25 Apr 2019 22:14:40 +0000
Message-ID: <6438cda3-169c-be2a-26f7-2ab0780040ea@bowerswilkins.com>
References: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190408124159.GC15126@ubuntu-xps13>
 <af4d49d9-fc9e-ebe3-20ab-edef6c12a2eb@bowerswilkins.com>
 <CAPuHQ=Grm6fEdP95jfj4zEXCr8be0PMOb9iv3oeYUt0y2Oeshw@mail.gmail.com>
 <b7af6387-a8bf-dfa0-b347-e58133d7298d@bowerswilkins.com>
 <CAPuHQ=EMmq7M7HHAO8iMrOgsgn9dAg=siUWXQMc0sA_8t_kBAg@mail.gmail.com>
In-Reply-To: <CAPuHQ=EMmq7M7HHAO8iMrOgsgn9dAg=siUWXQMc0sA_8t_kBAg@mail.gmail.com>
Content-Language: en-US
Content-ID: <BDA8A757238A2D4C8400D269F7605CB3@eurprd04.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for South Korea
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
To: "b.K.il.h.u+tigbuh@gmail.com" <b.K.il.h.u+tigbuh@gmail.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>
List-ID: <wireless-regdb@lists.infradead.org>



On 04/25/2019 01:37 PM, b.K.il.h.u+tigbuh@gmail.com wrote:
> Note that a link to the 2016-124 document is specified as reference in
> the above code (conversion also attached), not to 2016-125. Should we
> update the link? Although some of the numbers seem to match, the
> documents differ in structure and -125 seems to handle more bands.
I don't know where you downloaded 2016-124, but there is no link to 
2016-124 one RAA website. 
https://www.rra.go.kr/ko/reference/lawList_view.do?lw_seq=55&lw_type=3&searchCon=&lw_select=ALL&lw_model=&searchTxt=
Even though 2016-124 exist, we should refer 2016-125 since it's later 
version than -124.

Thanks,
Peter
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

