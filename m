Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-x22f.google.com ([2607:f8b0:4001:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8WVr-0001OD-9Q
 for wireless-regdb@lists.infradead.org; Mon, 14 Dec 2015 17:02:19 +0000
Received: by mail-ig0-x22f.google.com with SMTP id ph11so87373277igc.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 14 Dec 2015 09:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-type
 :content-disposition:user-agent;
 bh=gpq+uDGCSAxUb63ilyagdEIP8kkxIcpn3hGwEjtakg4=;
 b=dMnnqoRG7oT94v7ahGbvw6kLWE/0xF8LorInUrE4+fH9fITMK+Re5GFTTu5K8etmf6
 9/mSbBu3qJa3CdyUOP0bocYkdUrJWgHqogJ4nk5Z41XYAMRZgRM7KtDIBI0zLFaGVRiN
 TKyjf4Ue5RMckoskzOj3AypPWxdTdx2f2qHZfJ2UXYAqlYFh2DrU/+SUzJEGe5DEfNVc
 lxzluo8w5B52SOaUVdRZdtFnBx70qhoSKOb/JF7RtLRNyDWiVeCu2Lz2gh0xFyZfpY1x
 NP1Xll4qTiqHkV53jW7lBUjrVz3zNUfGgkB7YIAOH5DFFWy4XhzTCjDWzfxJm3tg5JH0
 5XoQ==
Date: Mon, 14 Dec 2015 10:59:57 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151214165957.GC146390@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2015-12-14
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2015-12-14) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.12.14.tar.gz

The short log of changes since the 2015-10-22 release is below.

Thanks,
Seth

---

Anssi Hannula (1):
      wireless-regdb: Update regulatory rules for Finland (FI)

Johannes Berg (1):
      regulatory: fix world regdomain

Seth Forshee (1):
      wireless-regdb: update regulatory.bin based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

