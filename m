Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vaptp-0002MI-6K
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 16:42:42 +0000
Received: by mail-we0-f179.google.com with SMTP id w61so6972705wes.10 for
 <wireless-regdb@lists.infradead.org>; Mon, 28 Oct 2013 09:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=QPSI6OEj+piur+cKOHuiLGKmyt1ZcVpKZiGePNeQ6qQ=;
 b=GbJM4tcdbmo+qO/FEFCmBB8x9C6KTx5KQQ07VqtUWND8AWok6UPqVTpJFJsdSHCopH
 6FkCZwfpitWoC/rqDsVLnOlxTuiFS0T5Q6mAuzBc5/zADl0NLMn0FYFBVv0cIsH8tg3W
 kVf8JkMhf1jZ2qjWZPlLxcGLfwgkxjubVwSkdegE/ZN9E4DoPMwDOn82dXQfJOXC39OC
 1ehJQkbtFgjmJc8fBvWO7pKW1VbqJWB5R2Q9v4cVpOgbLMEeAGVGimHGLgp9MgtzBI4E
 OKWuOs6wkh0EeyJJ0PDBYfW1XOI4oCQXkWHaRyIYlu/fnlMauTd04xsV9/ZO3NlqxBjB CzQg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 17:42:00 +0100
Message-Id: <1382978526-23929-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v2 0/6] crda: few more updates
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

Here's a second spin, after quite a bit more testing I ran
into a few small issues with the parser and library. This
has these additional fixes / enhancements:

  * Lifts the restriction on 32 rules, although the kernel
    is limited by this we don't adhere to this limit on our
    stream parser or optimizer

  * The union code got updated to address two cases that are
    invalid for unions

  * A few fixes on db2rd and optimizer on using the stream
    parser, if its NULL, bail, we weren't checking for it

  * The optimizer was not considering band differences as
    part of its key broker (when it decides it can use
    two rules for optimization), to address this we deduce
    the band and add that to the key mixing. Note that this
    will need to be updated upon new frequency band additions.
    This limits the scope of optimizations between their own
    respective bands.

I've also gone ahead and tested this with a huge fluffy
non optimized regulatory domain of 40 rules, and also with
the wireless-regdb db.txt. I'll send some optimizations
based on this for wireless-regdb.

The only patches that go modified are the stream parser
and the optimizer.

Luis R. Rodriguez (6):
  crda: relicense under copyleft-next-0.3.0
  crda: fix -pedantic gcc compilation
  crda: add regulatory domain stream parser
  crda: add regulatory domain optimizer
  crda: make ssl keys include stdint.h
  crda: make reglib a shared library

 LICENSE             |  14 +-
 Makefile            |  54 +++-
 copyleft-next-0.3.0 | 219 ++++++++++++++
 crda.c              |   4 +-
 db2rd.c             |  32 ++
 optimize.c          |  40 +++
 reglib.c            | 839 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 reglib.h            |  60 ++++
 utils/key2pub.py    |   2 +
 9 files changed, 1252 insertions(+), 12 deletions(-)
 create mode 100644 copyleft-next-0.3.0
 create mode 100644 db2rd.c
 create mode 100644 optimize.c

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

