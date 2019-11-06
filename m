Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=vKmhqcP40SR8POh5qAh1myYVeeMUTlH73x1vI89Ue7Y=;
 b=qkyzTDW/ERJDUf
 BSrq54CaQcN/0wdDJa+A82G0jzDLdQj7Rz5JRepGtYi3CbaiMuW7MxPmS/lUfZxTeykHtYvhwX//2
 lMb1qklpBuAq2r+PEKzDFyNzXNBrFZCq2hF+4hfrTgLjMxzdadDqG6xzjHy47bE0HYUEHYH69s5tN
 IBBSuB8cAp7/GGbnYMWWtGOu0DnoQ5zDy+npcT1hCZ6XqaZ2e/ZFqciZdXNkClo5A1uyPwuQMlYWt
 1FARetdHm9TAZymi6BNJ8rehLm37pegvhDhEdR5c7f65oe+pbc1qoT3Cpyq8Rq8UrLSIHCYOn5GMW
 dY2zbS6aLwxVCsnaNbFQ==;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUYj-0006hn-LB
 for wireless-regdb@lists.infradead.org; Wed, 06 Nov 2019 23:17:54 +0000
Received: by mail-pg1-f193.google.com with SMTP id z24so186351pgu.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 Nov 2019 15:17:53 -0800 (PST)
Date: Wed, 6 Nov 2019 23:17:49 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20191106231749.GM11244@42.do-not-panic.com>
References: <20191105225751.1233-1-briannorris@chromium.org>
 <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
 <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
 <CA+ASDXMVJg0QSPzSiWFjoDH67yJ-NfYX4MQZUT3gaivx1SJ2aA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXMVJg0QSPzSiWFjoDH67yJ-NfYX4MQZUT3gaivx1SJ2aA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: Makefile: fix .so compilation
 line with some compilers
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
To: Brian Norris <briannorris@chromium.org>
Cc: wireless-regdb@lists.infradead.org, Johannes Berg <johannes@sipsolutions.net>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Nov 06, 2019 at 08:38:33AM -0800, Brian Norris wrote:
> On Wed, Nov 6, 2019 at 12:12 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> > On Tue, 2019-11-05 at 15:02 -0800, Brian Norris wrote:
> > > Apparently wireless-regdb@ is subscribers only. I have since joined,
> > > but I guess my patch bounced from that list... if I don't hear back in
> > > a while, I may resend.
> >
> > The bigger question is who actually maintains crda now, if anyone ... :)
> 
> My mailbox tells me that as of about a year ago, Luis was still
> merging patches. And his latest commit even claims it's "still
> maintained":
> 
>     As if kernel v4.15 CRDA is no longer needed. Annotate this. The
>     code will still be maintained to help older kernels.

Sure, send me patches. Its just not needed on older systems.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

