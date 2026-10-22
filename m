Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90DA606A31A
	for <wireless-regdb@archiver.kernel.org>; Thu, 22 Oct 2026 05:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XNaiYyOE;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=WTA1U3Pc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Date:Message-ID:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k5O8TomoEwPaHkOJ7Z2N6mFFdbnJ/oryXzrXanFSPUU=; b=XNaiYyOEMZJyWPWF6g5c9HWcdt
	muwLHiD5xF0d4p2vjy+pCv2qhrXiLxn1yD9ir9sjSR2g+TZnfnUrrpJR57mJGotPcP4egWah6PQ6I
	BKaSUPc1AmtllC15lrvGqq1vMxLmjz1W65CasIBSEygYhaZ1m0ye8grbettWzX4VBV1jdvPXfagX3
	HnM2HgqKi9l4VxfwLw4Q7DJ+JNsBwV6O07I8Ob/1aFdgcC5lvQi0Fqed+eTuvv1xsJ2KGEiFYxKn2
	lSE8O0PaBgm4CSAjM0EnmDn+odJA4oQSDoeCuYUlyQizomp7y5hR8UYT+Cl7VWJkzj5WoYc7x4J37
	qoRW07QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlN8-0000000DOUY-0bwS;
	Thu, 22 Oct 2026 05:29:50 +0000
Received: from mail-qv1-xf46.google.com ([2607:f8b0:4864:20::f46])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlN4-0000000DOT9-49Sz
	for wireless-regdb@lists.infradead.org;
	Thu, 22 Oct 2026 05:29:48 +0000
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-91b7e7d5f56so31712286d6.3
        for <wireless-regdb@lists.infradead.org>; Wed, 21 Oct 2026 22:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792646985; x=1793251785; darn=lists.infradead.org;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=k5O8TomoEwPaHkOJ7Z2N6mFFdbnJ/oryXzrXanFSPUU=;
        b=WTA1U3PcV3tbLTXdl56mR0Z0mkgSJWacW0425deMLxwys37LbS938I/+Nesaylotoi
         7NVk2xa6srYOVeA2RwCG87IrQsP9iCG9JBWPig//pRD2avKAiW+90HYaDG89FhWWI7Ia
         gc9/v1+WYVHVjhdQw8adhReUti++aOVMevROZ/1axXAi646BcJP01qO4wvfXhhEeYehc
         Ge0vQQQk4JCoDEelandsJ2mQB9N1UIxUHdBAu8gvXeR5rUn2yzPH2m8mJkyBi/Sq3ZcR
         qxd4tFMAWmUQzhKMKzJlRPpc8TKAGk/vB3PUSh0MqP4D474vL4gmV1Zr/YKTeWyp2GOf
         0QMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792646985; x=1793251785;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k5O8TomoEwPaHkOJ7Z2N6mFFdbnJ/oryXzrXanFSPUU=;
        b=rngOjSwjp/ekTsp11LABxs7irvmAS/+4uzMrC9X9FBDC9rZt7x98cMBWiPhU3bq0Ir
         Cu6hrQYRRzLVZTIwn/tnKtZZBpBYPdQTYrhLc/0Uq8exlLgCDFjc8h1bvOciTlDiec4+
         9mWmPSCEd2N90IypgMQyC9Q+PL5eG929c9bLuR+KD98DdYK6ndXC3R2LkbIXQs8i3Bvd
         QlL1P5X0rTGYxcYaoy3lRYw5R0/bR9VgbReNmEqREENVNWizSobVhtDAfh7soYxSqEMy
         blYrhrvjNdcMed5HrqL/0hWgWU/NiwTonDAyW7+cZpd+5kk1fGD9D2ly+w86PEQsyu0L
         g/wQ==
X-Gm-Message-State: AFq9FYL7YXTzBuIllqJ7H/KRj6+ALCme8TQiyGi2jbH1IiCu/7+sBNyo
	XPzt8dQk9WSAC4XdX1B5JWQviD1Kzy1kOgLmn5Ov2TVfkyHCOgN3nMI0uGL71DMvn/nbUh2lEzZ
	2xKA=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:6214:252a:b0:914:5769:dcee with SMTP id
 6a1803df08f44-91c12eed185mr66552866d6.17.1792646985489; Wed, 21 Oct 2026
 22:29:45 -0700 (PDT)
Message-ID: <autogen-java-a00fdd41-aa51-4d80-ac5d-7005378e096d@google.com>
Date: Thu, 22 Oct 2026 05:29:45 +0000
Subject: Call for Papers - Journal of Xidian University (ISSN: 1001-2400)
From: krishnasinghjikoi9@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_222947_037599_A0106A9D 
X-CRM114-Status: UNSURE (   0.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: editorjxu@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=2.7 required=3.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Dear wireless-regdb,

We are pleased to invite you to publish your research in the Journal of  
Xidian University (ISSN: 1001-2400).

Key Journal Benefits:
- High-quality peer-review ensuring academic excellence.
- Open Access model for worldwide readership.
- Rapid editorial processing.
- Broad multidisciplinary coverage.
- Strong academic visibility and citation opportunities.

Manuscript submission link:
https://xadzkjdx.cn/

We welcome your valuable research contribution.

Best regards,
Editorial Team
Journal of Xidian University

