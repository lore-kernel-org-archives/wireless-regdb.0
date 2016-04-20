Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asgFv-0001NM-By
 for wireless-regdb@lists.infradead.org; Wed, 20 Apr 2016 00:44:36 +0000
Received: by mail-wm0-x22b.google.com with SMTP id n3so56231942wmn.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 19 Apr 2016 17:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id;
 bh=jK8HyFDK7RAqrvoS7lWUYcKBNBcgycVJmR2vTMKA96I=;
 b=iLxGdmTe4PdP5BRiUM0vdRCuEZQ96axrxS1t/nSbmMhI+MOKuagxjEwDLAMJP6jt3K
 31g7laJnXkfIne9rTKFGX9Bk42gIyBaNlmnbbqAUgRtf1rS06PL1RtF6RuynqkBCiBSv
 wcMNc/7bLKVJlRtl3ER8DbFn8akLR2G/pL6g39/BvCj4RrdCjRKM9zdRZF5fc9er3/qM
 m0wkKl9CNr8Eup8R9UOx5z/k7k7pR8PfFwUcZsXdE5NIBbKQZVm5xBqd5kyQXYGX/t3M
 OCaGY8LWZ2zDgdPvIqeTV4RnUqYJa7OYKV9HhIuOEFXZk9j7gUH4tmJgTW4Bba10I/GR 0U/Q==
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Wed, 20 Apr 2016 03:44:02 +0300
Message-Id: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
Subject: [wireless-regdb] Updates for the regulatory rules for Bulgaria
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
To: wireless-regdb@lists.infradead.org
Cc: bordjukov@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

There seem to be discrepancies between the current regulatory
rules for Bulgaria (BG) and what has been mandated by the
Communications Regulation Commission.

First, the maximum e.i.r.p. for all the bands in the 5170 MHz to
5710 MHz range seems to be 3 dBm lower than what's permitted by
the CRC. This change was introduced with commit
236efecf6685f917baa26aa0108b1eebce910bf3 and is attributed to
QCA's regulatory team's efforts. I'd be grateful if the QCA
regulatory team reviews my patch just in case I'm missing
something.

Here's what I'm getting from the CRC's EU-harmonized frequency
list[1]:

WDTS 2400-2483.5 MHz
100 mW maximum e.i.r.p.
10 mW/MHz maximum e.i.r.p. spectral density

WAS/RLANs 5470-5725 MHz
1 W maximum mean e.i.r.p.
50 mW/MHz maximum spectral density of the mean e.i.r.p.
Comment: The devices must use TPC that ensures average reduction
of 3 dB of the maximum transmit power of the system. In case TPC
is not used, the maximum mean e.i.r.p and maximum density of the
mean e.i.r.p. are lowered by 3 dB.

WAS/RLANs 5150-5250 MHz
200 mW maximum mean e.i.r.p.
10 mW/MHz maximum spectral density of the mean e.i.r.p.

WAS/RLANs 5250-5350 MHz
200 mW maximum mean e.i.r.p.
10 mW/MHz maximum spectral density of the mean e.i.r.p.
Comment: The devices must use TPC that ensures average reduction
of 3 dB of the maximum transmit power of the system. In case TPC
is not used, the maximum mean e.i.r.p and maximum density of the
mean e.i.r.p. are lowered by 3 dB.

Second, the CRC mandates that the 60 GHz RLAN frequencies are
only for indoor use. As a side note, the last version of the ETSI
EN 302 561 standard mandates that the appropriate National
Administrations are to state the maximum permitted output power,
which as I see it is in conflict with the current state of most
of the regdb, at least concerning the EU countries.

[1] http://crc.bg/files/_bg/Spisak_09-06-2015.pdf

-
Regards,
P.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

