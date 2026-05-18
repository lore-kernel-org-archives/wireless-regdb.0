Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE687CD343F
	for <wireless-regdb@archiver.kernel.org>; Mon, 18 May 2026 19:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Date:Message-ID:Cc:To:
	Content-Transfer-Encoding:MIME-Version:References:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=sBrGlY1lYCCIxEza2kotgft47xX7trkb8h8NhPnQecE=; b=XzQNa8WUO5yJAmWQiRunXM11pW
	SbEqInqZ4DXjGOEmj5KqdUgv81OxAz8EMkygd0rPYtC9F1/eCHCgdJPawQaClE42Kl5fmWdjGay0r
	EfHSkY6eTl1QANQwYPIPVpU9cf7gaKdpju+WHBRd+dfngWY47VpXnGxXHefMbVb+GSlQ4AEYJNOec
	GcjYYZ+1UZMlYZHVrGWXPFbRqmlXBkP9OCw+OoVJx+6ccXX+jd8HqgtvvUc+jpIf+aRRx8L70VoNm
	JF6XB/amEamMOmrx36p1ByqMYq4FjNeW3+NU+L4o9+UAQ4wIXiWEbOiqyajo/5nJo8Zxjuc7bCKEC
	22eyQb5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3hl-0000000Gh1I-3q2Z;
	Mon, 18 May 2026 19:32:45 +0000
Received: from smtp-outbound4.duck.com ([20.67.222.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3hj-0000000Ggyt-20pI
	for wireless-regdb@lists.infradead.org;
	Mon, 18 May 2026 19:32:44 +0000
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Brunei Darussalam (BN) for 2022
References: <CAGb2v67NMBPs5bbNfoPNjK1mum-y5FsqAa_HVTq_P3e48Dnh3A@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Bar: /
X-Rspamd-Report: R_MISSING_CHARSET(0.5) DMARC_POLICY_ALLOW(-0.5) R_DKIM_ALLOW(-0.2) MIME_GOOD(-0.1) R_SPF_ALLOW(-0.2) MID_RHS_MATCH_TO(1)
X-Rspamd-Score: 0.5
X-Rspamd-Action: no action
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Received: by smtp-inbound1.duck.com; Mon, 18 May 2026 15:32:39 -0400
Message-ID: <66E5D7BF-6DC8-4A45-97B9-4F5F958DF484.1@smtp-inbound1.duck.com>
Date: Mon, 18 May 2026 15:32:39 -0400
From: hfzz7@duck.com
Feedback-ID: :isSendReply:isDirect:duckcom
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com;
 h=Feedback-ID: From: Date: Message-ID: Cc: To: Content-Transfer-Encoding:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1779132759; bh=sBrGlY1lYCCIxEza2kotgft47xX7trkb8h8NhPnQecE=;
 b=kZKxhCuXsG/+5j5apsx8MlyPH/hVY0QvNkAS4KNhCc1K7Snk4AXhAhYnJeTo1UR88oQsQYo0+
 LWIcAP3sxWm/WWq5r2su7NR5dmomGABleY9uwPBqp8M7yQsmHoi5oKXws+C/+BKRniR9u7Tof4M
 r8ZdGQ1GVLRVSBysCTE1FEY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123243_817554_DB362011 
X-CRM114-Status: UNSURE (   0.64  )
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

 Yes, that's fine!
 
 Thanks!

