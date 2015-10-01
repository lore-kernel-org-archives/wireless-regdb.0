Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f169.google.com ([209.85.223.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhlNM-0002Fs-Bj
 for wireless-regdb@lists.infradead.org; Thu, 01 Oct 2015 21:26:53 +0000
Received: by ioiz6 with SMTP id z6so100566245ioi.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 01 Oct 2015 14:26:30 -0700 (PDT)
Date: Thu, 1 Oct 2015 16:26:01 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151001212601.GE101875@ubuntu-hedt>
References: <1443682667-29814-1-git-send-email-wens@csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443682667-29814-1-git-send-email-wens@csie.org>
Subject: Re: [wireless-regdb] [PATCH v3 0/5] wireless-regdb: Update TW and
 US rules to latest regulations
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
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Oct 01, 2015 at 02:57:42PM +0800, Chen-Yu Tsai wrote:
> Hi Seth,
> 
> This is v3 of my TW/US 5GHz updates series. Sorry for the long delay.
> 
> Changes since v2:
> 
>   - Moved the US U-NII-1 (5150 ~ 5250 MHz) patch in front of the TW patch
> 
>   - Drop U-NII-1 power limit from 24 dBm to 23 dBm, to be on the safe
>     side of 250mW
> 
> 
> Patch 1 updates the 5470 ~ 5725 MHz rules for Taiwan, specifically
> the opening up of 5600 ~ 5650 MHz spectrum previously allocated to
> weather radars. The transmission power limit is also corrected to
> match the regulations.
> 
> Patch 2 changes the boundary frequencies for each rule for Taiwan to
> match the frequency allocation table. The "regulation" database shouldn't
> care about artificial channel boundaries.
> 
> Patch 3 updates the transmission power limits for 5150 ~ 5250 MHz for
> the US.
> 
> Patch 4 adds the previously unusable 5150 ~ 5250 MHz band for Taiwan.
> 
> Patch 5 updates the transmission power limits for Taiwan, per the NCC's
> official reply. This patch may be slightly controversial, as there is
> no official English document. Either someone will have to independently
> verify this, or translate the Chinese document.

This description doesn't quite match the patches. Patch 4 both adds the
5150-5250 MHz band and increases the power limits for 5250-5350 MHz,
whereas patch 5 changes the DFS master region to DFS-FCC. Previously the
increased power limit for 5250-5350 MHz was part of patch 5 - perhaps
you accidentally moved that part to patch 4 when you were updating the
patches?

So patches 1-3 look fine to me. I suspect you'll want to move the power
limit increase from patch 4 to 5. I'm also going to take a look at a
machine translation of the Chinese document, and if that looks to be in
agreement with your patches then I should be able to apply them next
week sometime.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

