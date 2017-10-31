Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=714SlqvlcToactRMUJsOB0LFJQMuJVhzB2PDZefcHmM=;
 b=hqGbfsnucVKjsL
 3B9cMnM5fW4ZW6kawmK+1T2dMTEzrpd6LD/Kw1yFPx68jJuXJeLHDtGQSl8z9vmUCN4yWMT4SyJIY
 iVgA0yapcfZaNE5n8+qvzVOToptEjW9ubUF12sx7gflRp0xZM1uoQQLyvGk3yDQ1LYhjA1ujReOXV
 hlp4mReivwQ0Ssc613NEAz09/98GAPvW1pl/tMVFOwlSg69U6sseaNuO1X2PMIYnDpJHnz3f9WTUL
 u7Iy+MxSNnhOqG3AUCUnF+XLIrTWUVUUnxsBfrPLJOH/SqAZmizbjz+HraUBD5nTq/j19fZYcjZ5P
 uxF4GStaWYWUwYLIfINA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9b4u-0005zE-Uw
 for wireless-regdb@lists.infradead.org; Tue, 31 Oct 2017 18:15:59 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e9b4X-0005ZN-Mu
 for wireless-regdb@lists.infradead.org; Tue, 31 Oct 2017 18:15:33 +0000
Received: by mail-io0-f200.google.com with SMTP id m16so678847iod.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 31 Oct 2017 11:15:33 -0700 (PDT)
Date: Tue, 31 Oct 2017 13:15:31 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171031181531.l5dzpmk2axpascsv@ubuntu-xps13>
References: <20171020150651.32424-1-seth.forshee@canonical.com>
 <493073613.20171031233913@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <493073613.20171031233913@mail.ru>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Add 5 Ghz rules
 for Kazakhstan (KZ)
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
To: =?utf-8?B?0JjQstCw0L3QvtCyINCQ0L3QtNGA0LXQuSDQktC40LrRgtC+0YDQvtCy0Lg=?= =?utf-8?B?0Yc=?= <wowz89@mail.ru>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 31, 2017 at 11:39:13PM +0600, WoWz89 wrote:
> Здравствуйте, Seth.
> 
> Вы писали 20 октября 2017 г., 21:06:51:
> 
> > Add rules for 5150-5250 MHz, 5250-5350 MHz, and 5470-5725 Mhz
> > based on the documents at [1] and [2].
> 
> > v2: Also add DFS region
> Good afternoon, when will the update ?

I'm planning to get anything pending applied and a new release out in
the next couple of days.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
