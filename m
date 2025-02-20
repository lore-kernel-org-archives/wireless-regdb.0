Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20135C021B3
	for <wireless-regdb@archiver.kernel.org>; Thu, 20 Feb 2025 08:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GzB0sOkF7NsSxjWiGGT1/ysRxqhHkY2o6UWHNWxgqU0=; b=iMsb5YhMn/N2x4u42ohykLBsW2
	w8n+TEedHQjraZhxbFtSsuEDfSRhkBUJuZAc5chiDCFIPbNBfDh3oG/sUJjO+mctO8bus7XJs6KgQ
	7nd6VVR25j/rK8ia1bn49Y2mZBJPMjUvRCufn1V2qf4S7Up2YFQh8Oav2umD1jGvAAkFeXVyN11Wj
	SIPZkBLhnXA3TAhidGJaTwzlSRj1fQiVhSUl4v7tspHeN4Y8uxHiEWfyLf1QrE9bE4Wrv6T+n7hMK
	JLpDL2iaz1rM13mIm8mgvEEpvVGGBg9yBG2xCALMfbArXIzn3oh7qwGpf4oayquedCkp950kQaYf7
	YehIj8pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2H1-0000000HScg-1ev3;
	Thu, 20 Feb 2025 08:51:11 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2Fy-0000000HSFo-3osF
	for wireless-regdb@lists.infradead.org;
	Thu, 20 Feb 2025 08:50:08 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 8154A5FB8F; Thu, 20 Feb 2025 16:50:00 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: Re: [PATCH v4 1/3] wireless-regdb: allow NO-INDOOR flag in db.txt
Date: Thu, 20 Feb 2025 16:49:55 +0800
Message-Id: <174004130216.1744486.17335599893056910422.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220003103.4484-1-pkshih@gmail.com>
References: <20250220003103.4484-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_005007_085849_E621FC26 
X-CRM114-Status: UNSURE (   7.34  )
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

On Thu, 20 Feb 2025 08:31:01 +0800, Ping-Ke Shih wrote:
> For certain regulations, frequency range is outdoor only, which flag should
> be NO-INDOOR, but db2fw.py doesn't allow this flag.
> 
> As suggestion, only fill NO-INDOOR flag in db.txt, but ignore this rule
> in parsing to binary.
> 
> 
> [...]

Sorry, I had to immediately do a force push as I mistakenly squashed in
database binary changes into one of the commits.

Here are the new commit hashes:

[1/3] wireless-regdb: allow NO-INDOOR flag in db.txt
      https://git.kernel.org/wens/wireless-regdb/c/3dd7ceb8aa75
[2/3] wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and 5Ghz for 2021
      https://git.kernel.org/wens/wireless-regdb/c/4d754a1d5a3e
[3/3] wireless-regdb: Update frequency range with NO-INDOOR for Oman (OM)
      https://git.kernel.org/wens/wireless-regdb/c/8c8308a154df

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

