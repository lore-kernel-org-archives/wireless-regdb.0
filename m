Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=/uusz6XkL10mK5oz6siZo3La67K7uqCNxQgCvSDLqwI=;
 b=em7myCmyQTqIkY
 Mx1DiFYjtqjkBpmodhTUoc5Hn6nVmP1W56W+8Gsn6fVUcQeMnwB37krwEiUPeKzbPeVZLF5jp1QOo
 VB0IfOdb439Fyj1UdRv7jnIJ8dyl7OYgGIxOoWY3205UgDabshzEVhaYtXMsAscUTRJ+QCE2EO2s6
 JtmsbNcjTLxVvgMLA1mbAoAZikVGIYslyfrXyJTcOFQK2Q6shxcPcD00mqmktxUXfOOBuDjf6G2DJ
 OzNU85JbTT0VkDV40ntaOD6RidFTqEWiSC42h0zcKYSbsC2HQgnoDutJ7XqqFSpEpmIyGYWVUFdN+
 4uqhB06ex7b1elAXVIWw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSwtm-0001AE-Bl
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:24:28 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSwtX-0002JA-UF
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:24:12 +0000
Received: by mail-io0-f198.google.com with SMTP id c196so23740129ioc.3 for
 <wireless-regdb@lists.infradead.org>; Sat, 23 Dec 2017 19:24:11 -0800 (PST)
Date: Sat, 23 Dec 2017 21:24:08 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171224032408.GA31806@ubuntu-xps13>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
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
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Dec 22, 2017 at 12:02:57AM -0600, Seth Forshee wrote:
> This series starts with Johannes' patch for generating regulatory
> databases using the new format and adds various fixes and pieces which
> were missing such as installation to the firmware path, manual page
> updates, etc. It also restores support for the older database format to
> maintain compatibility with using CRDA on older kernels.
> 
> I've tested the results with 4.15 and things look to be working. I want
> to apply this in the next couple of days and get a new release out, so
> please let me know soon if you seen any issues.

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

