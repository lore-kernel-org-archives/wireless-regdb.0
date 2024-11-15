Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E255AD60CFC
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 Nov 2024 16:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0tllZx9Of3KLpu5YjG9NlyM0UxxcMwiUmdsYpdP5M5c=; b=VoBjW+YJARbToJ6qu2tTVTR4lJ
	0jMhx6SpdH5ENUAdxfpJkbIXw+L40qLKUcEDxH2s5bLZr9C0eON1s4xci9Uv2mM4KHhsGN4qDXdKu
	DfPJjfkL0xNmmGLdsKtuniBWCoTjP7tHFELkUKx3cNDkPcG6Yp6qsvD53U+25/uFBbMSiDEt0EHhM
	g375E1su16ZKydNF0OrmRlEa4kEKZJcxvYsGpiw7M/23Hd7xdsfT6O1XiqSuFm4GaPM9flQOmmSmj
	Fsiyp+cUvtQ5Qcli7Fron3VXPvhzHyl/OBcrogMHfOiza2ii6C+VFfHRabW6e8IXj7GSARU3huPRr
	pEF8t9Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDRIX-0000000D3oH-0f7l;
	Tue, 19 Nov 2024 16:41:53 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2YL-00000003yaq-3li9
	for wireless-regdb@lists.infradead.org;
	Fri, 15 Nov 2024 20:04:26 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2114214c63eso20087915ad.3
        for <wireless-regdb@lists.infradead.org>; Fri, 15 Nov 2024 12:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731701064; x=1732305864; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0tllZx9Of3KLpu5YjG9NlyM0UxxcMwiUmdsYpdP5M5c=;
        b=A2ue+d0Ew03HnmVsRp9PhQlZ/9un1yE0xPnCYXp9herJrJYw4Fql+W7mkCPmv8Zz8x
         DXVMr+NQ97YpNyj3pngvffk7LOeyXFxe5viBQxtp0TgGWnwDH8TLebnV5Nw3E1aV15iB
         xHzGodKsIzMdTxfzb8R4BE8MBamtf4eEzLoubNf8+Cha1qwCHVZr33KpWJ0piOj4wGsr
         P1Sl6MDKg2E91nKO94E//1zue8t+3+M2vQlJLmRLdGgAQpoHgjzXTKhbWQCOZzZZ3hYQ
         7zYPrZhS+xDluFAinhhQPaQ381QhH5ANRMgWAq6hkssg51/kWwxcAcEJhcpW0VGZxGyb
         9jxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731701064; x=1732305864;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0tllZx9Of3KLpu5YjG9NlyM0UxxcMwiUmdsYpdP5M5c=;
        b=i+oQRVggdlSn/wa1oGivG1vZsxV3W6nhAfwUqxhINgbcoiovf7SUbNjqUpHmc+a6ua
         HT/Gh/soSWPKSoyUYgHi+WG5ML5MEtNW0ttWWDfmLJiNpIP5GlDkQeABTPgHylm+Pj2y
         2TbZtJZKgIv1Uu29/RlWCSfBzC/TUWhS5DOzL2FsYexL5DwIqF/zc+IaCEsOeD/g8Z3V
         NN72bY9YSKMfFUQtjivAKv7ud/UhB6JxKXe/maQx7ndMD5FWEyStJEEy5pPCPeL8Kuqe
         Y7doOf15OL3yamLOK1NnLx50roXfYEBVkp5P2EagrLuMln6d0AR9YWMz1yuSrrhqK4Xz
         NuPA==
X-Gm-Message-State: AOJu0YwtevB9mp08oINjKQjOL/A/zLwNI+YMgOKqg2H3e8JzINhnichu
	JOWM4WOmuaygNH+s4pB0x3wXf//eEIeY4erVgzOuhkHFCAEplmUI5NgixZ3RyRme0AhH7jlPuI+
	8iPhUTsZZ6h42RK2lIBEV8iYg/N8=
X-Google-Smtp-Source: AGHT+IFauZMicTOO3TkdEKamOpGX2av/xIsv4r9p0AXBq6ixrhCnUDURTGCzCtODU/piRSQ6f9VSdghZnQKR7djoz8c=
X-Received: by 2002:a17:902:e742:b0:20b:5b16:b16b with SMTP id
 d9443c01a7336-211d0ebed22mr50930805ad.36.1731701064096; Fri, 15 Nov 2024
 12:04:24 -0800 (PST)
MIME-Version: 1.0
From: Ivan Bulatovic <combuster@gmail.com>
Date: Fri, 15 Nov 2024 21:04:13 +0100
Message-ID: <CAPGdDAmPp80VEZ0TG=cS3QAYKqELHfqChid0wYZ7eLAENFY86Q@mail.gmail.com>
Subject: wireless-regdb: Updated regulatory rules for Serbia (RS) fails to load
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_120425_934124_33C7CFAC 
X-CRM114-Status: UNSURE (   3.97  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 19 Nov 2024 08:41:25 -0800
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

Hi everyone,

since commit b44edb2eaf3a917fbd7005f05c6faa202c984152 regulatory.db
fails to load when country is set to RS with message:

kernel: cfg80211: Invalid regulatory domain detected: RS.

Offending lines are:

1646: (5725 - 5850 @ 80), (24), DFS, AUTO-BW
1647: (5850 - 5875 @ 80), (24), AUTO-BW

OpenWRT is impacted, but I can reproduce this on Linux also.

Best regards,

Ivan

