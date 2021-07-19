Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=7cF75PMqV4es/0BaeZ6BwozDkSn5S4bLQKH5+T0seAE=;
 b=Za7dreh3Ra3S38
 8j+88/riSd8tywrKUoDwmJ1XWodNZKFR/2xQJGeMSnBYpIz2AnZL9yyydsGHA44fPIDGfnkOCXfnm
 jcD7sd3kDeMg+fXCh/SxG2ibGyUcP5lksUQdWPl2fP7gCmEfcG7K/RRF9G+b0fxp/j0eDfqlLeuVM
 7P/H9vEekd5FL4x9ZA8CHGB3GE2uGNMv9HuvRy4fb+UfEOlvUmW1HAsmvE6nLkNE1x2AU62b/LC6R
 FmmSQBIxirzrr2gzpWBxZX8AfzdrfVGoDsuL/Z1HlL1Ri6HESzVJ/GpsHeR8HWF16oylLiIuCtalG
 efnioah7MVJPyQGR+Sxg==;
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5H1Z-008Azt-U2
 for wireless-regdb@lists.infradead.org; Mon, 19 Jul 2021 00:20:47 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id v189so25065409ybg.3 for
 <wireless-regdb@lists.infradead.org>; Sun, 18 Jul 2021 17:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=IOKhyIKX9sphpbuF3/QUSDAb1YKCTGuThTsMrD+moKI=;
 b=Y3waDBn3jf/40yjXcY00Vbz1VdxQTOdqCYyDL2ObjL1tX85o7Y2NUH3f9VcsiLHYZG
 L6NWF+N6KmGzWN8z08EBWHTACoah8K5Mi4yljLE/CbrPTf4Buu6Yc/1Z/FSXnsY0rvpY
 J4FKfERD7iJM6HQK0yXnu0bD8rM5D0uO55pzI3TXqCQMVEPoZm1uJ7864SeuzsU4rWsN
 vofH8PGWkppqvhNDygkkx9qOYkTqoO0PxALg5mJo85JJxPxvpqtCKTbrn4910MPsoGps
 WPU7oTcW969/KWAZ3kYJ4BaoZU7HmiN725j8hE/89pLttM4zRSsM7sceuJmLb0xirWBz 2eOA==
MIME-Version: 1.0
References: 
	 <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
In-Reply-To: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
From: Timo Witte <timo.witte@gmail.com>
Date: Mon, 19 Jul 2021 02:20:34 +0200
Message-ID: <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 6GHz
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
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The bundesnetzagentur has assigned WiFi 6E frequencies for germany you
this is the
publication of that change:
https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf?__blob=publicationFile&v=3

Following frequencies have been assigned for general use:
5945 - 6425 Mhz
maximum (200 mW)
No outdoor usage is allowed for 200mW

For "very low power devices" outdoor usage
is allowed, but only with (25 mW)
same frequency range 5945 - 6425

There is no DFS requirement.

Best regards,
Timo

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

