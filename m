Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=cmqg8QaxkG1r1BKhtCvwmyGx9MkpcRJn0VMGkte4WSo=;
 b=XKHuiSejCsz7GgHQeNEkcbfgY8
 Yr8PxvRk12EWhGIFRjQpxtQBoDd5O5EiKDdArlAiQEeUscss9FfN5d3KVdowTOavJAumbJFc1RckV
 1FSYwhoyM+L2GLDNjwB3WFYyFIO8k3ciRLTou+MBaJEYD2y3NkO5XttztTc2HZ+l2csdlpS9wIJxE
 SvHDqMI+I+Ncg/m/fxL3y12tVn40QXBw+wZZsXU7xwmpqDfUwDoMah3eULtYSzDQEXPixIflL5Og1
 ZGbOpAK2M9o8YBza/qLiCUPXN9jnxdOnS8Va+4DnVqOIqfEGwMj8djwjsuGWn22WJJdCd0tRyi6sB
 MaeBNwyQ==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:72ef::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSIxo-00005r-5f
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 08:45:58 +0000
Message-ID: <1513932339.17825.0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 22 Dec 2017 09:45:39 +0100
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 0/6] wireless-regdb: Support for new
 binary database format
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
To: Seth Forshee <seth.forshee@canonical.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, 2017-12-22 at 00:02 -0600, Seth Forshee wrote:
> This series starts with Johannes' patch for generating regulatory
> databases using the new format and adds various fixes and pieces which
> were missing such as installation to the firmware path, manual page
> updates, etc. It also restores support for the older database format to
> maintain compatibility with using CRDA on older kernels.
> 
> I've tested the results with 4.15 and things look to be working. I want
> to apply this in the next couple of days and get a new release out, so
> please let me know soon if you seen any issues.

Thanks!

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

