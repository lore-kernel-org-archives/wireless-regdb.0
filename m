Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6r3E-0003QI-Sb
 for wireless-regdb@lists.infradead.org; Sat, 25 Jan 2014 00:24:45 +0000
Received: by mail-pd0-f181.google.com with SMTP id y10so3663791pdj.26 for
 <wireless-regdb@lists.infradead.org>; Fri, 24 Jan 2014 16:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=ybE6TeDVAYAXFFckg6J0DDGAbQdOmkQpNSzLhHApIvo=;
 b=jFLGoXzU3sgL1cHDaFSV9NYAtIZRG5whOMnz4XPUm9QbXG4P2daASbzTuMsI2K/MHi
 6Mp5w809IB9TacV9gPsCuaCCYOt9DDxiXbN1JJRCAQcp2vySr5Hir5QRtSQet8JtA1Bc
 NRZIFPPipkweOby5ResV/PGYy8uvbLMneG94Z6Bpm/AxAa5ToVf2jA26ZnsbR1hnIBBs
 5XDqPEKk0uyDIvoTNJv/qXy8W7cSldP90vQcQkewK4TKEbpfE7rs+Bnpsg0s6dyTPdft
 IDBuM9HYQIQb/1XyWZfRlUlUaT+a/ivgpRD0PJRPNZMDr3ojK1F46nJXPuHfkVv3GnNh 5FtQ==
Date: Fri, 24 Jan 2014 16:24:18 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140125002416.GD28512@garbanzo.do-not-panic.com>
References: <1389801162-14488-1-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389801162-14488-1-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v2 0/6] Enable additional channels for
	use
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
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jan 15, 2014 at 05:52:36PM +0200, Ilan Peer wrote:
> Hi Luis,
> 
> I'm resending this patch set. Any chance you could review it?

Looks good but needs a bit of work. In particular the biggest
concern I have is the last_request thing, and the feature flag
on the wiphy. Other than that, tons of cleanup and one last
requirement: please document this on the wireless wiki on the
regulatory page, once accepted.

http://wireless.kernel.org/en/developers/Regulatory/processing_rules

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

