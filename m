Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=2uGXIJumijvgo8wh+ZC9/RfcouHn7W0cUDuO0svB+3k=;
 b=QcRhJWUwd5Boow
 sVuhgzfQIYo68nnSG0VBG4zvsD9mou72VhxoATqyO+caA3U8K3d8FXxkF5cWWxUqeWWJE5wombZhu
 TXBYpJKg8c5vr/15VAM5iDnIHyA8U5jdQ+i5rWhxTlxz2gXnfziK7Bs+ECPgltmFVJlf5iNKM41Th
 kD7AFTmCazh3ep9aIuA64xS5+tZz95CSEnKqUE0FW7Ozb9MMM19gcN3H+6aUhTAKtK9SaxClOHcfD
 BVYFidDYCG8UD2rmQwD09TQH6gRMaMOBkwkX50UQQWJIxqPyyfjH2z8Mf0l17rH4/6iydrx8pb73h
 uF0eqhf85Z0lvIEreVeQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSQCK-0002T1-DY
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 16:29:26 +0000
Received: from mail-it0-f71.google.com ([209.85.214.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSQC8-0001b5-Ku
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 16:29:12 +0000
Received: by mail-it0-f71.google.com with SMTP id g69so11060462ita.9 for
 <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2017 08:29:12 -0800 (PST)
Date: Fri, 22 Dec 2017 10:29:09 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171222162909.GB25425@ubuntu-xps13>
References: <a2e41843-e5a5-25c6-fd02-47716563155a@its.aau.dk>
 <20171203165135.GA31669@ubuntu-xps13>
 <e2e75443-3ae3-8481-c2ed-96c4fac02706@its.aau.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2e75443-3ae3-8481-c2ed-96c4fac02706@its.aau.dk>
Subject: Re: [wireless-regdb] Update regulatory rules for Denmark (DK) on
 2.4 and 5GHz
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
To: Per Mejdal Rasmussen <pmr@its.aau.dk>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Dec 09, 2017 at 08:43:59PM +0100, Per Mejdal Rasmussen wrote:
> Hi, thanks for taking your time to look at this. If you apply the text below
> for Denmark to db.txt, then it is an improvement:
> 
> country DK: DFS-ETSI
> (2400 - 2483.5 @ 40), (20)
> (5150 - 5250 @ 80), (23), AUTO-BW
> (5250 - 5350 @ 80), (20), DFS, AUTO-BW
> (5470 - 5725 @ 160), (27), DFS
> # 60 GHz band channels 1-4 (ETSI EN 302 567)
> (57000 - 66000 @ 2160), (40), NO-OUTDOOR

No one has objected, so I'll send a patch to do this shortly.

> But I do think that Denmark has implemented "Short Range Devices (ETSI EN
> 300 440-1)".
> 
> source:
> https://www.erodocdb.dk/docs/doc98/official/pdf/rec7003e.pdf
> (source is down at the moment, I have a copy of it on my work PC. I will
> send it on Monday)

I still can't access this document, so we'll defer this one for a future
update.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

