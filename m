Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f181.google.com ([209.85.223.181])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1caotL-0001a8-3G
 for wireless-regdb@lists.infradead.org; Mon, 06 Feb 2017 19:24:00 +0000
Received: by mail-io0-f181.google.com with SMTP id l66so73369126ioi.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Feb 2017 11:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uzGOk77Vd4c5JfSZW8hpuhgRUfySHkxt0ALdhbrp3ug=;
 b=AGN/SB51qPOO2PWie7xM9+o/FJE9g+5sCV/sfqhUoWo8e5Xc8g0VwDkMMzqr4FVwU6
 LNKjTiUQ9yHCfGsVbL4hTGro7jDbynRBgkq/k9EEAsYiNampnedR0KdDBFrKPjoT5W+A
 CmZWRSdeDARfJuZg9DtJ3YauBEmoIa+ffBvruSTqDjG8x/W0QETpH0bkd8ihPAE5Xkhn
 6aRzZgN5oJQcg8hE11cnrULLnoq2fHAePSqlBYnGe1y2SJEpx5Re8hHdBkJIhgbGRP12
 eqsBvmVinRazNbQVMaZEYh47GBemTdTovI8lej09+UtRw6yBY9NOzZ7gG6V+Neno4/Ft
 HbfQ==
Date: Mon, 6 Feb 2017 13:22:35 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170206192235.GB4004@ubuntu-hedt>
References: <1485778112-11236-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485778112-11236-1-git-send-email-jouni@qca.qualcomm.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Remove DFS
 requirement for India (IN)
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

On Mon, Jan 30, 2017 at 02:08:32PM +0200, Jouni Malinen wrote:
> The "Indoor Use of low power wireless equipment in the frequency band 5
> GHz (Exemption from Licensing Requirement) Rules, 2005" notification by
> Ministry of Communications and Information Technology (Wireless Planning
> and Coordination Wing) (New Delhi, the 28th January 2005) does not
> mandate use of DFS, so remove the DFS flag from the 5250-5330 MHz band
> in India.
> 
> In addition, increase the TX power limit to 23 dBm to match the 200 mW
> maximum mentioned in the same notification. Also use the exact ranges
> from that notification and enable use of 160 MHz channels in the
> 5150-5350 MHz band.
> 
> Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

