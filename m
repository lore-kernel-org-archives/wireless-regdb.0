Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A595C41513
	for <wireless-regdb@archiver.kernel.org>; Fri,  5 Jul 2024 06:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DQvaQaAQdlAP66w3G8RuUGqwHRBtrQaO1GdIa+ZsF+E=; b=xaF+eRJNwOcEXF6/rpoThhkv1a
	79IdIVw4IxeQORkFZoHFtJRZlRLz7XdwdW7tnxmvWr83O3fP0RRbo7H0VmyyZUbMob7L/GG+YWKoJ
	bnAf/T5vzev+/9qn2eE54LAtQIwFNNW7J8ERW0GKlINqUnGdm3hc+7li0NqeiYuqUCkdLUbGYU2FI
	SowzUTSGrN+GzbLMwwydGkB+AP/1Naw/Zk5D2lLDPPWSddYhmzFcE0gFpickIKpESRaezfJw8pXcR
	ZMvFhlfajPG3/YM6DwCPm1fBeuvqKIA9rVbOSvyE49+lB9+BhhXc/mrxYjFVqrGx+WgqKgBNithl9
	CLAkJSSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5e-0000000F0AL-2YLg;
	Fri, 05 Jul 2024 06:06:38 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5b-0000000F07n-21nw
	for wireless-regdb@lists.infradead.org;
	Fri, 05 Jul 2024 06:06:36 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1f65a3abd01so8676415ad.3
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jul 2024 23:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720159594; x=1720764394; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQvaQaAQdlAP66w3G8RuUGqwHRBtrQaO1GdIa+ZsF+E=;
        b=ekKNfeW4mFvFwiK413pbLRVwAH/6zKIikFTdSxyvy8gDCRJFO6KkFBgWj8ga+H4kIA
         25f8XI8BJPuOSKLFAqm4wSwKb51Cz9STN2KzRLwdPWXCl2ujg2daBxj96GtRTOAddyGz
         v5h5DlXT1PSgIMLw1ZwsHBI90AXobB89E6hCaLXqhkFc67Jpah0OadmEKKHciNQd0u7i
         Ma5G41mbCMQPi/3/g4hauFCwFj83jS9U/tUigg42iM4TNnk9tH0oxD65RChAqn0f48V4
         hmFkp2zSTyVeSn+zxu11d6PC/x1At2dnMZlSLECcQLkAAeIwA0a+/AX3SOSg1nghtPHE
         E42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720159594; x=1720764394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQvaQaAQdlAP66w3G8RuUGqwHRBtrQaO1GdIa+ZsF+E=;
        b=gT6sFu/iwWZg5xuKP4zEFgfkTQ7THJzY5P7/ayrMa2I8LqylFXc2gSdsNoLl/ntxzj
         5ovrvGyOHdup/zA9frVZ71c3H86v81dfsN2Qrkf/du/sWfuDKvLE36JbSAd7yqYwujlr
         2gYJcU9iue8ZlXdRxhH69tWEpkEQu29uSCXCWlLdEfTSdobM04O8o5NddX28iw0+cL1o
         7BWxDsQdLUD2VSlGNQReeZmn8lvuE1EJz39PRipyiLI/9+Wa4aQRikHCiOGehNyXOnOc
         VOq+H4UXKZZdQ/TWFHue2Sp4AUCs9WrZ+/RKpZoe42CXDh8yG6m6BFYHq95/C8SXFyII
         Ifhg==
X-Forwarded-Encrypted: i=1; AJvYcCXf1VNW6K9AdfrSNc3o5mBUInTXTdr1OWkuHH596+TCgiydUA/hZJ9iPi2hFfH0uAvinSb/+4DSofvit4mlLMLUIo2Q6j4XzUwPRBtkVf5T0mdE
X-Gm-Message-State: AOJu0Yz43ANoTufXrT8nau7hP/9kmFEecu4d6fjF6PwZ2bgvVzXhCcGP
	UomHOMQz5qyuDAWFobyEhvR26TlNfyXI50XvZ3OUmQjOmPCkQ0NofQdZxW/T
X-Google-Smtp-Source: AGHT+IEDRGyhhcp7focnaTZk7ODz5BDHXv+ZmNW95RwPnBioGRTnqivt7+OiZOh1sjlSUhWRk4dPhA==
X-Received: by 2002:a17:902:f791:b0:1fb:1497:c304 with SMTP id d9443c01a7336-1fb33c81731mr30403435ad.0.1720159594129;
        Thu, 04 Jul 2024 23:06:34 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fb4e7c31afsm4644645ad.2.2024.07.04.23.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 23:06:33 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 2/5] wireless-regdb: Update regulatory info for Peru (PE) on 6GHz
Date: Fri,  5 Jul 2024 14:06:10 +0800
Message-Id: <20240705060613.28909-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705060613.28909-1-pkshih@gmail.com>
References: <20240705060613.28909-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_230635_546795_19FB2754 
X-CRM114-Status: UNSURE (   8.03  )
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

From: Ping-Ke Shih <pkshih@realtek.com>

Ministerial Resolution -2021-MTC/01 decided

For the band 5925-7125 MHz, low power indoor case of use.
 - access point
   maximum EIRP: 30 dBm
   Limited power spectral density: 5 dBm / MHz
 - user devices
   maximum EIRP: 24 dBm
   Limited power spectral density: -1 dBm / MHz

[1] https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%20Ministerial%20nro%20373-2021-MTC/01.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 266ba2d48731..2e862b322f13 100644
--- a/db.txt
+++ b/db.txt
@@ -1443,12 +1443,15 @@ country PA: DFS-FCC
 	(5725 - 5850 @ 80), (36)
 	(57000 - 64000 @ 2160), (43)
 
+# Source:
+# https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%20Ministerial%20nro%20373-2021-MTC/01.pdf
 country PE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
 country PF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


