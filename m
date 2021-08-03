Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sS9Kr9zC7rR27rFVXJYCVedprMjAJbzWspVZ7fIoS0w=;
 b=0Bnie00AaXtNc2
 a2A+JkpQMsR/ctjNKUoiZoIkevGJbMYpXQ5gTCCV225PEuRHNePrtIKwteX8tF7Q7U271z45WvuQH
 eYYWcUQOdi9de/XdhtW/+bF6nA1JVQ7Uo5J2NOjVY8uL/tOu+cAvqSGUahG7uBV/zWdry1O68RK6i
 d03CWz/o/ZqbO+VrxYxgiV3IPeghqdFEP2cG1qRkJJN4ETXoAQEZlOMtoqkjX/s6zdJGWF8scOEmH
 iTuARy/vkiTTVpddhwg0XQk9aDoAPsyGPqNYy1NbCqVUWJlA01e3a4L2/jGv1TeWMp8XhomZS/TB3
 Y3xg5wcZQDSxtqIwLG0Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAkM6-000rN6-Du
 for wireless-regdb@lists.infradead.org; Tue, 03 Aug 2021 02:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627958433;
 bh=2sYKRgM/qZ2S4y11Dgs9uZOu620rTaOVBulqDTl4n1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=In3S/rG7QjeIRtZcbXRS47C2iJcA2qMGFB/xy9sxPkv6z4nJhevZ6dDQ/QBQjXKAs
 GGIuUdy/mwj5mUDAMcaC/noAWq43ZomHvN4QVRaaOCI6DOnIeRZTRI9+P+uz0XvghH
 erMlrnXQYBFzwYmcICdxqFI5VrQTv8zsevLXnat0DdzG6xOuzJbnj9ywV7y7cXI313
 E2uDB17gDb8IcNiIS152iGKe8i95auBSQGhESbPfApat4SzxqJ60ayQfBkd9BMHvZ+
 0LCk3bOU/hCM8awsdxddRVWPEhji3OQzJuSHt3MHmNSCN3bRF/K/gXNbIEzIdzuq+O
 vyQL++3bNgSZg==
Date: Mon, 2 Aug 2021 21:40:31 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YQisn6rrXTBdoAwJ@ubuntu-x1>
References: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
 <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
 <YPgvMph+3vRbrol3@ubuntu-x1>
 <CANB4YXSDuYndC26KPkV+XqPkowbN54MMceuj7MNaxh+EwLN4kw@mail.gmail.com>
 <YPg83HXFIXDAEFx1@ubuntu-x1>
 <CANB4YXS64QtxsgY0bx_Ri7bWfTY_5Ry7PbGwaGT3QVZb380vgQ@mail.gmail.com>
 <CANB4YXQMDAxwk+b+wXsTg8OzFMa4gZHxNOZ6UoWT6McM9hEVcg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANB4YXQMDAxwk+b+wXsTg8OzFMa4gZHxNOZ6UoWT6McM9hEVcg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 6GHz
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
To: Timo Witte <timo.witte@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Aug 01, 2021 at 03:17:43AM +0200, Timo Witte wrote:
> Any updates on this Seth?
> can we just add the "NO-OUTDOOR" line then as i did in my updated patch, if
> the kernel does not support overlapping / identical frequency ranges with
> different power limits?

Sorry, I was giving it a few days for comments, and since then I've been
quite busy. The patch wasn't formatted quite right for application, but
I made adjustments and have applied it now. Thanks!

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

