Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcHDa-0003at-1P
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 16:05:02 +0000
Received: by mail-la0-f53.google.com with SMTP id eh20so1282822lab.40 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 09:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=6c/V7rUt89dMOyL32If3mvGh3FZAVAgRvBT63zZZBpk=;
 b=ZJUMC+qaWtk+Iku6qXUZPQfj5C1lL5TYQTAyW38CDoUP5m5Hzj0sPJAf+vXwwiIIoH
 dOii7aTl/kaEPqOKz4Z8JKvwnm0KoqYBwCuP/TLgg1++STId8EnbV/gwsWxbIQoOfOuq
 tq64ObdTu28kNBtZzmR+6M5b6yE77NUIrM/jiDdIpycRbdnFs3wxrScN/woxZcT+ZEqX
 9KgxRexP3fyJVOUZ9ZzaA8FDORHmag6wNlKNdt4RHjHD5QiNr77nCPubvCQo6a3MUH7E
 lw99RyFiewJ4ogBR7FsDaK/fwxTVNbjzHALcBIfbKWkBnmdkIC7fKwKyFBRJO7Qi1wPB 5OYg==
MIME-Version: 1.0
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 1 Nov 2013 17:04:19 +0100
Message-ID: <CAB=NE6Wg7CwS0Uw37KUH4-jmv2rDS2OL4h0SrXoWTe4QOfpD8g@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 0/8] wireless-regdb: General updates
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Nov 1, 2013 at 2:55 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> The entire delta can be obtained via either a single patch [0]
> or my git tree [1].

Since I provided a patch update fix I pushed the changes to the git
tree and provided a new v2 all-in-one patch [2] as well.

[2] http://drvbp1.linux-foundation.org/~mcgrof/patches/2013/11/01/pending-wireless-regdb-2013-11-01-v2.patch

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

