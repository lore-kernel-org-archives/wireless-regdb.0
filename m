Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=iZvw9NDXhFeyRCc0u1ziCFZ9ZobJJlLlZyQi/gkV5kk=;
 b=20+jo2odR37Iod
 R2v50707zkPC20lLqVm4RMj1xZPQnK0/HP9ApghGEKmc51oa+Q5neUozuNmB7U8EyQxNV1Ikidvku
 b5RuQ6kN6aTg+/O+L8lYTJFCxkcjq7wVFhGpfQYpK1qeJVRhygbslGiF5b+JX54QobuG0Pyvw0hcK
 nNqwuPFoyMuIA2aIA3YGhOHfgnppAtU7X8oWrD3tEZ7xVlQqxawAYq0ap4MbUbjPnEwB39x4MhnM/
 wFaYS3Ythu7zkzxZmv2pGox5bN3Oo4eprFRcN1sweLE/5/fBPh7Ylx2YNPvk1Ln9KKGdIGkTfzuNB
 H+yUnEaM/DZpO5Lt3ypQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4qlF-00An3l-1L
	for wireless-regdb@lists.infradead.org;
	Sun, 19 Nov 2023 22:59:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700434766;
	bh=a8y7BCPGpWZ4azsUSnWEda0HJ2LmZLWegB7VygunxCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJh2SqQEaerJlQiKZxmUAS2bHiAJdkxghEtR7KXTxwR9fR9/Oa3EkpepPKINQtN7d
	 WAByXCgCb4HWY3Vnx+g6vj5FkFY3/wvfNs+hb0FgSKii1K2ky9M8A/caoDHd3N4KwY
	 JdobaOxpYwMpT3CdG3uOf8HFfB6UYqrcmLn7iMR3p/FLsO6beSZaAnR02Vsh7x57DD
	 Hadkz+H73aBUI3qDM89vAraKhM3PW5chWQDk564l1LGeVu606clxwIXX5VyqZ+q6yT
	 TU+j9/lZcgqvsUrVAAqMDsYHsUwct/tvcIfu1KIWXuwV0TMAW9LqCOAxXXZ8CX8IM3
	 HLUZsATcpuW6A==
Date: Sun, 19 Nov 2023 16:59:24 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZVqTTC2rqNpKHptJ@ubuntu-x1>
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
 <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
 <ZUAUahZakEvOXpip@do-x1extreme>
 <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2023-09-01
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Chen-Yu Tsai <wens@kernel.org>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 31, 2023 at 05:32:15PM +0800, Chen-Yu Tsai wrote:
> > Johannes will be the one who needs to accept your key into the kernel,
> > so we should wait for a +1 from him at least before we really get the
> > ball rolling.
> 
> +Johannes for his opinion.

Johannes, we haven't heard from you. Let us know if you have any
objections, otherwise I'm going to start moving forward on this.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

