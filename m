Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345F4C4706C
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 03:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ng2OfZDJvEV+KTtUP/Iio6uQuCO0WLybP1MXx3qAmCA=; b=ex177y1RPkXTl9rYpiCFshi0Dm
	2553nJksPe1wYf2B6eR8Lu4Z2jut0zRk20qcCyhhfRTL7PBV9R5AlguTDFXQkpNpmMOiB5w6JwWLj
	bd5zpTF9UKwGAclv0+0oI1SuNyJYtajjPmgmdKUSswIndJlbvGojqscH1u/TqZCnrBka2EfE6mFVY
	1y3qlWyiAAxunTwBqCkdPrYejZvWVP5C3sU/TwEW61ZMyHykSYdEy3ZX4qDvb1vftXkREyNEd0lfP
	YjQNRL4V6fc0tzO4v8BluLx1ubShYkrOM7KGpVZg/+1iHe82VT6xXWvFBAeBse7YD3GlYaY1vA/Bi
	5X1ZxKAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8Jr-001le8-0B;
	Fri, 12 Jan 2024 03:34:55 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8Jo-001ldS-0w
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 03:34:53 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6db0c49e93eso3274167b3a.1
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 19:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1705030490; x=1705635290; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ng2OfZDJvEV+KTtUP/Iio6uQuCO0WLybP1MXx3qAmCA=;
        b=WGxZDV+LtUQnfQyCKBa9/viB3owmnsRIDI7XlPFF9FtKHfcoFtVUsLzOpN0BITjzXF
         qp/JLBT8mqZEQVCaqcKuhKY++qhKsMJx0p0YdYKhe8H3txjxqt4EEPiYF9EkO2VTlW9e
         xtwqzUttJmmexYfVlWG6Je8U7pqwf5u204i+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705030490; x=1705635290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ng2OfZDJvEV+KTtUP/Iio6uQuCO0WLybP1MXx3qAmCA=;
        b=ZU00GcmgEz4wHwb1/QvsafmlzTmhGIL+KLC0tNU1X9g9S5JW9WLdmFw/KVywXnGSZa
         tua7NlZjTQrBvi4wivnAWct9llJdIX5aQ+jhZZZRvsz9ybaj5z/CHMlq8yrnKeN/xcOM
         WAQPtjQjk29tiJMeqJIvaxNbytFnznHRgnN0OCpoOJrdDyW5/u/j8eZ9vHHqcfTOsy9y
         IIQFLWPo6lw0SGEIahpAvVmlJZCsjIzU+PNq/G+9P6af5xH/stJ2rvFX7C9kjl5rJbnN
         eagPDN82GV7bQFrHj+LWBGRv5Mm4ZoaWJbereE7pESTi7gm1d86Jue1NwRqXLALxYP1h
         /Zbg==
X-Gm-Message-State: AOJu0Yx9+bGQDV0Eph0rmnm9ex8eFv/+EndeSuH1fBm9QN2AeAnenfXf
	ZdMFZCaWRFPtU4Pj0a0apzEOphDZRlRTSeZvvp4DcVpo/mh8
X-Google-Smtp-Source: AGHT+IHFtcunXsNmNQWWgxts/QgkDGL+6kZo4yKuvCLxafR3Ah7Vm39mWCaRyRxxzY5YnWKDNJTCbw==
X-Received: by 2002:a05:6a00:a0e:b0:6db:3b3e:7460 with SMTP id p14-20020a056a000a0e00b006db3b3e7460mr468557pfh.4.1705030490339;
        Thu, 11 Jan 2024 19:34:50 -0800 (PST)
Received: from p14s2i.. ([2401:7400:c808:b52:9565:61c2:9ce0:d352])
        by smtp.gmail.com with ESMTPSA id 4-20020aa79204000000b006d999f4a3c0sm2062369pfo.152.2024.01.11.19.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 19:34:50 -0800 (PST)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Singapore (SG)
Date: Fri, 12 Jan 2024 11:28:29 +0800
Message-ID: <20240112033321.23052-2-me@ndoo.sg>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_193452_328683_6869ACE8 
X-CRM114-Status: UNSURE (   3.41  )
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

Changes since v1:
  - Update comment about raising Tx power upon TPC implementation to specify mW values
  - Extend (5470 - 5725 @ 160) band to adjacent 5730 MHz to enable Ch 144 similar to US & TW regdomain, instead of using AUTO-BW

