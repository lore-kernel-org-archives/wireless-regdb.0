Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f176.google.com ([209.85.214.176])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHCtH-0007qG-86
 for wireless-regdb@lists.infradead.org; Fri, 30 Jan 2015 14:49:48 +0000
Received: by mail-ob0-f176.google.com with SMTP id va2so24210128obc.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Jan 2015 06:49:25 -0800 (PST)
Date: Fri, 30 Jan 2015 08:49:11 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150130144911.GB124346@ubuntu-hedt>
References: <1422013872-9732-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422013872-9732-1-git-send-email-jouni@qca.qualcomm.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Disable VHT80 where
 40/80 MHz on 5 GHz is not allowed
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
To: Jouni Malinen <jouni@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 23, 2015 at 01:51:12PM +0200, Jouni Malinen wrote:
> VHT80 was incorrectly enabled for number of countries.
> 
> 40 and 80 MHz channels are not allowed on 5 GHz for these:
> - Armenia (AM)
> - Bahrain (BH)
> - Costa Rica (CR)
> - Ecuador (EC)
> - Guam (GU)
> - Indonesia (ID) (also remove 40 MHz from 2.4 GHz)
> - North Korea (KP)
> - Sri Lanka (LK)
> - El Salvador (SV)
> 
> 80 MHz channels are not allowed on 5 GHz for these:
> - Egypt (EG)
> - Russia (RU)
> 
> Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

