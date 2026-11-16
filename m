Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333CA606A32F
	for <wireless-regdb@archiver.kernel.org>; Mon, 16 Nov 2026 10:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w99Qgv52;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NvbzYDaj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Date:Message-ID:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=hXD/k1DOza/UxPFbePCZRuRmxhYFDU1Nip0rm6lc3ek=; b=w99Qgv525pE6hFxgNNbUwAi9fp
	Flzy3rNdiUXjBSWQYroVWck44ve3F6XBvAud3OTs/qg6pbLui0Em13ymCaSYggVBHrBL44zuesgyP
	s8Q2GeMCpciI0VDAOsOv4LYKw4PFyHDYHtLi7G+L2Eb1PZkf2UNwQqwolqNmD61P4xOLEnYA8Vr+l
	Y7IK6kQhqLZBYJvmZkSgP1U75ZFWL2zdXhm79MUjZLcSBB3c266sRYGnICdWniKlXqPhtLhdyv+Ah
	PClRBW83ROkzp40yBGfA6ZoXqHBUaQ79jL8UHGhbM7J2gIgi7/49xbpQVYzMq70Lebo4VEHwKRoWg
	ZnE0n58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStzH-00000001xwY-1uyt;
	Mon, 16 Nov 2026 10:30:59 +0000
Received: from mail-qv1-xf48.google.com ([2607:f8b0:4864:20::f48])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStzE-00000001xw2-1jsV
	for wireless-regdb@lists.infradead.org;
	Mon, 16 Nov 2026 10:30:58 +0000
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-91ea4a2210fso38843986d6.0
        for <wireless-regdb@lists.infradead.org>; Mon, 16 Nov 2026 02:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794825055; x=1795429855; darn=lists.infradead.org;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hXD/k1DOza/UxPFbePCZRuRmxhYFDU1Nip0rm6lc3ek=;
        b=NvbzYDajjeLWdvKtVi60h//6xPHzhkqFiCMNmgCa2QYYKhPByJdoPfJGYu2nwmQ2br
         /WBCcEFDpcc2ALUKIRSfagz/FHXI5OksU2A0x2Eyd53J/idBnU/Ddshf4VrDc1P0TlXU
         QjJ4oZwgn6dqHI1NU3J6O0J2t1ceIDAXFB1V4nh4QyPyDqHB8epVp+7jNpd9REdZM1PV
         6B4XqyNLFckK1TOodyeCm1Rl4tRznmOAEYryCpebcEuaP2x4aL1DoiuXOm8Z6irjdD9K
         XBMgEKNmZcYSU+tnB7dCcfTs7mnFZ9F7itwMVdg3jQ1/cSU49Z14GghRqzBUhBf4H4Ou
         mCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794825055; x=1795429855;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hXD/k1DOza/UxPFbePCZRuRmxhYFDU1Nip0rm6lc3ek=;
        b=o8WbJP9pQV90OM/QBXkmvBR8DU48WOt4V425cb+NPzpOu7WZoGNWgxVX0ORPGuMhC3
         pAR8MTAoYsWjwMuswgAxyQ1YBVO9+a4A+luH7yPXX9f+90ZAxC7wf189158NCqfZFuut
         +7HljoQYOnG553NbkfnUT9R6q6Idi6u3ixM4MqrrmPYlQbqVqfNpm52BZRGGcc8Dugto
         ziUDnl+dVVOlUmYb6Cwyg6f8FMmb+6swcC9WaBcrXg4yHQBJ1Lmej67eDymqjCs52/OX
         aG33uHyLeXwDRl/vpdidInLdLFFoHcKoZE0OvgpjiCPgD/e+3QkTdL3WpdhJgb8bgbDq
         JAbA==
X-Gm-Message-State: APuU4Z+vqBX4KeFkHlgEfF1/jyIOiWO4+12LU6CsPu5dzQ3JuYkPn3Ma
	G5O6ylil1PlI+GP1oRwbt0Y6yUOeCia8tSzgrLsx7mKmrrHh8sqRl+3O/7503cSBlc/5gL6RE07
	5Asw=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:ad4:5744:0:b0:91f:3230:2a4 with SMTP id
 6a1803df08f44-91f32300351mr120270236d6.53.1794825054755; Mon, 16 Nov 2026
 02:30:54 -0800 (PST)
Message-ID: <autogen-java-561bd46e-960c-4a61-9834-899ec5d19654@google.com>
Date: Mon, 16 Nov 2026 10:30:54 +0000
Subject: Scopus journal publication and funding for researchers
From: kushalemj124th225@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_023056_482780_27EE3EB3 
X-CRM114-Status: UNSURE (   1.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: editor.adalyajournal@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-1.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Dear Researcher,

Adalya Journal welcomes original manuscripts across philosophical,  
interdisciplinary, and multidisciplinary research areas.

The journal is scopus indexed and accepts multidisciplinary scope in all  
subject areas. Research funding may be available for eligible authors.

Happy to share a short overview of the submission process if helpful.

https://adalyajournal.eu/

Best regards,
Editorial Board

