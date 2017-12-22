Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=rt1kUniDQzM14un+6P7ES42oq+w7cK08H/cPCTwAmf4=;
 b=mgFisd4x+lmjoD
 guHN6rctYUR1KaUl08vb35xB3W/evzWwNYOoaifYp9+OmP5vyIsPiMii0ysV/UgVjQs9fRJViPTF9
 BGx/GMamIz/0wOYdcjLeGFzDUB1ptU0TODPtUOhLE/o6t91ligv7BU4SVxew3sWCkdy3Smp31B72l
 fJ6FWrsFpACzc/5w/dlAbR1AINs82MyCv+7ii88DJzepcvgv7NXn68aKLOQXuzrH5Dzp0pm+x223J
 auQ13/1Rd48eJsInjmHW0UFBcghBayTZRoxa32u6/SGSlwWvNkUs3TpPqu8z1kpumyUfkPyauW0QG
 qq21Y/wuZeb7nf+BuY1w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQR-0005qU-J3
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:24 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQE-0002dG-93
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:06 +0000
Received: by mail-io0-f198.google.com with SMTP id y76so18990144iod.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:06 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:02:57 -0600
Message-Id: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 0/6] wireless-regdb: Support for new
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

This series starts with Johannes' patch for generating regulatory
databases using the new format and adds various fixes and pieces which
were missing such as installation to the firmware path, manual page
updates, etc. It also restores support for the older database format to
maintain compatibility with using CRDA on older kernels.

I've tested the results with 4.15 and things look to be working. I want
to apply this in the next couple of days and get a new release out, so
please let me know soon if you seen any issues.

Thanks,
Seth

Johannes Berg (1):
  regdb: write firmware file format (version code 20)

Seth Forshee (5):
  wireless-regdb: Restore generation of old format database files
  wireless-regdb: Add sforshee's x509 certificate
  wireless-regdb: Better support for generating public certificates
  wireless-regdb: Install regulatory.db and regulatory.db.p7s to
    /lib/firmware
  wireless-regdb: Document regulatory.db in the manual page

 Makefile          |  37 +++++++++++----
 README            |   4 +-
 db2fw.py          | 133 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 gen-pubcert.sh    |  18 ++++++++
 regulatory.bin.5  |  32 +++++++++----
 regulatory.db.5   |   1 +
 sforshee.x509.pem |  17 +++++++
 7 files changed, 220 insertions(+), 22 deletions(-)
 create mode 100755 db2fw.py
 create mode 100755 gen-pubcert.sh
 create mode 100644 regulatory.db.5
 create mode 100644 sforshee.x509.pem


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

