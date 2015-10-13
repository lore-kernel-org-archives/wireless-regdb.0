Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f177.google.com ([209.85.223.177])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zm4gP-0003vz-22
 for wireless-regdb@lists.infradead.org; Tue, 13 Oct 2015 18:52:21 +0000
Received: by iofl186 with SMTP id l186so31439031iof.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 13 Oct 2015 11:52:00 -0700 (PDT)
Date: Tue, 13 Oct 2015 13:37:33 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151013183733.GB50632@ubuntu-hedt>
References: <1444061698-16384-1-git-send-email-wens@csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444061698-16384-1-git-send-email-wens@csie.org>
Subject: Re: [wireless-regdb] [PATCH v4 0/5] wireless-regdb: Update TW and
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

On Tue, Oct 06, 2015 at 12:14:53AM +0800, Chen-Yu Tsai wrote:
> Hi Seth,
> 
> This is v4 of my TW/US 5GHz updates series. Hopefully this one will go
> in without further work.
> 
> Changes since v3:
> 
>   - Moved power limit increase of 5250 ~ 5350 MHz band from patch 4 to
>     patch 5.
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

Applied all 5, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

