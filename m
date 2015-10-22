Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x236.google.com ([2607:f8b0:4001:c06::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpHiN-0000lQ-Mt
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 15:23:40 +0000
Received: by iow1 with SMTP id 1so94786188iow.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 08:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical_com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-type
 :content-disposition:user-agent;
 bh=HPhowx113/l7XSpZfCZRMsbWliN7SNNoAhTrfuge/NI=;
 b=qNtEmDgfXCII7JiVpjCp5Apj+sQUyXCNqQY4on/QNqbFzv5ZuH1a1iwkumJTH/OhqP
 nJh32cMrven/ca5OJEfFSHb4a4g/tNu4TqqaKuVmAMeSjuvIBXTgqElmS54W0mwXga/q
 FZkBipvRqN4syTEPvSBnal5V/Y4FmZOU0TLAqQ/W85OX2mSyB8ZUJlcBPKIhcsq6FKFP
 JsWu5imrukMDW+F0XqK5VFqUDUdg8jfV/PGgmdni0I/h2BqNXdjHtI+r6Gumk+l9Hzm3
 k5J5W86YEsEJ28uU9gZzAi5ytWIWhiYfcHPPMYoinCxyVTxamE2bC/1/PefuIu5SoNmh
 2ztw==
Date: Thu, 22 Oct 2015 10:23:16 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151022152316.GA6944@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2015-10-22
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

A new release of wireless-regdb (master-2015-10-22) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.10.22.tar.gz

The short log of changes since the 2015-10-13 release is below.

Thanks,
Seth

---

Andrej Vlasic (1):
      wireless-regdb: Update regulatory rules for Croatia (HR)

Johannes Berg (1):
      wireless-regdb: fix gHz to GHz

Jouni Malinen (1):
      wireless-regdb: Add 160 MHz channel bandwidth for Greenland (GL)

Seth Forshee (1):
      wireless-regdb: update regulatory.bin based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

