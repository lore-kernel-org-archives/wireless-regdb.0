Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=uewJE7RDLPPnNxRLSRaub5gUaazDH52vO2aOsvSiUPw=;
 b=WWhv6O3FtSX+7Y
 NtP6f4k6QlmOjGvWmU+gHwiNI1Q+H+eeKd6cOtO45dqloJ+uwEBLBERiU8PzQwbYtbci+UWpxcNB/
 3BXPgHe3RrKlyvxg2y9GDZmgivLVt9s7lYio4rhJtuad0eKWHXve1HlhdLwjWFSTwPhrbiQYzqJI5
 j9c88Ptb2/uHQ+olVVsws4SmhnW7CU7/hpQ1maCGShO3W4mz+VGoIt+Vj/CekeuaFJsdlzM8wV+Fw
 6qVAo1JBNqnZUixyzViL9b0UpfKOhY7G2mEzzwDKAcQdD/8o9kyEs1K5Mq/sOLjD8Gr7Ka97AMgn5
 /WcDO280UcEmtTBwC1PQ==;
Received: from mail-it0-x22d.google.com ([2607:f8b0:4001:c0b::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvnTy-0003gN-Uy
 for wireless-regdb@lists.infradead.org; Wed, 05 Apr 2017 16:08:33 +0000
Received: by mail-it0-x22d.google.com with SMTP id e75so85690102itd.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 05 Apr 2017 09:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iMERW4hc0bDzQdSGXrbFcw7QugagOde3bFYmXosCPM4=;
 b=Tj4heHukEKMFQut8dzkLqpVgfelF0MqcbnlunuheG3m4lXLaOBhZ72DdTvZ2qFqr64
 HzNJJQwsozvMsPY59herIl1b/pktVW8P9tbjHnFnPQTaONeGSmcIxXV803mfLBUsAz1N
 r55oX6uzzO1Gof5oDz9F3MGyNG4QEr88qXCQYgFqTSUBkhBkZB5lhDQS2wSUEUqb+X9Z
 jeaiHniA7xMC6VGgglb+891ZY+OCXiYVLvydy1EDkSSe3mkvRvn0AtiehrrHG/25dRJb
 xiMtfzJU5nVUhCuhLo7VuOpAotEZa/DhS9NTNUM9GuqYdwlQipL9hdIbrM/UsSBOJcF4
 kZGw==
Date: Wed, 5 Apr 2017 11:08:06 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170405160806.GE131833@ubuntu-hedt>
References: 
	 <CA+XFNZ6WnzJhegQfo-zRk2bbVOT9U4tPHYmPhYdwOXjBSknP0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+XFNZ6WnzJhegQfo-zRk2bbVOT9U4tPHYmPhYdwOXjBSknP0g@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Set NO-OUTDOOR Flag on Canada 5Ghz
 5150 to 5250
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
To: Aron Rosenberg <arosenberg@logitech.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 30, 2017 at 07:04:39PM -0700, Aron Rosenberg wrote:
> wireless-db: Update rules for Canada 5ghz to add NO-OUTDOOR
> 
> According to [1] Canada requires NO-OUTDOOR to set be on 5150 to 5250
> 
> [1] http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html Section 6.2.1
> 
> Signed-off-by: Aron Rosenberg <arosenberg@logitech.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

