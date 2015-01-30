Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f46.google.com ([209.85.218.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHDJJ-00075J-MJ
 for wireless-regdb@lists.infradead.org; Fri, 30 Jan 2015 15:16:42 +0000
Received: by mail-oi0-f46.google.com with SMTP id a141so35184887oig.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Jan 2015 07:16:19 -0800 (PST)
Date: Fri, 30 Jan 2015 09:16:05 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150130151605.GD124346@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2015-01-30
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
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2015-01-30) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.01.30.tar.gz

Note that this is the first release signed with my key. As of yet there
is no release of CRDA which by default trusts a regulatory.bin signed
with my key, but in most cases it will still trust regulatory.bin by
virtue of having the corresponding public key installed in e.g.
/lib/crda/pubkeys.

The short log of changes included since the 2014-11-18 release is below.

Seth

---

Daiwei Li (1):
      wireless-regdb: Add back regulatory rules for US

Jouni Malinen (4):
      wireless-regdb: Disable VHT80 where 40/80 MHz on 5 GHz is not allowed
      wireless-regdb: Add regulatory rules for Nigeria (NG)
      wireless-regdb: Add regulatory rules for Samoa (WS)
      wireless-regdb: Add regulatory rules for Tanzania (TZ)

Seth Forshee (2):
      wireless-regdb: Update keys and maintainer information
      wireless-regdb: update regulatory.bin based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

