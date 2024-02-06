Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C2FAC48297
	for <wireless-regdb@archiver.kernel.org>; Tue,  6 Feb 2024 11:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XPnBkGvCsCJC8yqoqhPyYvVOlSawmi40m3VKxw8PS3s=; b=JGJvnDtSReRUUycbfIMCNrFUgz
	qFrIoz9gijz/41f/bGkKmecxzWTgFNlqHgdf9M4HfELxIxzDsqGO0V3cKEn9FT7NvV4jAbnfdIgzO
	ChkCu6AHIK5hfI3+aQ6UPNx/FguKiuwGDJ8dGg1H6TX7USPwC6LFIwkMkWsStnAUswtv8QArs+LOF
	552IYi8b54kAcYcHa0XVhVp+JesJks1iGk/63vNh32NY2R4dlXSrFhZ0YS+tuLmxe0zU1//uz10G2
	ieJaNXmfetTypIEKzpcRY+Nj+1SfdvpWgTLXndVqwMDPBvW3Iiu5YDaSgtb88JheW0slF1Tl+yx8L
	KeVPrHNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJhs-00000007LgT-1e2h;
	Tue, 06 Feb 2024 11:33:40 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJZn-00000007JHB-07Jx
	for wireless-regdb@lists.infradead.org;
	Tue, 06 Feb 2024 11:25:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33b13332ca7so3376711f8f.2
        for <wireless-regdb@lists.infradead.org>; Tue, 06 Feb 2024 03:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707218716; x=1707823516; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XPnBkGvCsCJC8yqoqhPyYvVOlSawmi40m3VKxw8PS3s=;
        b=P1HTvTweqrulNBk87M9CjSD18Jmd2wGfI2NOu52RfTyXD6zx7GTv9uV3m1umfdOnS1
         /YHIz/gu1a3df56UYj5Fih/99efQEWVjwp+ZFVJnQ+Px+2WOCfY44QGPhQAgJYbBlJkr
         2KHEK9eewVvVYLzQSW/nqQlla3NwGHpRtHVVJzCFOAda8uknYuWLLGbXBMKE7C2YILW7
         6U0Qs5ffW6iQb/vad5B/qtyqzunNFCrc2VYJaTVhebx920IvCrf69wpKVHl/EdGddLHO
         RoQ8ubXeJEMlmmCAYXGD2aJ6bQO0z4igCQFLy0xTLgFKwYCJY6dVPE9SoFKhq2PZlD0M
         9jYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707218716; x=1707823516;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XPnBkGvCsCJC8yqoqhPyYvVOlSawmi40m3VKxw8PS3s=;
        b=f3LgVbgjpILPiW37k2bHt3TDYOTZ1kJ4CN9bseZd7+EmweME5Ghzo33CC8kOG2p9P5
         yaH9+C7XQAQH3MykjOZX5S69HK9pePMQLMqytRbin7o4zKkJqmfa68lnf1JBKsFHSpSk
         N/liTwPa5s8CQy4TVhXqoxmnP8/X33rK2E1tX8TTXb4AnimQliZhKkKA3DWqqtHscDME
         xa+eRDJqxI92lLlH3UwbILwVC3yM6RAagTyvBQTm619nCEw9KhhnlweyIwrPFyQvMRAs
         oOVeCFoyTbqbLGWR6soR1wO+MVQ8oMsTkNGTg1b307L8jHGPiLFP6ZHanUyoA4JFqCZm
         LpRA==
X-Gm-Message-State: AOJu0YwtaX5MP+5QP1DUM2+ytSWhId/zDNdOmCSM/Roe/9/ijxHOBMBO
	qqL7NQr/dx3EPES1JGDRS9JTCNi7sjkL4q1nQVkxkfcKi0AM775P
X-Google-Smtp-Source: AGHT+IGIFjcwhNK5IblvTvhlzCTLbtEy3VCyCK2uI5SipzG1fkpQbBLRGs0IdtntYkQbIOYswvKB6Q==
X-Received: by 2002:adf:ee43:0:b0:33a:fcb1:e1d with SMTP id w3-20020adfee43000000b0033afcb10e1dmr1116697wro.25.1707218715885;
        Tue, 06 Feb 2024 03:25:15 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCV3iBCiBxuY9HCjBAVr0zhlnul6kvz7xRhh0zHD11YYVHlPMejYkCoE+oiMiIwDTxqV1HWdAv/mE1m4uhf/P875dNZbntZWZKY+PBVe9WyxyKHAHVi7VxQBNJEvnwk5stdSweocqhg=
Received: from nz.home (host86-152-202-149.range86-152.btcentralplus.com. [86.152.202.149])
        by smtp.gmail.com with ESMTPSA id l12-20020a5d4bcc000000b0033905a60689sm1875015wrt.45.2024.02.06.03.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 03:25:15 -0800 (PST)
Received: by nz.home (Postfix, from userid 1000)
	id D4DBA15F143E09; Tue,  6 Feb 2024 11:25:14 +0000 (GMT)
Date: Tue, 6 Feb 2024 11:25:14 +0000
From: Sergei Trofimovich <slyich@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>,
	Seth Forshee <sforshee@kernel.org>
Subject: wireless-regdb key change broke crda tests after 37dcea0e6e5
Message-ID: <ZcIXGjzrZrXPCBcp@nz.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_032519_110186_DD3E9C44 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 06 Feb 2024 03:33:38 -0800
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

Hi `crda` and `wireless-regdb` maintainers!

`nixpkgs` attempted to update to latest `wireless-regdb-2024.01.23` from
`2024.01.23` and got `crda` verification failures at
https://github.com/NixOS/nixpkgs/pull/286012:

    crda> make verify
    crda>   CHK  ...-wireless-regdb-2024.01.23/lib/crda/regulatory.bin
    crda> Database signature verification failed.
    crda> Invalid or empty regulatory file, note: a binary regulatory file should be used.
    crda> make: *** [Makefile:161: verify] Error 234

Bisect says the suspect is key change at done by https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/commit/?id=37dcea0e6e5effb4228fe385e906edba3cbee389

"wireless-regdb: Update keys and maintainer information".

Both `git` `master` version of `crda` and `wireless-regdb` still fail
`crda`'s `make verify`.

Should `crda` key the key update as well?

Thanks!

-- 

  Sergei

