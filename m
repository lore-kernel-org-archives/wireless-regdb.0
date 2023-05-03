Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=qPT7irL2+yOnixtqcG52vLYt7NqTiRglJbTCeFN/gAI=;
 b=e8HoDfj+JS9Gog
 kNUW2Lh9c+/30QCnZvybsvjukd0T/3LGhx8q0L5duinQN6sW9+jo5O54IVq08V5lRursEJX1aJOWA
 AbJ39TI6+K2bQbOurPvxt2yUn4bt3s0qsaqNJij/LYPCCfrVkoYCPpn5+7Zgl7IiKYtOwoCzQvP+X
 5uk7u9Bj7EYQ4E2mTPAFJqG+dz9bizenDBK+DXOnNEyMKR4lArniLMWIVTcvDANvYFihdpWx53wyX
 Ezvl1Aeg7xZeLtmtcpTxE7gXPQaVXFFCWAXNnWZdzdTr1nyKMtXOs+FmqG2v3/asBtz6syWOorQJ2
 aKzDduEuG5GdpyokB60w==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puGUL-005IpO-1G
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 17:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683135720;
	bh=oS1UqJvT9YwKZbIIzQccc+25t51qQGkqKy8e6NYb1B0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tuhf2MJYprCSLPF+JCuTXwtLUFAZ3nMh5eKl7xEvqf5Ua3GsMhfq4vuPLfGaQ4NJk
	 b/abPwpnBHuwwV8hKGPLVbW/cuJ6FSEPG29rZhz0P5mPsLJ3BHijeSYKG+DVW4ht1Q
	 hKuQ+nuv0uCVcBgCpWRKIrktM0R7CYGnOD2sHH+8/XcBuqrLcGYWfBYhdJRGdo/a4t
	 PAce9TzK2gN/Y7E5bK4Yc0IPOaZz8/hUXV4z8YJ2zAbctxVjBGvR07EYhf9Pn96B9N
	 jYeQ/uVW2zRTXkEUT1RTNbAAb/zhKXd06zrxrf756BYBepl07lq7T1ux+r6nytFPNG
	 vsY1vhPZLr3vg==
Date: Wed, 3 May 2023 12:41:58 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFKc5uAVGToHg68o@ubuntu-x1>
References: 
	 <lPLmWUrjD7qCP9xceeomrJkM3UROE54cq2gp0jV2M-FeSKypWU2OB1smaPcro_p8kRHjXUcZd31egElc_z46nBTC5IMr9l31VNApPck5V6E=@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lPLmWUrjD7qCP9xceeomrJkM3UROE54cq2gp0jV2M-FeSKypWU2OB1smaPcro_p8kRHjXUcZd31egElc_z46nBTC5IMr9l31VNApPck5V6E=@proton.me>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Hong Kong (HK)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Tavio Wong <tavio.wong@proton.me>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 03, 2023 at 03:37:14PM +0000, Tavio Wong wrote:
> Update frequency ranges and max EIRP for 2.4 GHz and 5 GHz, and add support for
> 6 GHz based on latest HK regulations.
> 
> Source:
> https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf (2.4 GHz and 5 GHz)
> https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
> 
> Signed-off-by: Tavio Wong <tavio.wong@proton.me>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

