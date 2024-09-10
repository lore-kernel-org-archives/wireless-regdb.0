Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31354EDE9A1
	for <wireless-regdb@archiver.kernel.org>; Wed, 11 Sep 2024 04:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZorfYCkwdwEBbCGQLTXlj12nKqHDGDGFhx+qtIA9AVI=; b=TJ90ozP8i1ivunE4GOTduxwpCQ
	W/YUJyB6sH8cTi6NEuikk5ubdfxejebfHUATmHOvZTOGOazF4PmVokPix5rg7OtwbiySEoI06BE0Q
	y1yGO2xP7Eumib5t3R6V/vRzi8+uUY8XgdtJXK02jXN/y528bHwe5+iDw+Bx4fPVmUrl75sslxnxz
	LK3Yvjmv/Br60JuE6IGF0OcbV9OfSKU1tAjkRqByq2SL/uigisuuJhDi0lfGFx2XstOvHVra8sh50
	CS25DV5STBLM6u6B/z5xujhNc3DxeDOgfb0FzOz3KnS9/OJ5PBdwkJkdrSEAIMK2wSiKLntkund2C
	iCpZCjqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soF3v-000000081n5-27Yn;
	Wed, 11 Sep 2024 04:34:39 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so7na-000000076KY-3IEs
	for wireless-regdb@lists.infradead.org;
	Tue, 10 Sep 2024 20:49:21 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-dff1ccdc17bso6214430276.0
        for <wireless-regdb@lists.infradead.org>; Tue, 10 Sep 2024 13:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726001357; x=1726606157; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZorfYCkwdwEBbCGQLTXlj12nKqHDGDGFhx+qtIA9AVI=;
        b=gOnJRbLT2vaKBmEjwygLHAUvjbk8Xotm/X14K2VJOgjVN2yRl2cf/5OdWpCZQCAsis
         1zhsw921E4mG0f37DOFUbyECtcL2mQ15o7v+llbycldH8VvGB+BX53wcEh9AQPJc6K6c
         e9brsiJQPfEWr7Y0b/vuvXSmIhjZZ8Cq78vj5rbFU1SIBqd0SgEoCh+aCBhGzSqVmrAb
         yxwF27uQDRKLN3AQK5GDuGsT5e0GwoWpf0dT8Z8kd5J0acC//zXTNI0bCHieEZiurR3r
         PeONGFM8AmcCr59y6gmTwGpVysEY5tKPT63tE4Rmu7lRb7X0venuOqMiBbhJ9yj5b9pP
         hxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726001357; x=1726606157;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZorfYCkwdwEBbCGQLTXlj12nKqHDGDGFhx+qtIA9AVI=;
        b=EKVqAOak+zg/7vqYua4/zxsrA3CDAYCnUEP0Sz+y5lmqbySoKsER9tWovmVDdJQZ+W
         Ot6qRJ9HcimnPSZUDWvQQDfncX4FMzAxeqnNr6VfaB+DSu5W2IxoqPRLzIzkz+x5i3DW
         6bv0fehuUoMRtXBxqMYiqxZDcSPbJuQHsI+r7B1UmC2+K1iuP819C47d6eAk30F2Q3pS
         VAlF3ehqSjRKairYYTKjiYojZo4UTDNh/jZF1vg2aCkEA3XGT7U/BWscvSZvhiZylDXN
         DbPNz1rbKTUkTmda1zCdmSz4CMH+5XagZ8r8IwvMb+R8WA9lCj//a5Apil6ybAk8U2TA
         SiAw==
X-Gm-Message-State: AOJu0YyyeXJVS5viSxWrN61PNAt1QbuRfI12ej1JcPOMdmQaT8WdocqZ
	UUuYI6n9fwSaJnXjZmXSPKdxSd5wwLWr7lavDBQQ6ccIwDNJx24v+kIP2aAvB3pxllUvdR8NjC7
	nZfr4CZ/9CHngEZOduwjXpcQETcs=
X-Google-Smtp-Source: AGHT+IFQaydbTcq7MgsPG9jJoqbvX30T6urVZ2vL35Bz0+r8g9Hi6uBKulgUdzvheeTCZQJGYGcWO0JqY1YhCUHlkFc=
X-Received: by 2002:a05:6902:10cd:b0:e1d:2fce:1618 with SMTP id
 3f1490d57ef6-e1d34882074mr13827402276.13.1726001356602; Tue, 10 Sep 2024
 13:49:16 -0700 (PDT)
MIME-Version: 1.0
From: Zulkifli Izoel <izoel21@gmail.com>
Date: Wed, 11 Sep 2024 03:48:39 +0700
Message-ID: <CAKAWfyLVNrCzYoACGt2zAJ5K5FnBJkDmHuVAfmScQ3=_ahSEbw@mail.gmail.com>
Subject: wireless-regdb: Update regulatory rules for Indonesia (ID)
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_134918_849586_B04D8D0B 
X-CRM114-Status: UNSURE (   2.63  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 10 Sep 2024 21:34:37 -0700
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

country ID: DFS-JP
# ref: https://jdih.kominfo.go.id/produk_hukum/view/id/862/t/peraturan+menteri+komunikasi+dan+informatika+nomor+2+tahun+2023
(2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
(2400 - 2483.5 @ 20), (4 W)
(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR
(5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
(5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
(5725 - 5825 @ 20), (4 W)
(57000 - 64000 @ 2160), (10 W), NO-OUTDOOR

