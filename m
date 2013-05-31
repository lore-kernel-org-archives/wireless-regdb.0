Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x234.google.com ([2607:f8b0:400e:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnr-0005Nt-8f
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:51 +0000
Received: by mail-pb0-f52.google.com with SMTP id xa12so1377540pbc.25 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Fy1Sch0ctGhlpt7lWL+b/QURSLmq5xa2Sz/WjEa15Bc=;
 b=G7BCh0Xg0R+/OJpaguX0ThpeYnay+/L2L4zWBNergF01LupYrt1V5qy4sixhc8/mgO
 zJsrdeHfU8WdcyZ7Q8mskCWK6UbvyC270n+0KUwwkKn/0udxD5y9q/DjV5P0PU+EKjDn
 tbCjbCXAA9K1VjmFjbS1CiwPzcs5FWjtHN8WXQjqs2Mt/+0xaBfrzhYe0umJOf4FCjP1
 UIDhyM289CaZeIjiFufb4hbf+Bs1PblftoGE9N/ObX80NzrNS8KH0clW30URkWHhRVzC
 34djp/vPEqU5/vpcCW9bA1Wlt0hXzqzZxjzM9P767jeEseV+nOxhhvbfYKNjvJURGSli F7rA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:59 -0700
Message-Id: <1369966169-23640-11-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 10/40] crda: annotate intersection worst
	case scenerio
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

In the worst case scenerio of regulatory domain intersections
between a different set of regulatory rules you will end up
without being able to initiate radiation on any frequency
range. Provide a hint as to what needs to be done next in
order to actually build a useful regulatory domain. Currently
we do this manually but building the mathematics would be
even more useful as we grow usage of the spectrum.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/intersect.c b/intersect.c
index dea9145..169fe1a 100644
--- a/intersect.c
+++ b/intersect.c
@@ -83,7 +83,14 @@ int main(int argc, char **argv)
 		printf("%d regulatory domains intersected\n", intersected);
 	else {
 		world = prev_world;
-		printf("Only one intersection completed\n");
+		printf("No intersections completed\n");
+		if (idx > 1) {
+			printf("Since more than one regulatory domain is "
+			       "present and no intersections were possible "
+			       "no globally allowed spectrum is possible so "
+			       "consider enabling passive scan flags\n");
+			return r;
+		}
 	}
 
 	/* Tada! */
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

