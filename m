Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=40qJpG50hxT9ixsYQ3aYmI+FXe6oktRK4E0w60QQftM=;
 b=eGoxqLHdKWpMGX
 OoSqQxPrs6jPYfLXin9L3ZgkBaQlAdB/WfeTNxhj4us88Ly2peb8JgHVTkqGgj/j2LsW0j6Y1Wfo+
 pv8+LmkJRamMyTHYKlefwCviD1E84zyDGxkl1CRVPAq+z49Uda9pgAUugWXgSWpunyjHqNNwssEps
 IUK3yPxDO2mMHnw2G+4Al7m6y8Zw/NdPTQjbPksWyTpfH0rf6jsjvdA+Cn6gQQrtM3qtuy4AQ/r4N
 sOdxj7tWnN0ChOd3BWlVz8ODzFrqfN3A6qATAg6Ou48E6sbxKxzrBy1A9KAO++6gA1C4KLAH/MCP3
 /e4ydTU6+HvAPepQ6eqA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSxN9-0002pY-3J
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:54:48 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSxMx-0004sr-Ih
 for wireless-regdb@lists.infradead.org; Sun, 24 Dec 2017 03:54:35 +0000
Received: by mail-io0-f198.google.com with SMTP id f26so5440857iob.13 for
 <wireless-regdb@lists.infradead.org>; Sat, 23 Dec 2017 19:54:35 -0800 (PST)
Date: Sat, 23 Dec 2017 21:54:31 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171224035431.GA5626@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2017-12-23
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

A new release of wireless-regdb (master-2017-12-23) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2017.12.23.tar.gz

Note that this is the first release to include the new regulatory
database format, supporting direct loading of the database by the
kernel. The short log of changes since the 2017-03-07 release is below.

Thanks,
Seth

---

Andreas Mohr (1):
      wireless-regdb: reduce power level limit of KR (Korea) 802.11b/g/n to the certification-requested "20mW" (13dBm).

Aron Rosenberg (1):
      Set NO-OUTDOOR Flag on Canada 5Ghz 5150 to 5250

Chen-Yu Tsai (2):
      wireless-regdb: Update regulatory document references for Taiwan (TW)
      wireless-regdb: Add 60 GHz rule for Taiwan (TW)

Edwin Steele (1):
      wireless-regdb: Update rules for Turkey 5ghz

Johannes Berg (1):
      regdb: write firmware file format (version code 20)

Seth Forshee (8):
      wireless-regdb: Add 5 Ghz rules for Kazakhstan (KZ)
      wireless-regdb: Update rules for Denmark (DK)
      wireless-regdb: Restore generation of old format database files
      wireless-regdb: Add sforshee's x509 certificate
      wireless-regdb: Better support for generating public certificates
      wireless-regdb: Install regulatory.db and regulatory.db.p7s to /lib/firmware
      wireless-regdb: Document regulatory.db in the manual page
      wireless-regdb: update regulatory database based on preceding changes

Sven Eckelmann (1):
      wireless-regdb: Update regulatory rules for Singapore (SG)

Xose Vazquez Perez (1):
      wireless-regdb: add Short Range Devices (SRD) (ETSI EN 300 440) for Spain

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

