Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22a.google.com ([2607:f8b0:4003:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atEWe-0000ip-MD
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 13:20:09 +0000
Received: by mail-oi0-x22a.google.com with SMTP id r78so83067279oie.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 06:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=42umSClk1CIOMxjqKX6g+PH7BEV9VgYwuSproqke3Fw=;
 b=XPu/xr86c8yPI6xJm/XeRff6x+qHx11yYUdyrzx7TBVg/P+QgX+VY8usE+wRG/MEe5
 TQEyWVptDCYOthTiwKlQpO9bLQpA3pLfJ7uc+6K/qUscfqz7JpxnqKcWtUiE9OBarqRq
 +U4XYoxmJBrgfUyqcYpiPvMoel2B28spuEPgbyq88UxKbOUKLzVRIIRReMOF4yq9VKpl
 1GozNEgK31I+gGIJJ0QCKv311RH3wBYsfGtpQpOozFNTWRSIoDKRxsvpmoiF2qAdUEds
 US1YQVn1HhGQ/l9hK25cgO9RuVIiE5L1QJHp8PyIbLXeUUrLkTEsVb/U69NRXsOPNKBa
 ll1A==
Date: Thu, 21 Apr 2016 08:19:38 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421131938.GA95003@ubuntu-hedt>
References: <1958820.LBuzOElZFT@perisens15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1958820.LBuzOElZFT@perisens15>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
	Germany (DE) on 5GHz
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
To: Maximilian Engelhardt <engelhardt@perisens.de>
Cc: linux-wireless@vger.kernel.org, maxi@daemonizer.de, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Apr 19, 2016 at 08:03:16PM +0200, Maximilian Engelhardt wrote:
> Hi,
> 
> In Europe ETSI standardized the used for short range devices (SRD) [1] in ETSI 
> EN 300 440-1 [2].
> According to this standard generic use equipment is allowed to transmit in the 
> frequency range form 5725 MHz to 5875 MHz with a maximum output power of 
> 25 mW e.i.r.p. This generic allocation also allows transmission of 802.11 
> devices.
> 
> [3] has a list of countries and their status about the implementation of the 
> SRD frequency bands. For the 5 GHz band this can be seen on page 38 in the 
> paragraph ANNEX 1 and the entry Annex j.
> 
> Attached is a patch that adds the 5 GHz SRD band to db.txt for Germany.
> 
> If it is acceptable I can provide a patch adding the 5 GHz SRD band for the 
> other countries listed in [3].

The changes seem okay as far as I can tell. You do need to include your
signed-off-by tag on the patch however, see
https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/tree/CONTRIBUTING.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

