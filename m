Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-x235.google.com ([2607:f8b0:400d:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WA8Ty-0003Jj-AU
 for wireless-regdb@lists.infradead.org; Mon, 03 Feb 2014 01:37:54 +0000
Received: by mail-qc0-f181.google.com with SMTP id e9so10029344qcy.26 for
 <wireless-regdb@lists.infradead.org>; Sun, 02 Feb 2014 17:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:sender:from:date:message-id:subject:to:content-type
 :content-transfer-encoding;
 bh=mpkD5ALNjbfoGCQXfnvKEzYZVpwuLaQAT3jK7V+3sJk=;
 b=ddPxATFBy397wZIeJddFemEKamK/6L3EN9rvKibkq4OTrvGFF9ljLm5Ek7qyiqmnbv
 mtoCDNNe5EiiBbYQSKRfyTi9JdqTySwWM6Uaa37QbTYTrVoMAEfs0YnIm4x3JmAQN8Ai
 WtusdvhLBmW/62PhBh0aNcC8grtM/GvXaEH/w=
MIME-Version: 1.0
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Mon, 3 Feb 2014 14:37:12 +1300
Message-ID: <CAKiAkGRN9w8vHyCZ-985En+rajNjrqgwCTwN67pMFOmAf=Ympg@mail.gmail.com>
Subject: [wireless-regdb] Update to NZ Channel List/RegDB
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi there,

I approached Peter (who works for the Radio Spectrum branch of the NZ
Government) at the New Zealand network operators conference last week
(http://nznog.org) about fixing some rather outdated and wrong Regdb
info for NZ chanlists.

I found Luis's commits (out of a Qualcom project it appears) which fix
some of the issues from a couple of months ago after the fact (I was
using an outdated branch of the mac80211 driver from openwrt) . The
commit:

http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-regdb.git/commit/?id=a03fedab50684d7bf956da47dfdd91212d9a9004

goes some (long) way to fixing the list but what follows is a better reference.

Peter has been trying to post to list but getting bounced as SPAM.

Message follows.


Kind regards

Joel Wirāmu Pauling
+64 21 171 8049
@aenertia


---

Hi,

I've recently been made aware that the current regulatory database for
5 GHz channelling is not up to date for New Zealand. Therefore we
would like to suggest the following changes

5150 - 5250 MHz (indoor use only) 200 mW
5250 - 5350 MHz (indoor use only) 200 mW DFS enabled and Transmitter
power control enabled
5250 - 5350 MHz (outdoor use) 1 W DFS enabled and Transmitter power
control enabled
5470 - 5725 MHz 500 mW, transmitter power control not enabled
5470 - 5725 MHz 1 Watt, DFS enabled and transmitter power control enabled
5725 - 5875 MHz 1 Watt DFS not enabled
5725 - 5875 MHZ 4 Watts DFS enabled

There are no restrictions on channel size however power densities are
specified. Therefore 40 MHz channelling is allowed (up from the
current state of 20 MHz channelling) at a minimum and all power values
are given as EIRP in Watts include the gain of the system antenna

Regards

Peter Gent

Peter Gent
Planning Analyst
Radio Spectrum Policy & Planning
Ministry of Business, Innovation & Employment
DDI: +64 4 462 4279
33 Bowen Street, PO Box 1473, Wellington 6140



http://newzealand.govt.nz/ - connecting you to New Zealand central &
local government services

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
