Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-f179.google.com ([209.85.213.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmmvF-00004y-UX
 for wireless-regdb@lists.infradead.org; Thu, 15 Oct 2015 18:06:38 +0000
Received: by igbkq10 with SMTP id kq10so20069697igb.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 15 Oct 2015 11:06:15 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:06:11 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151015180611.GB31612@ubuntu-hedt>
References: <1444918759-21559-1-git-send-email-johannes@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444918759-21559-1-git-send-email-johannes@sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: fix gHz to GHz
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Johannes Berg <johannes.berg@intel.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Oct 15, 2015 at 04:19:19PM +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> There's no "g" prefix, only "G" (1e9) that was clearly intended here.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

