Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC9606A31A
	for <wireless-regdb@archiver.kernel.org>; Fri, 30 Oct 2026 15:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XJbB8UNj;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Xht9abiU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Date:Message-ID:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=eirrarCzyY1fvXOQtDdXSc2O7dNCTGtO7dobtw5kZpA=; b=XJbB8UNjp4z/P0okmy9OdDT5lS
	Fhmob+o32GZJAexQay8bI3sfddtUBSsuDkCVWzcOB8C2AB/ezdkPxtVlg/88z10jLd+awXdOntss+
	96U8jgHqpmaUZhu09rAYd7rSM0/WZwcCByvZvJLeadSdsJKQhbPthSga+Ivxz7bnmXb7RJ5v+w28j
	jypILCWC6qn3AHjXR4rz1vpwd5LeshDLEmxynJCmFI+9eSPOky1lAqhuqpzLCKkg9Tn0Hopv0cgUL
	KIzHACWjg+HTE3wbP0+IEstblUaH0nSc+jQI0OhwKQmO8EOpAkP7xgDeJZzArYfF0YSZTfQ0uYf+X
	pot0xpKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoXj-0000000C0nX-3iST;
	Fri, 30 Oct 2026 15:29:23 +0000
Received: from mail-yw1-x1146.google.com ([2607:f8b0:4864:20::1146])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoXg-0000000C0mg-2hKF
	for wireless-regdb@lists.infradead.org;
	Fri, 30 Oct 2026 15:29:22 +0000
Received: by mail-yw1-x1146.google.com with SMTP id 00721157ae682-8b12b209c4dso9515457b3.2
        for <wireless-regdb@lists.infradead.org>; Fri, 30 Oct 2026 08:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793374158; x=1793978958; darn=lists.infradead.org;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=eirrarCzyY1fvXOQtDdXSc2O7dNCTGtO7dobtw5kZpA=;
        b=Xht9abiUCcufAKVyyDxcFV3TGah8z63z4TSVBd3UA0giQjk6unYNJBzgeaowIN/QUZ
         SEQwZD9ZherErtxW5JrHQL7AyzTprpM76q+qyq8ZZSe8bckWCndIiARQn66x09WdtJ/X
         TZ6jQrJR2HN7Hakcfb7jy+HI0yLmX/bJp1L1M/ojyCCGumXVGhADfnjwCwHDOrjwcgXY
         R7yKvW65kSlNCuUrT9oUuNGBp88xQR8sm0yH3ZStMzWdCBuL8zL3Ma3drdA2Y2dg5VHF
         o+tqC4rxBlIxIQ76mFzHhyCyeSTyAFOOmNB6HOMucWR4QRBxSz/pOsFGViC5qzLITRZu
         Kq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793374158; x=1793978958;
        h=content-type:to:from:subject:date:message-id:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eirrarCzyY1fvXOQtDdXSc2O7dNCTGtO7dobtw5kZpA=;
        b=Es3dbdyxGFEUJOo2mgqR47+PPPjlmrR/NBZdtaTGlxGLbEVJPiO23P2zpIwYxE849n
         HjuTE2SNuBoKVC3otRvqi11Zcc7h2eqy4qRfNrUzSkcm+NjRU2jh4INNbyS56I13WO/o
         55PX7Ro+3vOUEJVS/EjxH0Ac6s+Hv1OYX76zI6RQI6XtYbZlLrIWzoo4bgGDteR5BHQR
         eUggBPXjAFRBHSqW5yuKF1c3bEFiS5mwj9ONdCXzWTcK0y88TXd25b/eYLtOyzza1rZP
         7rSuaunjvIE7N8yb9cJ8jXLxxAq9J8pH1m8EJ1LzL8ITWxqRrcSWrrE1OgIYbEKvRDxT
         32rA==
X-Gm-Message-State: AFq9FYIFouqRSI2ukqYqOrap3TLc+Erlzl3VqHjCIGwQiBGOcmURJzKU
	VrEuv2FP+juxp4H5p+9pBZxspW0uALS2uPmRQ5v9lR50winon6UbhpOJf2UzVJYimmE5jo2YTIW
	MG2I=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:690c:e0c4:10b0:8b0:bf45:9622 with SMTP id
 00721157ae682-8b2b670a609mr10348517b3.30.1793374158262; Fri, 30 Oct 2026
 08:29:18 -0700 (PDT)
Message-ID: <autogen-java-2cf8e779-4a1e-4a50-91cf-ca5d380c992f@google.com>
Date: Fri, 30 Oct 2026 15:29:18 +0000
Subject: Journal Information for Researchers
From: publicationpathway74@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_082920_690950_FCC96B10 
X-CRM114-Status: UNSURE (   1.03  )
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
Reply-To: editorstrad@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=2.7 required=3.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Dear Researcher,
We are pleased to introduce Strad Research to researchers preparing their  
next manuscript. The journal is Web of Science approved and accepts  
multidisciplinary scope in all subject areas. You can review the journal at  
https://stradresearch.com/. Would you be interested in taking a brief look?
Journal Team
Reply "Opt Out" if you prefer not to receive future emails.

