Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A70C7EE2A
	for <wireless-regdb@archiver.kernel.org>; Fri, 27 Jun 2025 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UUoaqti/topMPcvNtzcgRph5DmYS+DjEIoDu39jfxlQ=; b=YqfIVKFpUdD6qVffCeOqudNgJb
	YrDivPWxl3ucR35D9eDxKBB93ER04A5TUARPZVkoyduKFQKCz9B1En01WRYpCQj26M8gU9M/v22QU
	l0jsYvp1bAtfZ8TlW6keEEoRjBZYWgfWz7UGGBSf5qJ61nHm6fgxVw2cAU94U2g12OnVZ79fdyZjH
	PQPSbga1MEsAUCBWnIkviC11KO62t900G/33bRZi3vr3dAzXGc1xSwPfzK9Tdzivdm/+JgelyeEyt
	IiVqaLcI7GjDM1S7hcw9de9rbCWMBHxhVZybx04OSjTg/lhsYRL1zjVdbb1olVci+ILxglJ/oR5jq
	FqYH/h1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVCjE-0000000FOBq-3P7R;
	Fri, 27 Jun 2025 17:19:08 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUj3f-0000000BAGA-3RvV
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:38:16 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-40a660f893bso33775b6e.0
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750930695; x=1751535495; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UUoaqti/topMPcvNtzcgRph5DmYS+DjEIoDu39jfxlQ=;
        b=Oy3l+fU+mgU36/pNAbYGI0SQ9ETqHMpGYSnQCc7pIwIOMYht+epyOfzIHAgYX0dPDt
         8Jhr7eFIdzH/1hzZh9AIKHCWm1E9xxOclI+XLEyOKeGIVO2xZAgOS7+fRaYOEuvurgZL
         p8BXYokYLiw1+J9U5h0BzM+LrjcM3aYe4VcIEMZ79/Bjd5CKjHNsz839pV2ENkYrDO8J
         GKopHhqcH9v+xoPVFeVQwTK9TsCWKmcLm/40n5FZRoFKN0675t2swe2r5OhSt7xqia0Q
         dE7l0Y2V7aR8DAfcI2HmSmWQEAR9lbMYjZCnlTpl42EtQtUbp9WeeXFcoE6rsBLYztvV
         4Mvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750930695; x=1751535495;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UUoaqti/topMPcvNtzcgRph5DmYS+DjEIoDu39jfxlQ=;
        b=F2MSBqYuxVBLUQXb5w+8JKxhS+jj72XheepX54dwUpnjytFQijI91mi1KtKgF2P9bZ
         mPjPRxVphAHiY38iPfIXQhSKWOcGxT0dt5UfXdA4Z2MLg6sU/GRozDF90WNn1qi+zov2
         jFPRjy+FCDtyUwFU7CycaaSuUNprif5FeDFsx0hO9NyzU7bswZJc3HCq6pZP9eq8aUMx
         QB+xoP26/+Mfs7jM4+5Km9ulk5zWrBg8AN4OaPGRdAA0EKTI7wLY47jusNPJjV3oltYK
         0tFLISnDH+RXrnXSdbYELMB4hXnSwGW9S4atOJX5CrSf+YvYOLWAUYMSE7ja01MitUp+
         xQhA==
X-Gm-Message-State: AOJu0Yx+R+zjSaGHU2eCgxg/ol4g8H3SB5+5fgN611TsvOYKE8tVl/yo
	btez0POlvugq5LvUsDkP1aWCulxS5EZyOOGpb42XFezB4mIBx0CWHtbYc86KfVkze4SB6lCPaYQ
	CG1n5XmDWql5/q+aTzn0Z5db/sUylG1TWuhgBwqLzGw==
X-Gm-Gg: ASbGnctLdbXXe8A3u36zFLmgU65/UKC4HQ9vbJm1FSOhYAfBp4TzZNXoGd+XVaVvtFs
	5egJSVe+Zy8Tgfytv/Ev4FFxGlgdhup8p5HeadJfyRJhevdKT+p6kdVl/jYllM18TJPpm/eRyGp
	JSeYtmhzSM1cMBPV+UNWl6XNcz2eNCkqejOg8Wn6K2wZ1oVMI7OWLYRyvEx4p3u9w=
X-Google-Smtp-Source: AGHT+IGAxK+edB8fzfFXJKVuj8IMPflq4WxRraMC/63T7/rOHcPP65nD3daF4gExdUtQKBbw2ySN53wZ6rr+VvgIknc=
X-Received: by 2002:a05:6871:3294:b0:296:9146:f455 with SMTP id
 586e51a60fabf-2efb254b57bmr1476581fac.7.1750930694776; Thu, 26 Jun 2025
 02:38:14 -0700 (PDT)
MIME-Version: 1.0
From: Begench <ballarov99@gmail.com>
Date: Thu, 26 Jun 2025 14:38:03 +0500
X-Gm-Features: Ac12FXw27BK6WhBDxGVB8yIdJISFYyPdJDgNuhxMbedbsm4PwQDNYNwWeY3FaNA
Message-ID: <CAGqgb9FFKS9GSxJFq=HC6RAA5FRKO524FbtO5xgQrA75Aj0yFg@mail.gmail.com>
Subject: wireless-regdb: Add regulatory rules for Turkmenistan (TM)
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_023815_855940_72626B18 
X-CRM114-Status: UNSURE (   2.51  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Fri, 27 Jun 2025 09:56:41 -0700
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

country TM:
(2400 - 2483.5 @ 40), (20)
(5150 - 5250 @ 160), (20), NO-OUTDOOR, AUTO-BW
(5250 - 5350 @ 160), (20), NO-OUTDOOR, DFS, AUTO-BW
(5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
(5725 - 5850 @ 80), (20), NO-OUTDOOR
Signed-off-by: Begench <ballarov99@gmail.com>

