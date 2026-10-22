Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9C9606A319
	for <wireless-regdb@archiver.kernel.org>; Thu, 22 Oct 2026 05:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tEUD61jn;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lRAnrxJR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:From:Subject:Date:Message-ID:
	MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YLSVMKJFUU4S+ENkGvQUYpl6uZWfyjjW4Kw7H0GllHM=; b=tEUD61jnpKRR7G
	pw/WARsglA3cLtIislA48odSRDFlMD3NWKI3K8Rcjho6Y+xLgzc6nksjsrff9zSrlqUlSJ+Cwzexg
	eLrv8Q0i/U0d8fsxaUs1BER1GjZut4Ra2KRuDnpkGHJcvU7nsy1XIcJ8Dli5RzzjCOZ/NVsgIfnLs
	jMsh+5CXrkU0uAqSUWgldqEzAsyxkrXy3xC8PMieP825CDkaY4WOBWsz4CWN0QicU0E+oO1XUrYyi
	KdWX8SLeeaa2dlXjK/PdtDlw7Hh1cXk5wDmQkhOlKvo7IMrM5+UYqy4fpfKj1wlZMz2SiYmpgWWyV
	jhNojVrKBplK6ZPeg5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlOt-0000000DOgq-0SXW;
	Thu, 22 Oct 2026 05:31:39 +0000
Received: from mail-yw1-x1147.google.com ([2607:f8b0:4864:20::1147])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlOq-0000000DOgD-2sGL
	for wireless-regdb@lists.infradead.org;
	Thu, 22 Oct 2026 05:31:38 +0000
Received: by mail-yw1-x1147.google.com with SMTP id 00721157ae682-8ab3f890f30so22589827b3.1
        for <wireless-regdb@lists.infradead.org>; Wed, 21 Oct 2026 22:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792647095; x=1793251895; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:to:from:subject:date
         :message-id:reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=YLSVMKJFUU4S+ENkGvQUYpl6uZWfyjjW4Kw7H0GllHM=;
        b=lRAnrxJRv/7l1nE1xwQ1XgWXjqEdFfp5J7C8hdvnSMazktzSqP1knN9VH2mxe/Xz8T
         04VlJjMm1oLW7bpniOmUq+lnv46/d4MXXsQapp5qwjIc6kfhxCgJKOKmVJ3v31H5V65H
         TjZHXyuD4l5MJJwCVRHvUCMWKRc5Q/ePkZoMJfnEf5JjSHlW1hxfoPdF3M0U3tF1aRA/
         +I8/n9fekt6NSya3gzJTIx02XaUtA4laKcBKQSh57XeMPeQDwbUimmiezpJUoMiC5cGu
         m9bi/ftoMmIzFYZtVtKyyI3GcskoP4ta+vPtzXQRnHaRrZjHVKu1xgHXWvbzny38oP6r
         VW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792647095; x=1793251895;
        h=content-transfer-encoding:content-type:to:from:subject:date
         :message-id:reply-to:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=YLSVMKJFUU4S+ENkGvQUYpl6uZWfyjjW4Kw7H0GllHM=;
        b=Jb0+rgLxUE5tO3Z2u/Pi2Ah7pMK6DoMbc9lXBSpwN0PSLwPLoAT3dNICMdQD4zMk3/
         qPHu8tTJbSoglyt/1Hs+G9QNymlp8DppgmmVU3fqrDUgoSU4uY0EEFcg4xB2GFTaEemy
         kBGmhu9xz8yqg9YKj16SUTyjEqzt/wtDqcCLYg8UqF2LFgghEVmKfow01IJHz5VTdhKp
         aeaXznZTY9ojWCjolsr2ryxdnyYnVgetSUjNl/Fxf6P+b2/rN0dgHpza/OJAG6Sf1VD3
         xFtsZIixImkf5Kpuc5/VMxtXNpgcPql7OpTuNFJqaE+ew8qlAwZHYGsFA4xRyDYuChSm
         TLvA==
X-Gm-Message-State: AFq9FYKRQiQCrlWL8lqpHlHgvP1qzmwl/FBleswlUPni8vZwr0jiWJt7
	OguRrPJhGJBtFFG9k64uzj5NvNvONCGyXYZmdmGSoukn07vv4jNNML5ftFI2r2pKFF8bXIf0yUc
	rhnc=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:690c:e1c3:20b0:8a7:1943:17cb with SMTP id
 00721157ae682-8b1340d990amr15684277b3.90.1792647095168; Wed, 21 Oct 2026
 22:31:35 -0700 (PDT)
Message-ID: <autogen-java-194f8277-cf23-4f8c-a9af-8f16923f5742@google.com>
Date: Thu, 22 Oct 2026 05:31:35 +0000
Subject: Research publication information
From: krishnasinghjig12@gmail.com
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_223136_727351_A7D41D07 
X-CRM114-Status: UNSURE (   1.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: editorjbift@gmail.com
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=2.2 required=3.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RGVhciBSZXNlYXJjaGVyLA0KDQogIElmIHlvdSBoYXZlIGEgcmVzZWFyY2ggcGFwZXIsIG1hbnVz
Y3JpcHQsIG9yIHRoZXNpcyBhcHByb2FjaGluZyAgDQpjb21wbGV0aW9uLCB5b3UgbWF5IHdpc2gg
dG8gcmV2aWV3IHRoZSBKb3VybmFsIG9mIEJlaWppbmcgSW5zdGl0dXRlIG9mICANCkZhc2hpb24g
VGVjaG5vbG9neSAoTmF0dXJhbCBTY2llbmNlIEVkaXRpb24pLiBUaGUgam91cm5hbCBpcyBTY29w
dXMgaW5kZXhlZCAgDQphbmQgYWNjZXB0cyBtdWx0aWRpc2NpcGxpbmFyeSBzY29wZSBpbiBhbGwg
c3ViamVjdCBhcmVhcy4gSm91cm5hbCAgDQppbmZvcm1hdGlvbiBhbmQgc3VibWlzc2lvbiBkZXRh
aWxzIGNhbiBiZSBmb3VuZCBoZXJlOiBodHRwczovL2JqZnp4eXhiLmNuLw0KDQogIFdvdWxkIHlv
dSBsaWtlIHRvIHRha2UgYSBxdWljayBsb29rPw0KDQogIFJlZ2FyZHMsDQogIEpvdXJuYWwgVGVh
bQ0KICBSZXBseSDigJxTdG9w4oCdIHRvIHVuc3Vic2NyaWJlLg0K

