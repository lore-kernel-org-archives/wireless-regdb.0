Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A3AC4707C
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 03:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kDTe6dq4ZbdCI1wHYvjq/AoF72v7AhWzCodCD9/4a7k=; b=rpSHF0Z7/4APG65lWeVj2/Rvze
	GFHa5bYioImJemvh7m3TG8HjYudwFTl6JU3pXGG4ZoooqAaA7sWS3IKupZRz4sJN3Tc/WtcgKEpJY
	OvrnSmW0LegCRoQWe12SIbGfktG86/g6mXE4EJFoVIiOBw6u4bByN6xKluSZXgY2ER1fMMDLAf/oD
	Pv0d+utWTm9Vy+xaCDKFouwq8+gH8ExmUfZPatG0WnXdgQi5u3SoAD5Z4YxDKhrcWXE3NzODequfV
	7KX70L1rLYnNxG3zAgsKLADptJLiDXOyWKXBInO0F0e4AKt9X6FJcb3u6HJW+xDA3GBpDKgllZK2b
	bPGNSgqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8S9-001mkk-1e;
	Fri, 12 Jan 2024 03:43:29 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8S6-001mkL-2i
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 03:43:28 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d3e6c86868so50934305ad.1
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 19:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1705031004; x=1705635804; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kDTe6dq4ZbdCI1wHYvjq/AoF72v7AhWzCodCD9/4a7k=;
        b=ea4boTH3YGLPKzMpu9bHSboqqKNxUHM2VItYcuh5y/BHj73fdIT+21JaHVTg+FBywB
         9HOj0C5VIZRk9X4Qip26NmuHXris8f3t8JU+jtRMtbN9ews2oWeqJRyXJ+qoyL9ufmbj
         XRGB6SoRwe1cs/WBtsD3JW73g4kSDRf3RNqCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705031004; x=1705635804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDTe6dq4ZbdCI1wHYvjq/AoF72v7AhWzCodCD9/4a7k=;
        b=m2UcwpfN6l5SW2tva+fu0XNJxGF8m4L4mMkJwIFGinbpa4goUVxOwk01nmCTSeUvdx
         eYcRwE5VssuBShhr8BdelhXa8KV0t+mJbU/mfYtp/+cFPm2D9++pqAw/vch0AHTCkl6A
         LTvxluc3lSoue47Qjxph4iOZfP1Xl5rlm8PciKLZr3VVUAe2hydnkpInvdzAZ/gDbjtX
         3vPXjxxNLnInZqOFNolXIsJkqhCdXtwRQdK6oCWglwF2uGWK9QJLbHul0Bm9AeVHcraw
         cLA4vGgVvUK2/VIOqnbkN2s3zajBr5XuuZ+CkGhuIRb2Fl6UyLLNr3cz0a1vz4mGd2r6
         xiRQ==
X-Gm-Message-State: AOJu0YwQvn7eTYEYFTu13dRDBS3q4IXDWPyeFqH2pLgzWqtUchdrBh3/
	0xWmsG5IHkdgMNxpGK7e3PsT/sGxiKIdRJZVuQj1Y11Qets/
X-Google-Smtp-Source: AGHT+IHD12pOw4meQQLHOwjvuDUfGikCy2nDIa/z4zY2svMy2hx/99tvMbCPC14k+WetDUB2OqihuQ==
X-Received: by 2002:a17:902:aa44:b0:1d4:c445:c705 with SMTP id c4-20020a170902aa4400b001d4c445c705mr367513plr.26.1705031003810;
        Thu, 11 Jan 2024 19:43:23 -0800 (PST)
Received: from p14s2i.. ([2401:7400:c808:b52:9565:61c2:9ce0:d352])
        by smtp.gmail.com with ESMTPSA id i2-20020a170902c94200b001cca8a01e68sm1943145pla.278.2024.01.11.19.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 19:43:23 -0800 (PST)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: 
Date: Fri, 12 Jan 2024 11:40:43 +0800
Message-ID: <20240112034311.23677-2-me@ndoo.sg>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_194326_878576_C7D88CAA 
X-CRM114-Status: UNSURE (   3.20  )
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
  - In comments relating to TPC, provide absolute mW values alongside relative dBm increase
  - Extend (5470 - 5725 @ 160) band to adjacent 5730 MHz to enable Ch 144 similar to US & TW regdomain as opposed to AUTO-BW in patch v1


