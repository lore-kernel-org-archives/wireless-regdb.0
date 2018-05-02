Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=h6ZshB3v3pYa+fYO9Za8PZ9XJCL6whvfVJjY/SlCeNQ=;
 b=mlIXH7Qfv+hiPh
 2tg30feqiIq7KfKvRpWuDH/x41vxMFU4LY5lsV2HV8pGIA0BpVnAxpAtDfJiXm67KTlc74O7U03/w
 dDmpUM26t2GxfxoNgk5+ReSRxUm4h2oRSDpx/5DgihT+Ccy0GdiloNPbH+IMe1+XXkktetnvpLN+d
 In4x1sME0r0oGV2FnBnQbIeMv5T7ZoCrSjObguqubRof0KfUCPlyNxVWiuZ0SIYX8KeSJJZyVR+kE
 9ciEbzWYE/sN9xxupPD9AoKhhgg3I9i29W8uSGzZ7NPpEuiYSHTeJBydxo+5kl/a/F51Uks/lIn1G
 hzZdoG8ubg2MTCJdSdtg==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:72ef::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDr0e-00026f-5p
 for wireless-regdb@lists.infradead.org; Wed, 02 May 2018 12:37:26 +0000
Message-ID: <1525264627.6911.8.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 02 May 2018 14:37:07 +0200
In-Reply-To: <20180502123236.GA981@ubuntu-xps13>
References: <1525181772-30337-1-git-send-email-haim.dreyfuss@intel.com>
 <1525181772-30337-2-git-send-email-haim.dreyfuss@intel.com>
 <20180501200256.GM3502@ubuntu-xps13>
 <1525209561.25505.3.camel@sipsolutions.net>
 <20180502123236.GA981@ubuntu-xps13>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 2/2] wireless-regdb: Parse wmm rule
 data
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, Haim Dreyfuss <haim.dreyfuss@intel.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, 2018-05-02 at 07:32 -0500, Seth Forshee wrote:
> 
> I'm more thinking that for e.g. Debian if attr is installed via pip and
> not a distro package then that might be a problem for their package
> builds. But let's go ahead and leave it, if there's fallout we can
> figure that out later.

Fair enough, I don't really want to use pip on any of my systems either
:-)

Seriously though, it's packaged in Debian, Ubuntu and Fedora, which is
all I use, but it's a pretty common package.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

