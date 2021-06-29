Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=x1UW7EYNJzaRDkv8mi10KQ9Gn+EntadJh6ok6GmpB7Q=;
 b=c+kpTMiOZwjPNC
 EKwrG5rOLjyMv/cimfnadQuN7Zrja0CCNLgvcxrbsoNNiKFQRbQX4PTK/kUK2i6jxuBqKiovaUq58
 BDaNIO9PpCl8RoC9fyENrOzXNACNDKHtbDtsR5WACyCDeePnUckveQYfhLRs28v172DCXLk+WmJN8
 itj29UZLfrwQ6V/a+RC44VOAKCJ3zRiVBh9PeNMMmR6e6/CL+6fklGyY2lF1fnF1/v9RBB5EvkmxF
 gdqF7U7WsuetoztBS1GnLdmP1xGcPoPFM9WE4pregomRupxpnDIXhaTJteBuPeKnZVRaY4k8rZ8Kl
 We3z/GUIGkXPeiG5gfuw==;
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyM9K-00C99B-LM
 for wireless-regdb@lists.infradead.org; Tue, 29 Jun 2021 22:24:12 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id r135so1617489ybc.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Jun 2021 15:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anyfinetworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MEtOfQL3ADA5FDFicOuE4Wr9ArCo2gwYg8c3e2i9XPY=;
 b=dKRj+B1dFf2yd8lC8RTlIweT/AHLOhtU92ZO7m7mYh3xsD4L5SjSXAQDW/scy2apuR
 014AxP2F2s3fHMpqgtlfXgZ3ntesQX5YoWXLll4zZ4CAcPrwX07xECBJT502qj6luClH
 znbHg7N4b4YgqkOzUmZ3WcjIXQrUQSdFINf+Xn0oKe9I9sruOAENVgLS8tN0WeNzm2CV
 yoyR8sgq9QSy8YKyyZCZbFVQGZYhHQJDJlnLNnOBMw4VWVyGnrO2NH9P4BUdUwJfCHJA
 J02lVD7D4dPMT5HYvYcgccFr3QiCjQlZFKX3vUiPyJJ8NsLGRqtfc8nuUTwWKvpSlfRe
 t3tw==
MIME-Version: 1.0
References: <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
 <YL9pQL+JV8CVDdaH@ubuntu-x1>
In-Reply-To: <YL9pQL+JV8CVDdaH@ubuntu-x1>
From: Johan Almbladh <johan.almbladh@anyfinetworks.com>
Date: Wed, 30 Jun 2021 00:23:57 +0200
Message-ID: <CAM1=_QQ-QG+mCLRxuY26S17zMb-gVEQNf0gWs13LxGYFk4mMYQ@mail.gmail.com>
Subject: Re: [wireless-regdb] Different indoor and and outdoor constraints
 for the same band
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 8, 2021 at 2:57 PM Seth Forshee <seth.forshee@canonical.com> wrote:
>
> On Wed, Jun 02, 2021 at 03:05:56PM +0200, Johan Almbladh wrote:
> > The parser dbparse.py and nl80211.h understand the NO-INDOOR keyword,
> > but I cannot find any occurrences of it in db.txt. Furthermore, as the
> > reg domain rules are processed by cfg80211, the supported frequencies
> > are annotated accordingly and NO-OUTDOOR is mapped to the flag
> > NL80211_FREQUENCY_ATTR_INDOOR_ONLY. There is however no equivalent for
> > the NO-INDOOR annotation.
>
> Correct, it is defined but completely unused. I suspect this is because
> restrictions have been more common on outdoor use rather than indoor.

Yes, that makes sense.

> In principle we could have separate rules for indoor vs outdoor use, but
> the regulatory support in the kernel can't currently deal with that. So
> we would first need to add support in the kernel, but this would require
> care to ensure older kernels can continue to use the regulatory
> database.

I have been looking into this a bit. From what I can see in the
regulatory support code in the Linux kernel, the outdoor environment
mode could be handled by the same mechanism as indoor mode uses today.
I can put together a patch set for review on the linux-wireless list.

Backwards compatibility is more difficult. The problem I see is that
the current kernel ignores the NO-INDOOR flag. If we add a band with
this flag set in db.txt, older kernels will incorrectly use channels
in that band. Solving this depends on where the compatibility is
expected. I understand that db.txt must be portable and compatible
with older kernels. From this file a binary database file is generated
by the db2bin.py script. Does the binary database also need to be
compatible with older kernels? If not, one solution could be to let
db2bin.py take an an argument to include (or not) NO-INDOOR bands in
the binary output. We could also bump the file version number so that
older kernels won't accidentally use a binary database generated for a
kernel with NO-INDOOR support. Otherwise, I see no other way than
somehow putting the NO-INDOOR bands in a part of the binary file where
older kernels cannot "see" it.

There is also the CRDA tool to consider for backwards compatibility.

Let me know what you think.
Johan

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

