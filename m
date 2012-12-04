Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfyBo-0007TD-P5
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 19:29:57 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so3337050lbo.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 04 Dec 2012 11:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=NsPSsk+mkil9g2s58SxceEP6To/bBCpIgLJ7wZ8OZ0I=;
 b=K5e191SoVbyifzkH+69QjeQB0rNPfBVHJz03GRQtBmEtRpjWnX6TfyLKyFXdfHYCzS
 9M7BDU/7lPMRYyrnUBHfrFxExnyDL7OGGZn0xoL4PplQ3XPg2INMNnUAxIAB4LP2f4J2
 cYUzVV/+O6PUqYTsijDKJVslEubY6o5oLWl4/oEx1WkPohLlSSPXOXGGFDdOKGbVvaPi
 0ghB+erF1rtNJp9DtDVGsuVN9RqKharZgAOf536Uv3Xh1JeNdBHYdeJ+bl7ni7sFpFwr
 rApk67tkcv8uOUHXQPywOADc+KtKiQ7aPyeCAGYJL6eK7AUvxAaJhEwpvbkPU8O6/0zj +/DQ==
MIME-Version: 1.0
In-Reply-To: <1354648499.9608.19.camel@jlt4.sipsolutions.net>
References: <1354648499.9608.19.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Tue, 4 Dec 2012 11:29:34 -0800
Message-ID: <CAB=NE6W65F=3v=A8UPTguerc8h1n9bcE7nMAgB+kD+ZHmWipCA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] dbparse: remove usable bandwidth check
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 4, 2012 at 11:14 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> From: Johannes Berg <johannes.berg@intel.com>
>
> The kernel uses the bandwidth this way: any frequency
> rule that is required for any of the 20 MHz subchannels
> of a given channel must allow the total bandwidth.
> Therefore, this check is wrong -- a frequency rule may
> need to be specified with higher bandwidth than it has
> to allow to form e.g. HT40 out of subchannels.
>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>

Acked-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>

I'd add into the commit log:

The current issue was spotted when dealing with the
world regulatory domain which had overlapping frequency
rules -- that is you had to evaluate two ranges to
determine if you can use HT40 channel. The primary
HT40 channel would fit into one freq range and the
subchannel would fit into another frequency band.

An additional change is possible however and that is
to have the kernel check not for 40 MHz requirement
on subchannels but only 20 MHz but this alone could
lead to secondary issues by the current implicit
architecture support of overlapping frequencies which
are we currently evaluating.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

