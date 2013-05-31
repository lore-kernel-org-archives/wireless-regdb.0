Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f175.google.com ([209.85.192.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEn3-0005JY-0U
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:02 +0000
Received: by mail-pd0-f175.google.com with SMTP id 6so1376905pdd.34 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=ecgCiYXAmm8jjRaody09OymjX5h8DS04dFUeHYtxmEI=;
 b=AIl2od2iBywPysTwcYd0iOxD8J+ALkyacOlU1DfQMGm5a7hw42PG1sU/MKrNf4CR0Q
 UZNsHMVMLo3KEVpByg0whi3NAHejQifRbPLML8CwjXhxpINW07em1GK3pid+nqUj0xoB
 Z3pM9ZDFW3W5xMR2oyBdj5Bkv9ctipFUmfvA4KGDx9fANP0qkCTeMeRyQSrPkR3G/GF6
 11ZIfjZE+oZDt/3uT/rRvGkIjsFrrYmBYgLaKqwf3EzLqiebJPvp8iDPCYdHxVWGGuMP
 sWIgb02p92hPf0UObLtPb3UJ6IipAGd3/BBja0jFb9ed0cBlZhoFiNBps7lN1g++jmtL t5QA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:49 -0700
Message-Id: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 00/40] crda: reglib enhancements
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
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

I've hinted I've been working towards a regdb regulatory
library. This pushes that idea further as I was inclined
recently to develop a union algorithm and saw we still
had quite a bit of work to be able to share more consistently.

I'll likely be using the intersection code as basis for this
and as such I've cleaned that up and also ran valgrind over
most of the code. I believe I've fixed all reglib memory
related issues the rest of things valgrind bitches about
are due to netlink.

mcgrof@frijol ~ $ cat .valgrindrc 
--memcheck:leak-check=full
--memcheck:leak-resolution=high
--memcheck:show-reachable=yes
--memcheck:num-callers=50

If this looks OK I'll next start working towards the union
code. The purpose of this is two fold:

Help build regulatory domains out of arbitrary custom
regulatory definitions and to also allow us to build
more thorough world regulatory domains that have passive
scan flags on regulatory rules that are do not fit the
intersection.

Luis R. Rodriguez (40):
  crda: make reg_rules_intersect() style match Linux
  crda: port over Linux is_valid_reg_rule() change bd05f28e
  crda: remove verbose errors out of regdom_intersect()
  crda: constify usage of struct ieee80211_regdomain
  crda: remove unused BUG_ON() from intersect.c
  crda: move regdom_intersect() to reglib
  crda: fix regression when using reglib_for_each_country()
  crda: move intersection if first attempt failed
  crda: do not double count on reglib_for_each_country()
  crda: annotate intersection worst case scenerio
  crda: fix intersect.c memory management
  crda: explicitly munmap() on reglib_get_rd_alpha2()
  crda: explicitly close file descriptor and munmap() on failures
  crda: separate crda_verify_db_signature() implementations
  crda: use gcry_sexp_release() on crda_verify_db_signature()
  crda: explicitly use close() and munmap() on reglib_get_rd_alpha2()
  crda: use gcry_mpi_release() when using gcry_mpi_scan()
  crda: rename world and prev_world on intersect.c
  crda: remove verbosity out of intersect.c
  crda: rename regdom_intersect() to reglib_intersect_rds()
  crda: rename crda_get_file_ptr() to reglib_get_file_ptr()
  crda: rename crda_verify_db_signature() to
    reglib_verify_db_signature()
  crda: rename print_regdom() to reglib_print_regdom()
  crda: add regdb_dfs_regions
  crda: make print-regdom use internal flags
  crda: move reg print helpers to reglib
  crda: rename is_world_regdom() to reglib_is_world_regdom()
  crda: rename isalpha_upper() to reglib_isalpha_upper()
  crda: rename is_alpha2() to reglib_is_alpha2()
  crda: rename is_valid_regdom() to reglib_is_valid_regdom()
  crda: rename max() to reglib_max()
  crda: rename min() to reglib_min()
  crda: fix spacing on reglib_for_each_country()
  crda: clarify intersect.c only computes an intersection
  crda: separate intersecting a full db into a helper
  crda: move reglib_intersect_regdb() to reglib
  crda: move regdbprint to its own helper
  crda: add reglib regdb context helpers:
    reglib_(malloc|free)_regdb_ctx()
  crda: pass struct reglib_regdb_ctx to country2rd()
  crda: make reglib_for_each_country() use the reglib context

 Makefile       |    4 +-
 crda.c         |   14 +-
 intersect.c    |  264 ++---------------------------
 print-regdom.c |   81 ---------
 regdb.h        |   24 ++-
 regdbdump.c    |   30 +++-
 reglib.c       |  518 +++++++++++++++++++++++++++++++++++++++++++++-----------
 reglib.h       |  125 +++++++++++---
 8 files changed, 589 insertions(+), 471 deletions(-)
 delete mode 100644 print-regdom.c

-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

