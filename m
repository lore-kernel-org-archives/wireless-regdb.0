Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ORPVd6YzqwhlX+DMR++vZVV/r1YW01VBuh9JBzcx8yw=;
 b=DqB2wPLfwzh6g3
 s/2aueT/JVVsYyHKvRq0JgmrQ6+41dT7cejgahm9Kadx+xXhsY3KJPs0LGqE5oh5UtGIGj+vabZa1
 LxfkbTLAPGk+ErpUuNnlPIlhVBkLbK64eZHX9/aXOps1hOukW7VkDCO7N1foSBlq1hNYTg2kbwS0N
 DfVeGFfiZHLHAkY1ZZ7+/aEt/upxNpBeLkP3NW9+HHzhS0sJjIq+MNQqgeZZb6hXTO0yMSnIBAVZY
 0flLplHFZAQ+7qyijaUl5A+KDQ/RUz+/oRXenaFGmz2F3wotSw0MN8Yn85qePnvz5oGOnMhOtRMbC
 tPs9OMkleT0ze/dMQUHQ==;
Received: from mail-oi0-x231.google.com ([2607:f8b0:4003:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFgAC-0007QD-Ag
 for wireless-regdb@lists.infradead.org; Tue, 30 May 2017 12:22:18 +0000
Received: by mail-oi0-x231.google.com with SMTP id b204so108628664oii.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 30 May 2017 05:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4nBqfTWwMqmkdeXWVcaAt/XWtBMI39/wK8NEF964mhs=;
 b=HNHVl9EpcWqpKj5ndvR1GOyYIzzb6PB6iPxnjw1c75/D/C3vbXV09OPHdawxNGHMt4
 a8cF7xI3Mw3r5UUJloLkymqUU9ixmt7O2mCgKyl0l5TmtjlNNSdftgu36b756INpcjKa
 wWFOtHLblofIRqzlj+uyvUg6Lr72BDECU4mKfUdXXLx3k8KZxJhy4xj6dwilWQKLCuZ2
 uJXwJYHv0wT0dCYTxbBHl7f/arc9eFOckmpYTGlC/Uzo+VJsjPLUEdPXRlxzFiuo3vJD
 liVF/IPLw9oYzhuKr+n4ZT8e628R196gcEFMgj2oRlzkFnKPYR7dsy4woEkORZDtbQvi
 hIrw==
Date: Tue, 30 May 2017 07:21:51 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170530122151.rms4qp6q4nmd6wwp@ubuntu-xps13>
References: 
	 <CAOjtFLk8yPzHP2zUhEB=nY636K1NRxT8z8oonv7K3ibSHZ-G9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOjtFLk8yPzHP2zUhEB=nY636K1NRxT8z8oonv7K3ibSHZ-G9A@mail.gmail.com>
Subject: Re: [wireless-regdb] Official vs latest releases
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Mauro Barbieri <mb@hrt.email>
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 30, 2017 at 11:49:27AM +0200, Mauro Barbieri wrote:
> Hello everybody,
> 
> Please excuse me for this newcomer question. I googled around without
> finding the answer:
> 
> I found the official wireless-regdb
> (http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb/)
> and many updated releases
> (https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git).
> Do you know what “official” means ?

This is the actual official location for wireless-regdb releases:

https://www.kernel.org/pub/software/network/wireless-regdb/

The other page is owned by Luis and seems to be quite out of date.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
