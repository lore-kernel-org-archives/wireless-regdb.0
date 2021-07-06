Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=gR1RJsNAGVzZfXfoZqcHBwRoq1A/FWV5COxM4rO0byU=;
 b=3t/IMgAvjPlCgH
 2mlNTAGwANUS/yM7xp8A9JqTEJfmaAn0i0ItAoW4gcChDmkXBb4gehkU8vDe2VJfG3PXohDh4pmYk
 ANQiFwS61iK3FqKT+T3oBu7TSESacNmxwMQeF4V91kut4QrfiX0GEsgNB6an+I2zDvDJ9+hByEadb
 fhMa+TDAU4j/mmFBVtkGHUpN9PFIrBnWUoGoi6WR7xXXLg0ZqhFbJ29W5B6J1gzIckiM0zkgbp66S
 FqSj7LvQUm27+0lVQ1JNnTgvR7PxUm2koBEYdoynZ7S/7xAg8S1jaoH3wVe+YCCIuSGR8J9TnbTy7
 JPFR/E7ZnHzLo32PId3g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0nzR-00CH7M-UH
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 16:32:07 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1m0nzQ-0004UP-Hx
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 16:32:04 +0000
Received: by mail-il1-f197.google.com with SMTP id
 a5-20020a056e020e05b02901ef113bb0fcso12886935ilk.16 for
 <wireless-regdb@lists.infradead.org>; Tue, 06 Jul 2021 09:32:04 -0700 (PDT)
Date: Tue, 6 Jul 2021 11:32:02 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YOSFgurmZ/hHtteb@ubuntu-x1>
References: <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
 <YL9pQL+JV8CVDdaH@ubuntu-x1>
 <CAM1=_QQ-QG+mCLRxuY26S17zMb-gVEQNf0gWs13LxGYFk4mMYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM1=_QQ-QG+mCLRxuY26S17zMb-gVEQNf0gWs13LxGYFk4mMYQ@mail.gmail.com>
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
To: Johan Almbladh <johan.almbladh@anyfinetworks.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Sorry for the slow response. I've been on vacation.

On Wed, Jun 30, 2021 at 12:23:57AM +0200, Johan Almbladh wrote:
> On Tue, Jun 8, 2021 at 2:57 PM Seth Forshee <seth.forshee@canonical.com> wrote:
> >
> > On Wed, Jun 02, 2021 at 03:05:56PM +0200, Johan Almbladh wrote:
> > > The parser dbparse.py and nl80211.h understand the NO-INDOOR keyword,
> > > but I cannot find any occurrences of it in db.txt. Furthermore, as the
> > > reg domain rules are processed by cfg80211, the supported frequencies
> > > are annotated accordingly and NO-OUTDOOR is mapped to the flag
> > > NL80211_FREQUENCY_ATTR_INDOOR_ONLY. There is however no equivalent for
> > > the NO-INDOOR annotation.
> >
> > Correct, it is defined but completely unused. I suspect this is because
> > restrictions have been more common on outdoor use rather than indoor.
> 
> Yes, that makes sense.
> 
> > In principle we could have separate rules for indoor vs outdoor use, but
> > the regulatory support in the kernel can't currently deal with that. So
> > we would first need to add support in the kernel, but this would require
> > care to ensure older kernels can continue to use the regulatory
> > database.
> 
> I have been looking into this a bit. From what I can see in the
> regulatory support code in the Linux kernel, the outdoor environment
> mode could be handled by the same mechanism as indoor mode uses today.
> I can put together a patch set for review on the linux-wireless list.

There's a more fundamental problem to solve though. To my recollection
the kernel does not support duplicate rules for a given channel with
differing constraints.

> Backwards compatibility is more difficult. The problem I see is that
> the current kernel ignores the NO-INDOOR flag. If we add a band with
> this flag set in db.txt, older kernels will incorrectly use channels
> in that band. Solving this depends on where the compatibility is
> expected. I understand that db.txt must be portable and compatible
> with older kernels. From this file a binary database file is generated
> by the db2bin.py script. Does the binary database also need to be
> compatible with older kernels? If not, one solution could be to let
> db2bin.py take an an argument to include (or not) NO-INDOOR bands in
> the binary output. We could also bump the file version number so that
> older kernels won't accidentally use a binary database generated for a
> kernel with NO-INDOOR support. Otherwise, I see no other way than
> somehow putting the NO-INDOOR bands in a part of the binary file where
> older kernels cannot "see" it.

If they cannot handle duplicate rules for the same channel, there may be
some way to take advantage of the implementation to make sure they end
up using the rule we want them to use. I'm not sure without
refamiliarizing myself with the code.

> There is also the CRDA tool to consider for backwards compatibility.

CRDA only suports the older db format, and we can just limit that
database to having one of the rules for a given range, which we could
specify to be the rule without NO-INDOOR.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

