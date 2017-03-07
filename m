Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=rRepeReJgCkjRODrOwmoQ/3Jt6Kf8G7BDQh2jV2y9mM=;
 b=r4RyeiIfPGM87T
 7FmeyfAMDVJaUWuKrc036cwdhJXAXr3L5RX9wnQwyAKNoA8YjFKpEDi0RszfKhr1k5P9U+l8gkKEx
 tlgqBMsEKvz/sanDiJHm0nqO5O1U4V2ZBDerzz7JQGh8L46h9zCcUY3wlrzKTUW9Z4otWeHyd0C1p
 ptz78Lg6pfOCvkVgUNhz/UEqVhszXcL36ZOw+1laNoPD0XcfUcgw4j6rr/QI3Z28D4SbWRJdk+Wqw
 /ehqPq3/t/oYEuV91wGe7K9cYtugyttaClAOKZPZevaNOy39ZwJGDTko5v+QFtdx1NOBJcjNRgtpE
 kv6WuLmwDqmeqBTVkwww==;
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clFAY-0006zJ-IG
 for wireless-regdb@lists.infradead.org; Tue, 07 Mar 2017 13:28:52 +0000
Received: by mail-io0-x232.google.com with SMTP id l7so3218089ioe.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 07 Mar 2017 05:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=evrFBP0huxe0apjVovKighGxsSjPabH+7xfI516DvlI=;
 b=BLKGnWkJQ18uqhFqCAFGmJ0pQlLykqcWJDTwzamZ5gZKSgjwBNwEW2vs/AQAifvAFA
 loVNT1MTMTh8Sojh2eo24eK5TSTu9DTjyc/yZL8/YEA5l2kMiFD3JJUrNw3iMw+QxZ13
 KxdzUk62QdzTU0NbBnZ4B5K4SNqc2autXC39p0jArTXD3UgjihvcV80wh0YW3KsCSZlu
 d63ZqQvq7KxGyHRalSl4pTXnpt9cEotQtfS9glxM76ZIzLIO3GYWfrf1m6tQSGbwvPtS
 Tvb2iamIVftZ4aTor1YG6pRRxdu4l4KcuTaKmpGuPZPa1x8JWVyHD2zDBoEbx3rSpkht
 +8Bg==
Date: Tue, 7 Mar 2017 07:28:28 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170307132828.GC5500@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2017-03-07
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2017-03-07) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2017.03.07.tar.gz

The short log of changes since the 2016-06-10 release is below.

Thanks,
Seth

---

Jouni Malinen (1):
      wireless-regdb: Remove DFS requirement for India (IN)

Ryan Mounce (1):
      wireless-regdb: Update rules for Australia (AU) and add 60GHz rules

Seth Forshee (2):
      wireless-regdb: Update 5 GHz rules for Canada
      wireless-regdb: update regulatory.bin based on preceding changes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

