Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmXZF-0001T5-Lk
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 21:57:02 +0000
Received: by wgbds1 with SMTP id ds1so5348296wgb.18 for
 <wireless-regdb@lists.infradead.org>; Wed, 04 Jul 2012 14:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:subject
 :content-type:content-transfer-encoding;
 bh=acYcCnqqP0vt4R7L3pAOIzsSACu4ajkav29xA6hLoH8=;
 b=OqRNUFv2uIoKR8H4/5EaYwBChz2mj0vHVzPP9kqTS6rSaQBKIRYr7d4OHQgldOvb5/
 JNH9lbP2nsW3GnmRkgfbOuUsPltezp+zF/oVKzDPFyT08/ARpijdY825ALHXLzm+xrst
 cnbvsgBdO6dsWe55i3FWskWjYFu0/4XCvE/XnK02k9R0UQp8y1OEs4QI51Dn4ud34qQn
 eQYdIDiZpEaFd41R5BMDB97aIgKiRuCCXb+Uq/tvapBjbKj+Ks2V9aJ8QwTMS3XpUYxQ
 n3lYNJj2M4C9Gx48Fc4MR8K9bmsEKKaoTjxNUe5FUAt1ckSiOWjxAflsUT0tQJZhi4LR 3kPg==
Message-ID: <4FF4BC24.4070904@gmail.com>
Date: Wed, 04 Jul 2012 23:56:52 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for ES
 (Spain) on 5GHz and 2.4GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@frijolero.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

hi,

As I said before:
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000059.html

All CEPT countries, except those listed above, should be clones
of the current DE configuration. These are the CEPT _basic rules_ :

(2400 - 2483.5 @ 40), (N/A, 100 mW)
(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
(5470 - 5725 @ 40), (N/A, 500 mW), DFS

*Furthermore their own local rules*


When "spectral power limits" and "transmitter power control"(TPC) will be
implemented [1], some values _should be revised_ .


I did it only for ES - Spain .


[1] http://linuxwireless.org/en/developers/todo-list#Regulatory_database_improvements

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

