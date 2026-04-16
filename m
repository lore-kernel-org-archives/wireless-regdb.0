Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21779F8A16B
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 12:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PlfIU6ROQpD3K7y4Mwcg1jysw8Gfxmd60PFBDWut//I=; b=5El2FUsDiCbmQztomeMvt4rZhb
	84YinR6sp0TacLJRYREhixwNEMQsTu1Le+JQsZrnXfCUZl8VVhArr3QlS8BBgdc162/vXaUxRqJKJ
	7Jkc9dQCmiQ6Iueju+105+WuDQ1xJPuQG+cmj5U+NZIGN0iYGLMOE9zqkAk4OqUhFLTN3omT/hdDS
	988eVI64nVV2GCTKq2dcE8pZaLcnq5D1345AyC50ukbqe7UuoCfUTvJCMVx6uTLF6cFoCyfDU6gBZ
	dhe0rQqSPad2548ObRVIBmDuNMBh01lY96tB5RgaboDtuaQWycOjVjnuxPT/TGhM7UWXTwH+F235c
	Hnu/hfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDLiU-00000002QoF-3MJi;
	Thu, 16 Apr 2026 12:21:06 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDLiT-00000002Qns-1I4U
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 12:21:06 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-488af9fdaa7so54929955e9.1
        for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 05:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776342063; x=1776946863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlfIU6ROQpD3K7y4Mwcg1jysw8Gfxmd60PFBDWut//I=;
        b=MF75axEny6CQ13zxfOT6sdvrd0gtEkxZKlZDfgt6W58zH1vZkLdXfJDQ0GHBR2bMok
         oy58LNPV290czZmmT8lkdd3hLMoLXIgrUdEFZ2eUr4g4G40A/qX64yG+9sAjiqw7Gcf4
         U1ngdTGCb4sqwN5izWDJbt7jcbollXdmamr20P3kAenNRG0sF/5P3pjFRRMd7elz8H5X
         iIi8K0uvvAVgFyB2sLdf7ZjeMuKHIjV18MQ6PPEk1Xae4d/UHXcilxQ/iBc8S0h+AypW
         v7v+MEdqVOfrdBiWBSiNEezgPskV9AP2NfE3/lPRNPrf6uuifUc7Ux0kSUUSAj1N/Zcw
         1DXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776342063; x=1776946863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PlfIU6ROQpD3K7y4Mwcg1jysw8Gfxmd60PFBDWut//I=;
        b=IlncrRYC0ixk523nx9bV6D04I1KRLLdOkeJ6XQ2sj5YLa2qcIPzwppZK7xmSnREkH+
         xsQD/Zo+HKVhp2dZemGmAAjZ2UAvoXe5XctOe6b9q9oabw4l3qLK/WezJHl0TJZVX9ms
         B9gnVnHr+MTrn8SdOtYSBvhGjpkdON3Q/2rMjmHo7Z0wX4kQNSjzNhfuii7Hic/73wJ/
         afXpvzEe2G/uquNugroLl+g/I355krvlGzxJPjvGBLFoq4NjJJVYZQO2ZwrVKcqgAPZp
         S1kNsnBeoSEiOd2Y7p4Ul3yen1aBl7D3tNp7tTtl4K47zAm/xZnrrHsmdONVKQ2oXtDM
         RN6g==
X-Gm-Message-State: AOJu0Yx+OKr2tS7trybNYw+ToapoMhyHnLMMQSKxJlgCUK67ZEt8ZUYU
	K8hN+LFPMZM4pPROBkXcvuI+nZ/S/of0BFMZSMDphNr9jx2WDjHycUZ9
X-Gm-Gg: AeBDieuoHDXVp5QI31HyZll4ZWcB/i0nERCeJQOCdLkpaTIP6Xb1mdQUHDvGyNZTH7l
	hSnZo2hYk7isoejFx2XEZ40AuSvhZNre5TCwt7aeNSyZEpxdnHZCSkC2TXyD+8mwj4ciaumVQyt
	PjfzdJnoN9tia8UuZjI3K7//oUzlah46jCwBeH7XtNR1Rkniu6j9u1wxaMpUkCih7RI1qf275D3
	LaKK13MKWcw5DKhotmjJ+QiEKsM6kkowCOL9MuNIzzS65hJq//PGujVZ5Q/YAE6AHiYDgKpqnJZ
	CBNq9L2h2CfPoPDZ4i4jKmWiRr8v01Y+ZugWr2FUj0aLCAa2dgXEFFlsMmbQfr4D3CEFd8KWoBp
	n6fyNxhZpc40jMVuG+28HtTxYuJjvY9Q9885Txi3Hd7NpQSBniaerZgSitTksim0NjSm1DVT8E9
	Vu3CaaZsefzWktVnSc13M2Ak3r4KQhzsxD8HkyMyA5vRDiqpwOnfkDmk1VWYHreHD6aHo0
X-Received: by 2002:a05:600c:8907:b0:488:ab1d:dcc5 with SMTP id 5b1f17b1804b1-488d6ac1bafmr240648615e9.27.1776342062922;
        Thu, 16 Apr 2026 05:21:02 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43ead2decafsm11965576f8f.0.2026.04.16.05.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 05:21:02 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Louis Kotze <loukot@gmail.com>
Subject: Re: [PATCH 4/5] wireless-regdb: Remove incorrect DFS flags for Togo (TG)
Date: Thu, 16 Apr 2026 14:20:50 +0200
Message-ID: <20260416123000.tg-reply@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAGb2v64MBR5tJraW2xJX762csY7vG-hstUp1ES4dPpCARN6f_A@mail.gmail.com>
References: <20260411222155.299441-5-loukot@gmail.com> <CAGb2v64MBR5tJraW2xJX762csY7vG-hstUp1ES4dPpCARN6f_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_052105_373227_E4F1BF8A 
X-CRM114-Status: UNSURE (   7.62  )
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

On Mon, 13 Apr 2026 at 12:56, Chen-Yu Tsai <wens@kernel.org> wrote:
> I don't read French, but my translation app says that DFS is required
> for all bands except the 60 GHz band. I am looking at table 9 -
> broadband data transmission devices (pages 20-21).
>
> If you're looking at table 3 - non-specific SRDs, then you get a much
> lower power limit.

You are correct. I was reading table 3 (non-specific SRDs) instead
of table 9 (broadband data transmission devices). Table 9 explicitly
requires DFS for 2.4 GHz, 5 GHz, and 6 GHz bands.

Dropping this patch. Sorry for the noise.

Louis

