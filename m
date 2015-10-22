Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x235.google.com ([2607:f8b0:4001:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpKL7-0004rD-CN
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 18:11:50 +0000
Received: by iow1 with SMTP id 1so100131851iow.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 11:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical_com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=bLfRjAWhc8lLJJNyZMx2lS11xNZkAGWiQWpPf/VsJBE=;
 b=LtnWj6t9MDVOBbrkS76/l4EGfyvppeL5MSiiBds58wihzDm8f2387gGTZuCUA+ELnq
 2VYGKdV9/dkdxLvD2XfrofGUADDLENTBPHMZ6v5PyxkCFltSHpYFaDzc55YeSHTuener
 hHpH0qmTnROHgmTPD0/CfpB8k6uxRzYw+gHKprCg7QjyqZSjfUOJRlEh3Nu0XUWrN8PA
 iKwmmtCkBWbjoy4waEQHVHy5JM63RPW5tl7VuHlnGdcZ732TWAVK+v/YDilSBnt4SuHy
 +vq8lprL8mHYHezRF+9NBE02FPIGkJUc7wJvRTFzVs/kbrqgEkvT0nZRG0OBFLn1kTBh
 Fpaw==
Date: Thu, 22 Oct 2015 13:11:04 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151022181104.GB116932@ubuntu-hedt>
References: <20151022152316.GA6944@ubuntu-xps13>
	 <562915D0.1050506@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <562915D0.1050506@gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2015-10-22
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
To: Rick Farina <sidhayn@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Oct 22, 2015 at 12:58:56PM -0400, Rick Farina wrote:
> For automated testing, is there a way to test read the database to make
> sure the key works and the db isn't corrupt? I read the docs but I don't
> see anything like this.

I always sanity check that using regdbdump from CRDA.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

