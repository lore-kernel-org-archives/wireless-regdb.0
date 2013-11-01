Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-f48.google.com ([74.125.82.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCh-00007m-PW
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:00 +0000
Received: by mail-wg0-f48.google.com with SMTP id b13so4002172wgh.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=ZHBOKORKTWlNHgt2p+S5OCmhjiYjiexCkr8u2iM4/B4=;
 b=JjIBQrMBI/z8znU4p2tUOi0UJ9Zqghv0bKFHMUiv9N51K1ncR9sH7F1c2B9pBjAdXx
 fp/zLQiC/76OgWvmmvOx7B6FDoQSnHvtgBDpNKs8b2t73Uugeejmtc4BOrcuD84UX6pu
 YxkCSsIqYskq0+Vs/8PDI+iaojA7AG+eq+V1jeL9+7XrBRfJFdhwxgSQEVIndIRORkUT
 Kb4BWqyxLNwPziU81zl6mSNDBl7LhJo8cr3AMTHiIZEjO0WYK9lS6I9agVbVQDzOCfnP
 h18SsYEDmNT/+2IXv04wHXjTI2UYyI8mqtJ8hpl4qQdESubhGwFlsGsJPwCwXIjdSYry p8vQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:23 +0100
Message-Id: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/8] wireless-regdb: General updates
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
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

John,

I have a pretty large delta now, this is due to the fact that
QCA has had a backlog of updates to wireless-regd for a while
now. We've worked on a tool to help automate interpretting our
rules and extracting them into wireless-regdb form. The hope here
is that after we iron our our discrepencies from the backlog we
will ensure that we'll be sending updates ASAP and that away
avoid any backlog.

There are a few discrepencies from what we have on countries
that the community has submitted changes on, in particular this
consists of: CZ, DE, ES, IL, RS, UA. For these countries I have
not submitted changes, and I am pending review with Michael
on the changes to see what we can come up with or compromise
on.

The first two patch series are completely augmentative in
the sense that we are only enabling HT40, VHT80, increasing
frequency ranges, increasing TX power on 2.4 and/or 5 GHz.

The last series does have general updates to countries which
do remove some rules but that is done only for countries not
listed above.

The entire delta can be obtained via either a single patch [0]
or my git tree [1].

This is the first patch set and deals with the initial backlog
I had, adds DFS regions to countries, and uses the new CRDA
optimizer for rules for which we have no pending conflicts
with.

I'll post details of the second and third patch set after the
first series patches. I expect a 4th patch set but I expect
that will take a bit of time to complete. This should be
enough to get us started back on the right track and try to
take care of as much of the backlog as possible.

[0] http://drvbp1.linux-foundation.org/~mcgrof/patches/2013/11/01/pending-wireless-regdb-2013-11-01.patch
[1] git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/wireless-regdb.git

Luis R. Rodriguez (8):
  wireless-regdb: consolidate passive-scan and no-ibss flags
  wireless-regdb: remove antenna gain
  wireless-regdb: add DFS FCC regions
  wireless-regdb: add DFS ETSI regions
  wireless-regdb: add DFS JP regions
  wireless-regdb: optimize two of DE's rules
  wireless-regdb: optimize two of IL's rules
  wireless-regdb: optimize two of NL's rules

 db.txt     | 1246 ++++++++++++++++++++++++++++++------------------------------
 dbparse.py |   11 +-
 2 files changed, 625 insertions(+), 632 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

