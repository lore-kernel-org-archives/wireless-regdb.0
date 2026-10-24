Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0813606A31A
	for <wireless-regdb@archiver.kernel.org>; Sat, 24 Oct 2026 06:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tdaGroBL;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=P1EtdSXV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Date:Message-ID:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Veg291ePBmQUKy4IbiBvxeGF8v2l/WBkp99aovd9Zmo=; b=tdaGroBLWaBZylnsrCUZMWqkoL
	9SHR60EXPgUAk1ahEL57p61KylrbYTuLAkPn6pLM4+Oj36inpyy0mHrP8CtikPNwPnuLZRLAB3ax6
	WX3C1X/pMb3MtffhMSyWHf5rzCauneOi9fH7KerT7SaGSwrNKNzAPii/JDRcJ/eSphNKer4vvrKe4
	kZK9sBdy+XjDzfLpZHTgJ8ZEBlfxqyf3aSSYhuER6z3Y5uv+QN01a9qNoNRUXgnBbAFDr48p4UK90
	ChlAUG9yGS0sEPU63JJEqcrsqkfZtHl0POjzSoFVuTDvaf055Qhp1nGJeFCQVARbuYbjyXaizpeF/
	goCWyWCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKVC2-0000000HUft-1xfM;
	Sat, 24 Oct 2026 06:25:26 +0000
Received: from mail-yx1-xb145.google.com ([2607:f8b0:4864:20::b145])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKVC0-0000000HUfW-0Biz
	for wireless-regdb@lists.infradead.org;
	Sat, 24 Oct 2026 06:25:25 +0000
Received: by mail-yx1-xb145.google.com with SMTP id 956f58d0204a3-675706e468dso2860923d50.3
        for <wireless-regdb@lists.infradead.org>; Fri, 23 Oct 2026 23:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792823122; x=1793427922; darn=lists.infradead.org;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Veg291ePBmQUKy4IbiBvxeGF8v2l/WBkp99aovd9Zmo=;
        b=P1EtdSXVOrm9o3WayXXVahVUzNEbQO+YpkDjYlm8jaZuCC5SH8IZT3NuUebEJBnX7n
         yMKVuIsAS4Cx0eg2BOeWwdWHZURK/OBGZ/QeDKI1NZsONQa9EATOC7hqJiINANDVTaFy
         //d1EUXAL+A2PZ1r6QOHPY2AF1JM2EM7Zb73vouXgZuzrrjIBYKtjRx2DzoYA2le6B3H
         P+w5GCXwZ0eS4U+VN9WBF7qgr8f61c8YiPMvpfvZSeQmhBNxDdUNVyCaR9u55n4IMgaN
         WMReFxDSG/RP9NgCzOX9liEHWLy/YAYxcD5oQ0BN6lfJ4fW3RTzfMoz7BArx95IT2t6p
         w4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792823122; x=1793427922;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Veg291ePBmQUKy4IbiBvxeGF8v2l/WBkp99aovd9Zmo=;
        b=RO0rL2s7xb8eymsi00nXGBwAPopnBmg5/ythtbS4OfyHXx5Pti+2G7u8x7s/RP2TMl
         E64XvIfWMx7nSI+jClEruAoI4BUDQUjPZ6vEU3THC6TvXWPTAxZtq79LVUo/uv3kHwrO
         z/GZNc7YS4mJIcEQvoSaONY4t3rcp6oe4hLjo/38/zYa7XTCSt8F0XMxsGPXdlu3FBz+
         F1absZtw1nKt9t0pvbeRkzFR0EyeqbPQi2spTqu4gWrs3Wa8EYyKk+4ahKHF+ba1xk1v
         uw0URctRf5CdA2BsMvK4WN1pWpIsdlzSu214/MfZpRcD2DDvd3xbmpurI3kQCIO04Mx0
         clPw==
X-Gm-Message-State: AFq9FYKpHsrLfzquSg5NZ5mFD4nsE50BEG4BefR3j0BdWaT6b+VSjeCn
	MdYK345BnZhFAEFPKoDRVhcPMQJJQhDYO7ynx7bZfyyiYdRG5zYpANPhbUZtLuhYlkzCSV4Xj60
	9FOk=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:690e:150d:b0:679:b96a:767 with SMTP id
 956f58d0204a3-67a4519b1e4mr621269d50.5.1792823122264; Fri, 23 Oct 2026
 23:25:22 -0700 (PDT)
Message-ID: <autogen-java-df64361e-c4a2-4ce2-a012-b50203700cfb@google.com>
Date: Sat, 24 Oct 2026 06:25:22 +0000
Subject: Submission portal open: Engineering papers
From: mounishabuddhi89@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_232524_112773_3B489DD3 
X-CRM114-Status: UNSURE (   0.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.5 (++++)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: editorgkxjournal@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=1.1 required=3.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,HK_RANDOM_REPLYTO,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Dear Wireless Regdb,

Consider publishing your next research article or review paper with our  
open-access platform.

We provide constructive editorial feedback and clear author guidelines.

Submit Here:

https://kexuexuebao.org/

Best regards,

Editorial Office

