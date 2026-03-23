Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 633D4D58CD3
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Mar 2026 05:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mk4KhCwvPLJIgjSWM84BWyhnx25J5sLHhMgbtunZjAw=; b=vcNxchvB19o/nbWyd6QaFlaxkP
	a8GKO/mdC965Bnk5L/zMcpSAzViXIUalbUdqZzgluw++5NXOHKhBpKpen+K23gE2BH5xDJMd4aYzw
	ocv8kwOsQxsIE69dzTg/EXcXgqXBgkM3ndSlfXM/HXJzXEvo3GfO30r6Pn/O0JXpJOILNaY1HYkcQ
	fPzY0uUBWiTufzKAkbQmM8+OhS4fboClzuT7OPTHPyPErumoyMSCS/QlciW/84RF074nLZtK+QrNj
	6a69oorGN0259/5tnGfwuum+4Y8I6kotZTsiyM6RVf2YXF/BgNu9BGQGCcgq4A4i76eBzS4r+lyeF
	0Q73HJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XbA-0000000G34F-2iVN;
	Mon, 23 Mar 2026 05:13:08 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Xb6-0000000G33j-0q1O
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Mar 2026 05:13:07 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 486865FBB2; Mon, 23 Mar 2026 13:12:44 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: druth@google.com,
	Ping-Ke Shih <pkshih@realtek.com>,
	wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	Johannes Berg <johannes@sipsolutions.net>,
	Gaurav Kansal <gaurav.kansal@nic.gov.in>,
	Degrader Snehil <degradersnehil@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
Date: Mon, 23 Mar 2026 13:12:40 +0800
Message-ID: <177424269386.1094638.13596680362967400436.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311085141.1634383-1-wens@kernel.org>
References: <20260311085141.1634383-1-wens@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_221304_401073_F7F2DB6E 
X-CRM114-Status: UNSURE (   5.52  )
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

On Wed, 11 Mar 2026 16:51:40 +0800, Chen-Yu Tsai wrote:
> The Government of India has officially opened this band for licence-exempt
> use via Gazette Notification G.S.R. 47(E), dated January 20, 2026,
> published January 21, 2026, issued by the Ministry of Communications
> under the Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy
> Act, 1933.
> 
> Gazette details:
>   Title   : Use of Low Power and Very Low Power Wireless Access System
>             including Radio Local Area Network in Lower 6 GHz Band
>             (Exemption from Licensing Requirement) Rules, 2026
>   File No : 24-04/2025-UBB
>   Gazette : No. 47, CG-DL-E-21012026-269488
>   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communications
>   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f6907934d17d0015ab5.pdf
> 
> [...]

Late notification.

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/5db6ce73e616

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

