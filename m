Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-x230.google.com ([2607:f8b0:4001:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8Sz0-0001is-HP
 for wireless-regdb@lists.infradead.org; Mon, 14 Dec 2015 13:16:20 +0000
Received: by mail-ig0-x230.google.com with SMTP id to4so4101444igc.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 14 Dec 2015 05:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=14fW3kSx2Yj5N6huwnYBEouazeuABUDKwKJVt6VEOP4=;
 b=zdcmYUsxj06E3q5Zk6+jJeU+dO5Iy+jlBdNE/XYrl/5a2wY8F/3LXBjtde9i9oJ3G7
 Z5xmTmH7pU92DfSmK8w3EcixJD4o+FI1+PqcH75o4bJYtiv/mDgSkYDL+ZQOoHEsZjw5
 3AlVQztlPyk6flsACM7/LdINUvBcir8Hj0VGebPEGDHG7Vk3U0QaQRc938+ToYIT73IF
 SaNoA/1sRxARMrIOv+r2TIhbrZsPLRFD9CznXi+EWaDvmapRCyB/dlVOLpUVZMiOE7Oq
 Ph3Cr+xyEptcl7nuBNZmE3iRT0Kz+56YrE1nrhJU8J5Z6g8O1/pGbUEZMutvusRhX30t
 aRSw==
Date: Mon, 14 Dec 2015 07:13:47 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151214131347.GA146390@ubuntu-hedt>
References: <1449852319-27189-1-git-send-email-johannes@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449852319-27189-1-git-send-email-johannes@sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH] regulatory: fix world regdomain
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Johannes Berg <johannes.berg@intel.com>, j@w1.fi
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Dec 11, 2015 at 05:45:19PM +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> Back in 2012, in commit 6d87df6f9657 ("regdb: allow 40 MHz on world
> roaming channels 12/13") I evidently broke the world regulatory data
> to the point where it was always discarded by the kernel because the
> 40 MHz bandwidth doesn't fit into the rule range.
> 
> Around the same time, I updated the in-kernel regulatory domain with
> the same mistake, but unlike the userspace data, the in-kernel data
> isn't actually checked for validity.
> 
> The end result was that the (inconsequentially invalid) data in the
> kernel was always used because the userspace data was rejected.
> 
> Fix this by changing the rule to 20 MHz and adding the AUTO-BW flag.
> It seems that Janusz had made a similar change in commit 5cfc8073ce35
> ("wireless-regdb: set AUTO bandwidth for world regulatory"), but it
> was reverted for unknown reasons a little less than half a year later
> (commit cfa3734b11b2).
> 
> The kernel uses very similar invalid rules, but it never checks them
> for validity and just uses them, so HT40- ends up getting enabled on
> these channels. Thus, when the kernel requests the world regdomain
> from userspace, gets the invalid data and rejects it, it falls back
> to using the built-in data which is very similar and not validated.
> 
> I've tested this now, and the ruleset is now accepted by the kernel
> and results in the correct data.
> 
> This also means that Jouni's 160 MHz fixes were inconsequentialy and
> only the corresponding kernel changes could have been used.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

