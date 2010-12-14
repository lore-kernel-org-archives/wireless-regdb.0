Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PSZmg-0001Et-An
	for wireless-regdb@lists.infradead.org; Tue, 14 Dec 2010 18:39:34 +0000
Received: by iyj21 with SMTP id 21so458815iyj.36
	for <wireless-regdb@lists.infradead.org>;
	Tue, 14 Dec 2010 10:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:from:date
	:message-id:subject:to:cc:content-type;
	bh=Tbn5YmEcS+bR66jpzxx1rGRiX17A5wnnDfwkLfjS1So=;
	b=PxbXN55NIiCfagWfPLmX7JOff6PNUfOFxom6apUy1nE4DrH52KroP4Gtzb/0BLwmbv
	x0lt/noijB6SVQYaCdeN82aQEOHopM6kf+nqbsFdUMOAK2iT+/Ao5BzvE2QIgVxXbv1T
	f19pHVflH9WSRmeVDgk/SHBigCcFFPmKhWwRA=
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Tue, 14 Dec 2010 10:39:12 -0800
Message-ID: <AANLkTikP+jMHvDgkGTXfq58M7TEBthzuvEFoENXvxyqJ@mail.gmail.com>
Subject: [wireless-regdb] DFS development roadmap 2010-12-14
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: Gery Kahn <geryk@ti.com>, wireless-regdb@lists.infradead.org, Michael Green <Michael.Green@atheros.com>, Sundar Sankaran <Sundar.Sankaran@atheros.com>, linux-kernel@vger.kernel.org, Vipin Mehta <Vipin.Mehta@atheros.com>, Mahboob Alem <Mahboob.Alem@atheros.com>, Rich Mosko <Rich.Mosko@atheros.com>, Tevfik Yucek <Tevfik.Yucek@atheros.com>, Madhan Jaganathan <Madhan.Jaganathan@atheros.com>, Susinder Gulasekaran <Susinder.Gulasekaran@atheros.com>
List-ID: <wireless-regdb@lists.infradead.org>

Note: this is a public e-mail

We had a good IRC session, and were able to at least come up with a
development roadmap to focus on:

http://wireless.kernel.org/en/developers/DFS#Development_roadmap

Some good news is we have a raise in hands by TI to participate in the
development. Things we need to iron out for each development step:

1) Map countries to a DFS region bit

The plan is to map each country in db.txt from wireless-regdb to a DFS
region. There are only 3 known DFS regions:

  * FCC
  * ETSI
  * JP/Telco

Michael, David, do you guys expect this to change any time soon (say
10 years or so)? Anyone else know?

I can work on this.

2) Get DFS region to the driver through cfg80211

This is pretty straight forward once we have 1) done, and I can work on it.

3) Where do we stuff DFS parameters for each region

One idea is to use the request_firmware() API as it is expected these
parameters will be region and chipset specific. This requires a good
review of all chipsets and with priority on the ones who have vendors
or we have documentation for that we want to support in existing
drivers. Today this means Atheros hardware and TI hardware.

Vipin, I am curios how you intend on programming DFS with ath6kl (if
this gets added, we should if TI is doing it ;) ), do you stuff all
DFS parameters in firmware?

Gery, how does TI do it?Most of the work here will involve hooking
things up for mac80211 / cfg80211 / nl80211. This will consists of
receiving DFS events from the driver for radar detection, keeping the
NOL list, sending it to hostapd, choosing a random channel, and
sending CSA to STAs.

4) Program hw DFS parameters

ath9k_hw already has some knobs for this, Felix already submitted some
of these changes upstream. Most of the work required here will take
place on ath9k.

5) DFS events

Most of the work here will involve hooking things up for mac80211 /
cfg80211 / nl80211. This will consists of receiving DFS events from
the driver for radar detection, keeping the NOL list, sending it to
hostapd, choosing a random channel, and sending CSA to STAs. We can
worry about this eventually, once we get the above 4 steps done.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

