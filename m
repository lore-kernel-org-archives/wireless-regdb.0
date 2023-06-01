Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=i4y3oXBZZKSTc4+SYU07biF0/p+RNMFCwaq6j5vg2Co=;
 b=bVfBeATdOZPbRd
 XYGItEaBF0/VBA4EvYGD6Tym923HnGD3DIpeZsu+YxKzTpGtMQvJDbIA8Ie0EzSzfXJsYOjsvssYn
 Mr0uGlFJwSGdQhWrzJesCUIhg39yI8Po/E7SNpnIqKK0z22AT0KHAgzbnqKfk0sMoOCsjrKY3Vi96
 6YH+kg6A2Ssc7oIQxHBV0a8XiAkASfbZZtyA/yx8iLA1Unmq9HIlozBTI1dPXbPEzCuPZMN8sn/vd
 NDveRt54N+gPSH5PY58EeS3wahvfCjOBmXXOQeMeXIIrNfGO3ydXou+CzAgEjCOpOTj2Gcrd/IO1R
 LoMqfKHdtyeCLrbwoZRw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4hhF-003alM-2F
	for wireless-regdb@lists.infradead.org;
	Thu, 01 Jun 2023 12:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685623588;
	bh=nWOwF7jHjQTlNKWsuTKi105DB1f/4Ka0O41Sv3trjXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YIKd+Xzqthjn+kK6Zg3dfksgBJ3vv2nkBSI9yTknSNQM6jkrll1md6d0jn/avCAqH
	 uYvg9R9id/K2uTzib8Cjue+BMQ8v01RG6FOXM5WR274p9KSNiQsz1B0hUqBQTbnd8s
	 FStZ5KRlKj70+YzV1EklBBYZ3IHrkjz2OcMzmcPYcsZx8NI4IJ/SdcqCy67SCPh+Q+
	 mqXU00eVgloPPgDO+xXbE43r6oyEAvHP/bJVk2/sOck0862rvLZPn7TYeRVzyn8/Em
	 r3XTezZepXsl31nnIKypaNsDvNY0a58v3S+K3LTr01PX3KAVE90gvFpB89bXQZ3pdp
	 r4wCaPG2jwTWg==
Date: Thu, 1 Jun 2023 07:46:26 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZHiTIrmlfzo6sn86@ubuntu-x1>
References: <20230525070059.1128726-1-kleo@hak.dog>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230525070059.1128726-1-kleo@hak.dog>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Philippines (PH)
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
To: kleo <kbeflo@gmail.com>
Cc: kleo <kleo@hak.dog>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 25, 2023 at 03:00:59PM +0800, kleo wrote:
> Update frequency ranges and max EIRP for 2.4 GHz and 5 GHz, and add support for 57-66 GHz based on NTC PH memorandum circulars.
> 
> Signed-off-by: kleo <kleo@hak.dog>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

