Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB1EC83F09
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 04:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Message-ID:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lTPQ+bOsMizd8mwpS0ZK+H3wSTump4BOnueKDI6hx8Y=; b=StfqeRfEvCoBdL0493BzEaWhZL
	SRj2PZeLATuaaHn3GBpWdBYNRp0uJ+D4/JnQkApfvFEJ93KrXT3Fh1WboTF92IbPiZLpWJTI0hlhm
	51CBjlMOalN+rN8jc+oLAF9Cpa8Ipy9iMvCnP5PvHi0sW1XNGMvd2GFuZDffZwec0c3un7ulC2Kii
	9O/CsPbE8ORx+1JqwzSiTY7d30V1mvY2vjh8QqEXZhy85QQFvYbEjPt7ryGTVDnz55lSGbBxDLTKU
	0TlbMIIkFws2w+Ef92mUbYWlT54YKWVoi7G5om4i9CZ9k4ljojI24OWdVMk0oLIWWzo/3uMWeNvtv
	i1Ba7wlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ05U-00000004GTT-3lVK;
	Tue, 08 Jul 2025 04:37:51 +0000
Received: from vastu73.nic.in ([164.100.2.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYznm-00000004Ejt-0oNi
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 04:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=nic.in; i=@nic.in; q=dns/txt; s=NIC; t=1751948370;
  x=1783484370;
  h=date:from:to:cc:message-id:subject:mime-version:
   content-transfer-encoding;
  bh=8zVyEFYwNm9gNs3KtoxVg4Qx4JtFh744mvI2eIJkQS4=;
  b=qEZIqp74w489zYuHQM+ZqL9SvmidrgRdusUVKdvh8cTjX2M2ub25SijQ
   Iu6XRj9qquLlI9QSTa/v8qtLAi2KCa7LGR0ok93D3IVYIypKK06Ng7JkR
   SrPgiW4gjPzktzQ3DQk8xwfEklosJih0oyzMxR9flC7aCa7KEc/lKu/hQ
   I=;
Date: Tue, 8 Jul 2025 09:49:06 +0530 (IST)
From: Gaurav Kansal <gaurav.kansal@nic.in>
To: pkshih@gmail.com
Cc: wens@kernel.org, linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Message-ID: <1456091345.1517853.1751948346004@nic.in>
Subject: Re: [PATCH 2/3] wireless-regdb: update regulatory rules for India
 (IN) on 6 GHz for 2025
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Thread-Index: fUcE6nIo7yjuqNMY0G+Oz4IZtHkpcA==
Thread-Topic: wireless-regdb: update regulatory rules for India (IN) on 6 GHz for 2025
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_211933_021910_75887269 
X-CRM114-Status: UNSURE (   4.56  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 07 Jul 2025 21:37:47 -0700
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


Hi All,

One query with respect to adding EIRP values (or max power) in the database.
As per draft regulations, max EIRP across different channel bandwidth will differ in 6 GHz band.

Like, in 20 MHz channel bandwidth, max allowed EIRP will be 18 dBm whereas for 320 MHz channel, the max allowed EIRP will be 30 dBm.

How we can add this info in the wireless regdb ? Apologies if i am missing something.

Regards,
Gaurav Kansal



On Jul 8, 2025, at 06:21, pkshih@gmail.com wrote: 

Chen-Yu Tsai <wens@kernel.org> wrote: 

BQ_BEGIN

I see. 

I will drop this for now then, unless Ping-Ke has any more information 
on this? 




What I can find is a consultation [1] on May this year. It needs some 
time to have decision then. 

Please drop this. 

[1] https://www.trai.gov.in/sites/default/files/2025-05/CP_28052025.pdf 

BQ_END



