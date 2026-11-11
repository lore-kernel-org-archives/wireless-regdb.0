Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140EA606A882
	for <wireless-regdb@archiver.kernel.org>; Wed, 11 Nov 2026 10:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tLkuBXlH;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QnPNYhp/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Date:Message-ID:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=cLGfSXwLR18W8oeIyN/tsKJ6OEw+UvGZMQGw2Uyvr7k=; b=tLkuBXlHAMcyyBvcpqmpol1CHW
	fL15QrlpxGj7qyW4B7KYu38E8gUghrThevZ8nFnMy4NmWcdSvLbZwCnsjRfcMdVWgofwe4aqGwEPq
	Ndh97EQNRbvHVGmn25Q0DIk4LJFhtsw72KHt+osKnoHnEF3qAmcks12RSWmotCTUqxLoO68XH5HgN
	W8MALaoevmhVALTogYTXPNSWJF8KFCA+sv+Pf7BORWtPITALsDnKFYrh4OaLeEL/3zmIbHUbEeNEq
	U0PQpzS69AAS0xQyV4dLjwgqYNxn7FEAkhnWUtFdr/hbKyaeYyI23K0dne4PYF/RKqBZuborTqdAh
	MvASFfHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5RO-00000006Ke8-2HAx;
	Wed, 11 Nov 2026 10:20:30 +0000
Received: from mail-yx1-xb145.google.com ([2607:f8b0:4864:20::b145])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5RL-00000006Kdf-0yZq
	for wireless-regdb@lists.infradead.org;
	Wed, 11 Nov 2026 10:20:28 +0000
Received: by mail-yx1-xb145.google.com with SMTP id 956f58d0204a3-677c4ca22c5so5988425d50.3
        for <wireless-regdb@lists.infradead.org>; Wed, 11 Nov 2026 02:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794392425; x=1794997225; darn=lists.infradead.org;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cLGfSXwLR18W8oeIyN/tsKJ6OEw+UvGZMQGw2Uyvr7k=;
        b=QnPNYhp/E98Kjf24eCmqVVSCy6r66Tdm7bXCMCxJe2LkpWfrFVCELkR7AF+S+LDD9J
         1wK5FKTlfcx7LY4cZ0/F1YYvowatE7FWjxknkBpGahfEOmnSZ4ASJJ9HnstvBfOqb5j2
         Vg5YTGa46Z6KMg0LhX8aUH3zkepD1x8C8CVbGT7pUBw2IjcXXnDXpnoM7BlNi1+G2ZdQ
         Mk0CEBdioQsbn9Hsi0yNXfDUWw6OLOL6siSrbfgQaKTx5uq8Or6oxO6PDwGkQZWETisr
         +JRk6x33jOu+zbNXEDY10yBRpj7LNrgvXJ+s820B/ycaG6FFCzNZ8RgxGZo/BL2ZDQ8X
         v/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794392425; x=1794997225;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cLGfSXwLR18W8oeIyN/tsKJ6OEw+UvGZMQGw2Uyvr7k=;
        b=YWMDfQrBonEZztIzJ/9YcqgcOjN3ulnf8khRgDc8YLYG2FuQYH0HyoE8Sx5ibAkdvd
         8uPnIyniNyyFnG0juRnqtmieiXJohMSU+iC7otqSZN4IKiiI3/W8f5H3g0GhV2FpFn/B
         72c0u1lM/ZZbUEpEUWneR1sJVdV0Ia9jcrgiXa7rq9gpDKjlY/3S40WIu5BPDwC2CWx7
         djSCtPUIQARzsN7BipitPrs0X+B2iPS1O06EbZ6WCEWzjVIDn9twlSrG6oMcXIoXtbS/
         nqzorJmnsqSQd6EP4R5P1JIiifZ7nu6xFe+0IM0AhhjbUhRwfAx4EpqbK2Q995xSOAYU
         e9wQ==
X-Gm-Message-State: APuU4Z+sX3X8cRNYyaExtH64YuiwF1xvoUuWfufCa7dMYuTXKyiEp8Hs
	0Q5hNMbD5CMs8Y2ydg1lGzmBjwpOeljwNPPMeiUCY4u2zqBCrSAhYEFhGUwhLDCZaOSwmmDRAou
	BJW8=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:690e:144e:b0:67c:1ebe:3850 with SMTP id
 956f58d0204a3-67c67cc10bemr1818837d50.12.1794392425324; Wed, 11 Nov 2026
 02:20:25 -0800 (PST)
Message-ID: <autogen-java-6e898008-76af-4f76-b885-cdf6ca1a6873@google.com>
Date: Wed, 11 Nov 2026 10:20:25 +0000
Subject: A journal for your work
From: naveen.gutti152@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_022027_275421_DF88DC94 
X-CRM114-Status: UNSURE (   1.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.9 (+++)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: editorfiddlehead@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello Wireless Regdb,
I thought Fiddlehead might be worth considering for your research work.
Details at https://fiddlehead.info/
Best,
Editorial Office

