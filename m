Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f177.google.com ([209.85.223.177])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zm4Sv-0003MG-PF
 for wireless-regdb@lists.infradead.org; Tue, 13 Oct 2015 18:38:27 +0000
Received: by ioii196 with SMTP id i196so30822436ioi.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 13 Oct 2015 11:38:04 -0700 (PDT)
Date: Tue, 13 Oct 2015 13:37:03 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151013183703.GA50632@ubuntu-hedt>
References: <1444053722-33852-1-git-send-email-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444053722-33852-1-git-send-email-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update ZA rules for
	5490-5710 MHz
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Karl =?utf-8?Q?M=C3=B6ller?= <karl@excors.net>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Oct 05, 2015 at 09:02:02AM -0500, Seth Forshee wrote:
> The Radio Frequency Spectrum Regulations 2015 [1] drops the
> requirement for DFS and TPC in the 5490-5710 MHz range. Update
> the database to remove DFS for this range and remove the 3dB drop
> in the transmit power limit for TPC.
> 
> [1] http://www.ellipsis.co.za/wp-content/uploads/2014/12/Radio-Frequency-Spectrum-Regulations-2015.pdf
> 
> Cc: Karl Möller <karl@excors.net>
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
