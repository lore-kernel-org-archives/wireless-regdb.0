Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=1b1d2HneTnso5lf4iHmPGJPBnjtNEOJ1ncdvZihqgOM=;
 b=KvV
 gh4EQSSHRyKDeXdOB7pgEpPvAE5/H31R1WudoiSOdfQTCWtLy/ZRmaZALy2D1QJjTk8LabAMqfqBI
 FrxMDbcqnTfoLdWDLMdxOCY4eT9WidutpAZYx7PSxMQdAfLVutUxaKFwkFIpUsfd3uUwTAkxCZl2Z
 AnC5P6fGQ2TTaac0Yq7h91FNrdJcVRbTyCxWCSSMfnIsBpkEbUIZbG3+/sLdWGnh4MT15cK6U9fb/
 FjjAXAia7cUEojKcoO2G4pTA68c1rjqdYeTJzuqtbnMkzj4har8wsUidbVzJYB8R56ojlxWQ/o5Ne
 Vr4wIQoNIW600yHx2X3vfsLzEfaukaA==;
Received: from mail-ot0-x231.google.com ([2607:f8b0:4003:c0f::231])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUqgj-0006zo-8T
 for wireless-regdb@lists.infradead.org; Fri, 29 Dec 2017 09:10:51 +0000
Received: by mail-ot0-x231.google.com with SMTP id a42so15005198otj.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 29 Dec 2017 01:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to;
 bh=nqZ8WKSvJSJhbEMVsKJUdMginhZLuby5GgEs0Y1PQO8=;
 b=qcYgfmGkjCFCQNdADgB0rr0zgY1YQHWdQ6hSlO+mfwbm3gmihcuC7qSWXOz2YiZaDX
 1Di460F3qLADiJ5nm32BsSyUvidMKMOCPOz9yj9Y9yBKWcEX5P1jA/nh57aBH56BR0i1
 ZQvgKlcYpalmY2A3q6VVkDqVqCpoaCHfKjjeBWyIvKaC3nUg3QMxpeJ+7ublaZxRy1NZ
 9iMeUgrhUHMDydUGCPpRGe5occ51TOoIMvpV79OrGFerptdG4dPLtceEfdXgz0k0+Gca
 nlcHJEj2zhQUVJwZq/Rj++Oh3bYeSWfz1iBUJofYgX3HDP55gKDye97Npwt9gP9MGKvd gmzA==
MIME-Version: 1.0
From: Faisal Abu Rayhan <faisal.wiryasantika@gmail.com>
Date: Fri, 29 Dec 2017 12:10:36 +0300
Message-ID: <CADGYwvBNy4T4m5+i1km4cUPJd69NfxswqkHtUD=cOt3JrNXxgA@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: add Short Range Devices (SRD) for
 Qatar
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

Hello,


Add Short Range Devices (SRD) for Qatar (QA).


Current Configuration:

country QA: DFS-JP

                (2402 - 2482 @ 40), (20)

                (5735 - 5835 @ 80), (30)


Revised Configuration:

country QA: DFS-JP

                (2402 - 2482 @ 40), (20)

               (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW

                (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW

                (5470 - 5725 @ 160), (500 mW), DFS

                (5735 - 5835 @ 80), (30)


Reference:

http://www.motc.gov.qa/sites/default/files/qatar_national_frequency_allocation_table_qnfat_0.pdf
- page 64.




Best regards,
Faisal Wiryasantika

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

