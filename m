Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f175.google.com ([209.85.192.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnh-0005N4-CO
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:41 +0000
Received: by mail-pd0-f175.google.com with SMTP id 6so1377739pdd.34 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=hHz8g3kQzAJHbf5cYg8ExowbQUPPG/X7H4GCf8uTUQk=;
 b=DjyBqM8WQOw0S3pFhu+iuYxY3qWLvg167zx2Kzx2TUUQuX2meRo4sVjVh88GapK5GZ
 ww92XhJUCtBtVPDlSPr7ZSD+WYKZ9ReCvOBAzXf4zOZCr43UAIz4wQGJIq1esuvTkE8s
 GkCSfZfMt3HofA83k8BBYfDmB1dpjCReFz3TMTGbjHI3Z/Fd48Qetju+PVta9LHL6lca
 j1Q8qFZllE39dYbKZNq6MCiS5cKD2n6fIMHFj5j3veo9W/o9+qP0EKZUXDS6GocSK7aW
 xeXunE3YpfPIxbUev8df+WZSSmv8Vppdt16Y57N82ei5ERO4fxje1SyUgWCnRT3sLIy7 szfw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:57 -0700
Message-Id: <1369966169-23640-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 08/40] crda: move intersection if first
	attempt failed
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

The intersection should be able to continue on even if
the first two countries could not be intersected.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/intersect.c b/intersect.c
index 8f826a0..5cb7d7c 100644
--- a/intersect.c
+++ b/intersect.c
@@ -50,7 +50,7 @@ int main(int argc, char **argv)
 					"with country (%.2s)\n",
 					prev_world->alpha2,
 					rd->alpha2);
-			goto out;
+			continue;
 		}
 
 		if (intersected)
@@ -94,7 +94,6 @@ int main(int argc, char **argv)
 	printf("== World regulatory domain: ==\n");
 	print_regdom(world);
 
-out:
 	if (!intersected) {
 		free(world);
 		return r;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

