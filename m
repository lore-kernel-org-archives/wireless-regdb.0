Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vac1N-0000ZC-FX
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 01:53:34 +0000
Received: by mail-we0-f177.google.com with SMTP id x55so5891479wes.36 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 18:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=9ATzooN74c3iQwynv0qdRGhtDm9mPzPthvyC82XefAs=;
 b=JM1ge0WLPtWdLBgNXDvkbREEFf/uJWQ/Gg+YlBEkqm39C1EwPqIJpmDvGpUOzR7L8Z
 DO/274j2zrFmgl0KKr1ODNhHgCLOvGmj464uELkV5Fyed0DBq/0HbnXiEQvr5BBQ4yPM
 5vvpOz/GaJkws08EGxAWPnjgCFu2T4rwgV3NVR1R0skteb2FRxgaxRuO6N+iGzJhLtra
 diYoLxVkke0TfeqlwJ58E7MB1PhCUjoP1WGYJWHNQvQZW7NkgVDDSRKm3aDWjwDCazv/
 KfaoTVHib3TRWwTlMzosQLgEOkvd55VBOOSGDa9HzEw91ZpBEuo8rALEi/NHssEzrw2D sfbw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 02:52:56 +0100
Message-Id: <1382925182-7393-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/6] crda: few updates and license changes
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Here's a few updates to CRDA. This depends on the removal of
antenna gain patches I posted last week. The tools developed
in this series are designed to help folks who want to contribute
to wireless-regdb but have a regulatory database format in some
other form that is non-optimized. The stream parser helps users
get their data out into non optimized form, and provide also
optimizers.

The optimizer work by doing a union and intersections on the
set of rules of a regulatory domain. Lastly as I mentioned the
last wireless summit I'd be making a library here, making CRDA
and its other tools share code. Other tools may use the library
later but these require a bit more work and as it is right now
the db2rd and optimizer require a bit more work to be shipped
by default.

This work has all been valgrinized.

Luis R. Rodriguez (6):
  crda: relicense under copyleft-next-0.3.0
  crda: fix -pedantic gcc compilation
  crda: add regulatory domain stream parser
  crda: add regulatory domain optimizer
  crda: make ssl keys include stdint.h
  crda: make reglib a shared library

 LICENSE             |  14 +-
 Makefile            |  54 +++-
 copyleft-next-0.3.0 | 219 +++++++++++++++
 crda.c              |   4 +-
 db2rd.c             |  30 ++
 optimize.c          |  38 +++
 reglib.c            | 790 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 reglib.h            |  60 ++++
 utils/key2pub.py    |   2 +
 9 files changed, 1199 insertions(+), 12 deletions(-)
 create mode 100644 copyleft-next-0.3.0
 create mode 100644 db2rd.c
 create mode 100644 optimize.c

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

