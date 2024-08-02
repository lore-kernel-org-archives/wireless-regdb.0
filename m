Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EFDCC3DA7F
	for <wireless-regdb@archiver.kernel.org>; Fri,  2 Aug 2024 07:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rL3LCwXqnNTYA9Y4g7jU1WfA6AXlGw5PuhRK9q1C4/Q=; b=aKvewPJcSawMsfD5uTONG5NJaZ
	b2MXDtrtmfEbe3AkSmql44DZTGyxizFekjpNE/daJGuoBNTiibpo8EVNkkJ6MfAdrxgTFi5WDbq0p
	SJ7f5w7AARbgz0HAl68z8VJjEP5uQ97TTcjRVQd5aLGyBo1gEFt6G6F5eie/wqiHSAiA1RjT9SrEq
	6AtDw7JHOBGMFG7nvoBIO4JQ8vAt3o1DzA2E7cvOCuX6tCYxPvlGZ5Q3x12WbqPcTsSKvn0K3hK+f
	ASNXG4Q4HUQHZSIN1eRuW2ZJzeVocrAWpR77DPvA5iLUuzsCRAE2oDML9dkO+udIWGd6S4cclt9/k
	XLPtAiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZmRk-00000007tZI-2guK;
	Fri, 02 Aug 2024 07:11:28 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZmRi-00000007tYX-0FfS
	for wireless-regdb@lists.infradead.org;
	Fri, 02 Aug 2024 07:11:27 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a7aa4bf4d1eso119437766b.0
        for <wireless-regdb@lists.infradead.org>; Fri, 02 Aug 2024 00:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722582683; x=1723187483; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rL3LCwXqnNTYA9Y4g7jU1WfA6AXlGw5PuhRK9q1C4/Q=;
        b=gCkVLh/DsiZNpx+PVN1jZUM5MQ9J6WU42eC5TwjDo3lmOs8AWPdbGI0F6iIIi7BpKG
         V7+25g4c31RKUlu5B5dTMINPPiSPW/esj8oK1+dWh6nbTz6jLjOcfrn86teL7C1uopaX
         Ow1G92Yif66brLsUyFc3oSJJExxRzr9dTnnWzHMP2Id1TohldvoexToOppdHYUdya1DC
         yzXraABLWvSIPEVUwopUnyqd/O/R7w0UqNgKtL+Y1LJfe9Ve75VITf0ZSQR3f0z/517Z
         PYA+L4L4ABrPcjDk4R4QqfFkFVOKwS88vJ6/GpYTzw3ttB4PfDtNyLTP0rBuuH8yifE5
         6dnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722582683; x=1723187483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rL3LCwXqnNTYA9Y4g7jU1WfA6AXlGw5PuhRK9q1C4/Q=;
        b=K1Eih0tZcTlxycsdPgRHmKlIq+0tEX6eZDhrPbuZYx41S/hmN/L2fHmBtPddBq7F+6
         IoRDmt+pzfkK4gTwe5Moy/ESLpb42y28sEP49b9htUr3GVza48cP6u0lY4xYT4GTwoAH
         2CP0u7wso6YxF6M9HKaAx3T+32bmxj44P2dNkhjw+t71B0GOj+ym2hds/nXwxLHGJeb+
         cstQwkKNlkjaUwudex80kaVbq7NxlpavObPfuI88FJroQLerDqFbf8D2QqQbujuS8ewT
         erGR+wk8/FwipMAsSKYwv0txIfCMdaE39KNGxOuiBF7+KtLDbzagyh0AfI4Rzd5HO2Q7
         wxFA==
X-Forwarded-Encrypted: i=1; AJvYcCVoP+aumatCCrtFUNGLJja+Ba6vDIZRA9GRN9oZAP87e1SoLFyw266vu0boTxwJtqkwqfCuNYPHorR24HC+i5Fg6zbegcwogeK6LuIwnVVwIH20
X-Gm-Message-State: AOJu0YyWpvFUjVuGfruSF7RsU5WQAzsSKCSIOCBJ/x1X99/tfz3aL5VO
	jVKB1pCdhJmnPQx4knjWg0BHQBCD1aE+7nUX9Ap0d9c7POf9lBxAw2wyb+9wykuiHL6nwzZkpjh
	2y+cykdWOW1QsdDovu8HGLJ6lpy8=
X-Google-Smtp-Source: AGHT+IEWi+M3sYrEJ8/kXVwNsKMRWQtmQiXh7HBmAwg7L5Y46O0LeQtUAz/OQhNC+oLIoNjxQF2iX6OqExmJfXcXiUA=
X-Received: by 2002:a17:907:720f:b0:a7a:c083:8571 with SMTP id
 a640c23a62f3a-a7dc517a6c8mr167605266b.52.1722582683193; Fri, 02 Aug 2024
 00:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240719032326.7353-1-pkshih@gmail.com> <20240719032326.7353-4-pkshih@gmail.com>
 <CAGb2v66QO-F6r6Ay5yLiYwFXxob6JGnv_4k-oZiZJWfboGt0pQ@mail.gmail.com>
In-Reply-To: <CAGb2v66QO-F6r6Ay5yLiYwFXxob6JGnv_4k-oZiZJWfboGt0pQ@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Fri, 2 Aug 2024 15:11:12 +0800
Message-ID: <CAHrRpukJ=uPx+J-KD0TcPcYyMwNMb2t__7sQfMPv=PnizHkVYQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] wireless-regdb: Update regulatory info for Togo
 (TG) for 2022
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_001126_137570_3EAF5845 
X-CRM114-Status: UNSURE (   7.17  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> > v2:
> >   - in commit message, describe typo that 5925-6425 LPI should be EIRP
> >     density 10 dBm/MHz. Otherwise, PSD for LPI is lower than VLP.
>
> I applied this patch for now. But could you reach out to the ARCEP to
> notify them of this, and ask for clarification?

Sure. I will contact ARCEP.

