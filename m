Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95B85C83030
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 00:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DQQ5Y56mkC/VnzMh7cG6WlsLXOhXQ39Xs2xGyn/XrcU=; b=s/IUgJz2Bgu97VNLGCroPekXqY
	5ycQ1H4MPyxAY0xJrY2PUjOHq+INC2JwzSffBplF9wz4d6BXkQGAC+ICLWlwLhyOCy/w9W1C8m2Wy
	vj97URelPowo9wQG4riT0qB+1Rs51vv5ChUZHeRGPMqYff/pu8Bwa7yHJWNPlmYN6ysV7FkuX6sjo
	2v6cUAQ1MvXknbvcj1iaLZQTVrodL9WDENDsmZq42xpWUH/F1WkMw9V6q8syFloW+ofEhFpf5C7Kf
	QeXFGPZCifyeG+4DQ1k6Tu/Z0UMn94GxcAQ6k4jpQZyQ8mHNQNyr4EvwOMW28K9hHRXnHjxFrAhGu
	jV1Y8qdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYwYE-00000003uGZ-0zTw;
	Tue, 08 Jul 2025 00:51:14 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYwYB-00000003uG9-2zWq
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 00:51:13 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so630710266b.0
        for <wireless-regdb@lists.infradead.org>; Mon, 07 Jul 2025 17:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751935870; x=1752540670; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DQQ5Y56mkC/VnzMh7cG6WlsLXOhXQ39Xs2xGyn/XrcU=;
        b=TgCEswvD3DSfuhTaYiFhXznEzSzYAtL4a+OUw0XyHIijIOsUe2OKGMuxQJcRjH4KqF
         ib8DVEiVGIzOXr/VsfpYAUS8M286LIZt1/Fgw08oQe4VZl09sZfkqAtb1E7jdEC3sNMh
         rvy65ue1rYqm/ZHUfUMqTvwSEsm/iYxWZ6mqwoGYzMmygTZME6c+SMYnxwBkEMZZFbNq
         J+4pGAf1ki+h3jONG3FkE/MUtnxZrTFs/AIIZfi5RNbVgEwRrkCToG0yTVOOUGWLmoaT
         udadU7PQ5GdfnidourF3G7BgJm3w2Rkc200XvDnHYRjQQa2Z90A8zyjwTmuKYOPy5aZs
         H5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751935870; x=1752540670;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DQQ5Y56mkC/VnzMh7cG6WlsLXOhXQ39Xs2xGyn/XrcU=;
        b=qhnyE6SXBzvXR3ZjTWXtd79fvCiIgRbl4Wvm3mjcrOBd8rn9eKnIMN7yqEfziueL1Q
         JzZUBDQg4Rx8sLvL5j8InsuUKR2EyoSyIx25ZgIXkdYaP1Tm3NPEFcvm+zVEqTr6FTng
         Bo7ePRtrZjM+cBSlBMvWkLA16MlTZpD60O3J2EfMAoK5OzJdnLUIItUR/fJeAqz+LJiz
         SToWEKdejr6sPHlZL1TpJGQ2BVd9vjgwU8lKJxLvwiuMz9aulc9OBRRs9G5iR/X4Hy2M
         6DHRvAaPlLyBSBov59zWtQym4WodJRWP1R2kEKMC5ERk9jibodt7Qf61jiDZAQF5MFbo
         uBWA==
X-Forwarded-Encrypted: i=1; AJvYcCWbh92K17nEhaSbc6mJawqDbh8jjt884678gqHz8vtkIEfAgcuM7WOcc8Kr1v5+fHDdTgL+TXL0oEXgCNmK7w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yws7jL/6eMHCaRBMRdItqHEgVo3LN0AuhiVqRF3hjyBh3wCp27g
	vIXPGjz7Uwmdg/goQY+n6qPIbERUKjCXuXpNX/bs3Oqt0Tsn5OdHVKAFSmRWJJmKH5iy0q5648W
	ZVU7FQgITU4vI30+J3g5bgYVdg/tUXG3qVnLW
X-Gm-Gg: ASbGncskZb6iXFwvUoB0Z1kpt/QoAPzR9PVaO98eCIet5WoKqwkAQiLH0hSiEHdaAZ3
	OBZFjXQJxoaK5LierG6yXqvFtN4kvG84GkE+hBRTgrlQBIhASo/Ls7276aNRFKQqFjWQe45nSNr
	f2AUFBUxR/oH4amzVz48MfQbJ9T02aZk+U3veoc55b3jjsa7BjbhIisQ==
X-Google-Smtp-Source: AGHT+IFeq0e8gWQhXOEChXHy0uoRczTpCrBBKoBBnVnO0unYx4AjSMYNBJ9mzQYrTcKgYFZc4venqdMxYnJMnGotDLU=
X-Received: by 2002:a17:906:d54c:b0:add:fb01:c64a with SMTP id
 a640c23a62f3a-ae3fe7f113bmr1374126666b.43.1751935869861; Mon, 07 Jul 2025
 17:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com> <20250707024615.38507-2-pkshih@gmail.com>
 <1B25D881-49C4-4805-9EF8-76E3A9D9A64C@nic.in> <CAGb2v64ZKoUzQoihvPZMu4e7a+8=BxYBX_U4ZfMW_qvZhx1ZfA@mail.gmail.com>
In-Reply-To: <CAGb2v64ZKoUzQoihvPZMu4e7a+8=BxYBX_U4ZfMW_qvZhx1ZfA@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 8 Jul 2025 08:51:26 +0800
X-Gm-Features: Ac12FXxiz7Nton_TJk1lYYQCOcI3V1W_qxj9ftUyTU_kYIXWz5hNaJSWifUO1Xw
Message-ID: <CAHrRpum3D_Wxik8rpZBhosj4B_W_ocBBnC7Hms36tF7mJ_SkyA@mail.gmail.com>
Subject: Re: [PATCH 2/3] wireless-regdb: update regulatory rules for India
 (IN) on 6 GHz for 2025
To: wens@kernel.org
Cc: Gaurav Kansal <gaurav.kansal@nic.in>, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_175111_756556_1C2F67F7 
X-CRM114-Status: UNSURE (   7.42  )
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
> I see.
>
> I will drop this for now then, unless Ping-Ke has any more information
> on this?
>

What I can find is a consultation [1] on May this year. It needs some
time to have decision then.

Please drop this.

[1] https://www.trai.gov.in/sites/default/files/2025-05/CP_28052025.pdf

