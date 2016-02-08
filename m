Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-x22a.google.com ([2607:f8b0:4001:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSnSF-00066i-0S
 for wireless-regdb@lists.infradead.org; Mon, 08 Feb 2016 15:10:19 +0000
Received: by mail-ig0-x22a.google.com with SMTP id y8so31780208igp.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Feb 2016 07:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-type
 :content-disposition:user-agent;
 bh=p8u5uu0091WoEhAMz70N+GPnQ0bOPwqn31AwehA/UYE=;
 b=EMvDpbEayZKR9WSvUav4PszyUonImsYtAxbLIM3d3ws4Y/ZFzkMzDmB/T0ZL1Z7ApX
 /+GVA4kUt0t3W6tZYojAsbCeWs+ggICX1iSTPz5DpVZhOFrzINcXHyoh20/3qLK26h1T
 vAgVKwyrmoBnJH6oiMp0sVP6f/TrRnH/RdlXvBHdOj3vIePjnge/JyYJB81U6jJDM7ff
 0AOr+wXz0K7D5sOim+wRSR09sORAakH5rG49dWBeZFeZ6r+/TQeI4qrKX9yPVAYqaRP+
 znOvnaKrJwyCiSElYPKbf9xbxUVZPJrfTjKheQaokrDONsy+0cUdRqCM7OOyOThlYOov
 2sDA==
Date: Mon, 8 Feb 2016 09:09:55 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160208150955.GC64756@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2016-02-08
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

A new release of wireless-regdb (master-2016-02-08) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2016.02.08.tar.gz

The short log of changes since the 2015-12-14 release is below.

Thanks,
Seth

---

Seth Forshee (1):
      wireless-regdb: update regulatory.bin based on preceding changes

Xose Vazquez Perez (1):
      wireless-regdb: add 2.4GHz regulatory rules for Cuba (CU)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

