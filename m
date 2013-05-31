Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x229.google.com ([2607:f8b0:400e:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEny-0005OV-VE
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:59 +0000
Received: by mail-pb0-f41.google.com with SMTP id xb12so1397428pbc.28 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=RH/uGPZgjlGZteaAxjoYayVcl1ZxMCnUPtGa70tN5Go=;
 b=UZCIQpZrZd7+f8sY6dqjb3+4mlWN+6GvBGOg2MdOHsjFxGOlDVJhqQrA4HICoiUP82
 HikfKEMwe3QTXBZZ0a3J4EZEIsu2LX7zpIf4loU7o7byIfZKWma28HQdSPbTrFvKGLeF
 JCgphgjeZTIxu6U7rOTuG3ziqf6Eq08K/RxV3ekWJSzBXx4/17qvKLkzhX4SLp/evdZl
 XAPe7RKi8BDY0eRA3we79M2yeMyWLX8IshhgsqZQFg+VyY2mJiu1bisOezd8NYwWAh5Q
 DTa6CrQWPC+k/E/R2GATt5pT2sCUlEFqbWdXoamF9QX57AeomnaaSIdSSXBP6ryULwIX PfPw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:01 -0700
Message-Id: <1369966169-23640-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 12/40] crda: explicitly munmap() on
	reglib_get_rd_alpha2()
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

Although the region mapped by mmap() is also automatically
unmapped when the process is terminated lets just munmap()
it ourselves to be more tidy.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/reglib.c b/reglib.c
index 867e8cf..bb6f23f 100644
--- a/reglib.c
+++ b/reglib.c
@@ -357,6 +357,7 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file)
 
 out:
 	close(fd);
+	munmap(db, dblen);
 	return rd;
 }
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

