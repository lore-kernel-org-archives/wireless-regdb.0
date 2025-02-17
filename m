Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD12C021A9
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 01:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:Cc:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EqjaxkSMH6a14BIcts9S+GvzQ/owur+zJ/UQJTqvW0M=; b=TCRxbN8M/BwJJ5XN4PeYmEE9IB
	MhpWfWreJokuEr1lRWmOXssNsj+ECVsrW7WwKombm03BMWvFi8h0Dc2ltPfdw4D8NsNelXwymCaOL
	NvDHjLqFqM9yxtgGVc5UAaWfyssUz6CvZeysgrvAY6WU9z3E2dSB21mRKQBhT5hHnydy+wb3goEj8
	XA36xkPHA0BuWdCo7Zl3WjL2oDtcA/HYaMz7xFn4gq3/Pxb7R7v9cDUGm4zetkj81VQyCuhAvOP9K
	2RPTiyv+01VLDhpdCZtWGsukIlLz2NqmRlxgftXJBmk75qMdkzK8zV8xpmWVSU0N++K0iK2v53Wis
	SKxkzjEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkCoP-00000006TSj-2TaG;
	Tue, 18 Feb 2025 01:54:14 +0000
Received: from mobintestserver.ir ([138.199.196.29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk7fF-00000005syH-16h2
	for wireless-regdb@lists.infradead.org;
	Mon, 17 Feb 2025 20:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=dkim; bh=6TFSCyZPa9K3TSA
	tbvQ0bWAA1mUMGmPtjART2Y+XAk0=; h=subject:from:cc:to:date;
	d=mobintestserver.ir; b=X9q3tq6+EhfufyB7cyOR1fIjnsO1oULcZtREr64ojG5Npw
	3Q8oMQnliaS04tzOhwnrejGyqUqE8gInXASqxMUZ5I87UrghwUilapJlXq0S58atmymlXq
	tEFCMahedyfVmZIDJ8P6B9xaTjdY0x1gQ22A2HT+GUU9MoVbZC3IJ8NcfH6HnIn7nTA1A6
	2EfJ4I9tU3mPjbl1tvleMFEeVyVhnRLQS7NUuTN+IJo5qD8y6r4uA2bWWRI7YAChtpwdnS
	9EKxXDRqiHzq5RiiIkUNOeFtpafFHWjEGR+bJsSL6qsc7YKzR+ZnbFHIRQdH2c2Ol1a0AX
	VPaiB2StwBBclxIw==
Received: by mobintestserver.ir (OpenSMTPD) with ESMTPSA id b183fba8 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 17 Feb 2025 20:24:20 +0000 (UTC)
Message-ID: <c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir>
Date: Mon, 17 Feb 2025 23:54:14 +0330
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
From: Mobin Aydinfar <mobin@mobintestserver.ir>
Subject: wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and
 5Ghz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_122425_608870_EB086066 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 17 Feb 2025 17:54:12 -0800
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

Hi. I checked the wireless-regdb for Iran Wi-Fi frequencies and It 
doesn't have any source. I checked the local regulatory docs about WAS 
and looks like the regdb doesn't comply to it.

The official link is 
https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899 
which is inaccessible from outside of Iran.

A mirror version is hosted by me: 
https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
(The relevant table is in Page 8, The document is in Persian).

A translated version of mentioned table is here: 
https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods

I'm looking to update the regdb but I don't know much about Wi-Fi 
frequencies, So I sent this message as a call for help.

Best Regards

