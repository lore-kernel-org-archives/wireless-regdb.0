Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:
 References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=McCkCmx4loIHbRGgBirSyQ2J5zT3zx92+CA7TCxWitM=;
 b=O4pkz5dZe/J5rpT1xfzjrsjyt
 XurUPy/Bpw+eSxWaO8HA28pc9HqE40viDQ47VUN5H2nw6sO1WM0CK2P7hWI6Xxgq5oMHnuTNwFQSV
 LDd8JFfqA9rQ8cuiQzoe2T+2eHM3syqDrYejEz1nmxR2xbQjH3fotb6fmCdopEvtEfG9G0dwYoFSb
 xKFHMOzfI6XzvNUrzrEVvmgXfZ8uTdD1qhIw3UnclviI/CtdqVYjQx2awf0TNCN5LxWCejFr60hff
 UnysjYOgZfYCus5zZRjAJkSEP6fveGYphVXb2ta9EVTEVT/j+moApSqQ20S3t/obA8MV63BMfYXb/
 XvxXvK+ng==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5V5W-0000fe-8u
 for wireless-regdb@lists.infradead.org; Fri, 29 Jan 2021 14:49:31 +0000
Received: by mail-wm1-x32e.google.com with SMTP id j18so7035373wmi.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 29 Jan 2021 06:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8x3dwCxyxd3ecujcWOb5Kmxgok8U3oy+fCruprf7TZs=;
 b=kU3qqs4Yn8TwBh55a0vXbdUvkWK1HZ+o1RlQ902DjF1VxlCeTcQb4zG4vep4BwAer1
 //a9i6PsGDOU3DYTQ0xq3rIZ6/tkZfrbgW4BVr9dpA8x5tzWKIEE1eJo1avmJXDKdOoZ
 btrZzNOv+hroCa9RqiVyPm8bC/v0mqR54LRqT64UsPBA+CSQKmAujgvm9Vxur0jlJ00a
 7tVh674iqIgZsyOTDNrKQqODBhyco2ZhUHrsEzKRHhrf9dRCs91oVZYUQnrUFYSNlYIY
 n0u3qIRe4wQZkt/6XglZsgtCf+DE2jdzd2iX7PHOWkjqducvsH3SEyFe0+XFQKNO+Z6j /Tvw==
MIME-Version: 1.0
References: <20201222191738.56240-1-illia.volochii@gmail.com>
 <20201222192329.56983-1-illia.volochii@gmail.com> <YBMTdvq71TGJjbvR@ubuntu-x1>
In-Reply-To: <YBMTdvq71TGJjbvR@ubuntu-x1>
From: Illia Volochii <illia.volochii@gmail.com>
Date: Fri, 29 Jan 2021 16:49:16 +0200
Message-ID: <CAGoMFrb217ey=QAfnbXVHX_YUzcfXTCdYpTVEo1DuXRuLEdetg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Ukraine (UA)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

чт, 28 січ. 2021 о 21:41 Seth Forshee <seth.forshee@canonical.com> пише:
> > +     (2400 - 2483.5 @ 40), (100 mW)
>
> You mention that some conditions are required for outdoor use of this
> range. One of those is TPC, which would require reducing the max EIRP to
> 50 mW. There's also some language about the SSID format which implies a
> license might be required, but it's not entirely clear from the
> translation I'm reading. Seems like it might be best to keep this at 100
> mW, NO-OUTDOOR.

I agree.
Could you please add the flag while applying the patch? Or should I
send an updated version?

Thanks,
Illia

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
