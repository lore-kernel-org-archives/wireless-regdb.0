Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJupY-0000Y7-Mp
 for wireless-regdb@lists.infradead.org; Sun, 02 Mar 2014 01:04:37 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so3658745lbg.7 for
 <wireless-regdb@lists.infradead.org>; Sat, 01 Mar 2014 17:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:from:date:message-id:subject:to:cc:content-type;
 bh=mLGUnWXyFs+W2HVPbEA3q3HGXsDT9rRltAaeYjp3+4I=;
 b=yHHvUezR6jnRiW0TrKuJyMaU7evES9uDb0fQ+QQkqDJnt6ED08r7pC7pD5R8zpvbgy
 gNdoubWEnVebStmg3HEmXdWGJKruMUEjle31ZW0wbvAwzFbBTBVulBz2dBy+3NgkUeD6
 oX3pnUr3rhtvSgznZIAfQIi4dzh4kLqV7WTscVEV4/quAAQoWrr81cPpsP2xomEC0A64
 G397x+w9xQGio3uutDJYv1fE90fbaUfuQVIn/IMD32oEdoACdpe4rtMtGbzXiK0kuB4M
 3rWhabI0sRnUht89MoGJ/4vu+tPgOg1xsmOHxkLrjjaLL2vNOFADqBQmw0B2QW4/e3YQ HAZQ==
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Sat, 1 Mar 2014 17:03:47 -0800
Message-ID: <CAB=NE6XVMfCbkb4pu-1qcNbiS3dNrR9LcHWWeLU4M5vm_frE5g@mail.gmail.com>
Subject: [wireless-regdb] Clarification on license for CRDA and
	wireless-regdb
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
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

Its come to my attention that some silly companies that are afraid to
contribute to advanced copyleft licenses are afraid to make
contributions to wireless-regdb. I'd like to take the time to clarify
that CRDA is under copyleft-next while wireless-regdb is under the ISC
license. wireless-regdb is the project that has the db.txt file which
is used by John to build the regulatory.bin file to the community. In
the event that you build the Linux kernel with db.txt built in you are
using the wireless-regdb file which is under ISC license.

Hope this helps clarify some things for some folks. If there are any
questions please let me know. I abide by the Harvey Birdman Rule [0]
so I appreciate any further questions or discussions to be directed
publicly through these mailing lists.

[0] https://gitorious.org/copyleft-next/copyleft-next/source/3baab310f662811ba48d8a86bfe7f9ef7ef612dc:CONTRIBUTING.md

Thanks,

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

