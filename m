Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=1MI3OKiHGDvUuFUuiRvDFsAkrBdPBA/Kg2PKnU7r/6E=;
 b=xgA
 /hE/lszsvVrVT5IgqBz/hY1pSDEIr3Ool7J3VSfeNEqvm3jwKfSPyI3YHG7dWMMXsGmb8fiaLxhCj
 CMFacLF4+Knk64ux59eMLk5Rl0z8BJMazOy4+kn3yKwepu/S8zpFCVphVxrG5XlmaunR/WHRJDaec
 6w+r0RJklROPnCg2lJW0GiUSgihvuRHqtfuUvl8fkg9reJkr+Z73D3rc0BSgS3tAAq2fwpn4x1HmU
 QWNnuSGrbxp/aPLFxiriwyemtF6bkZBI9EgNMia2ju05dlnZohllnTB4iCKF5cRdj+ZrK49gHwGn8
 v1q0CSkYjDiMcn0G08WpIZbFequ0X+w==;
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA821-003zLt-2A
	for wireless-regdb@lists.infradead.org;
	Mon, 04 Dec 2023 12:26:41 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id
 3f1490d57ef6-daf7ed42ea6so2546839276.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 04 Dec 2023 04:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20230601; t=1701692795; x=1702297595; darn=lists.infradead.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to; bh=bbMWYrOwFGjPWprkUCXagtldqipmNfETa/AUJqjd+MI=;
 b=YB1eqwomKbILD8iVSSASw1oXmymC20sofclQSDvQ84NkHyiibiaznlbKtxp3qSrYJe
 1mXZNr9tFsQGvzYexj1SCJILtfjRhq0RlAqghYNLH8XKf5kQ0LOLNDJl7sEjV93tpO9O
 zl+5CKQdVqx9IgTmlJh3dME1ELmBoH26S+bSMPmJEwd22k2cTipUr96bHc5IIans2Jg7
 2pOQpZzhpJJJk8ksy8HG4gpiZ0dawWH9tsdFKzecCiPaTB4RzJGO+2kr0IgDUJn1E2IK
 dfRZuxUJWCnvISLYaxGnlSADV51Lc6Ter/dZLgKvP9v+5BP7Uil43GnP6D9CfRK4Lzs5 JM0A==
MIME-Version: 1.0
From: Diego Garcia del Rio <garci66@gmail.com>
Date: Mon, 4 Dec 2023 09:26:24 -0300
Message-ID: <CAL4zwzzFNEMz-UtnR=5kQKTPPUfZjD-cyc0mgvbBZh1LEqBKxw@mail.gmail.com>
Subject: [wireless-regdb] Argentina approval of 6GHz band - updates to regdb
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Dear wireless-regdb / linux-wireless list members,

Argentina approved, in may 2023, the use of the 6GHz band for indoor
use. The specific decree can be consulted here :
https://www.boletinoficial.gob.ar/detalleAviso/primera/287126/20230524
but the specific technical addendum can be read at the link "Anexo 1"
at the end of that document.

The main changes are that operation on the band  5925-7125 MHz is
allowed at an EIRP of 30dBm for APs and 24dBm for clients. The APs
must also follow a maximum Power Spectral Density 5dBm/MHz  and
clients must restrict themselves to -1 dBm/MHz EIRP PSD.

I wasn't sure how to express the PSD requirements in the txt file nor
how (or if its possible at all) to distinguish APs from clients.

The given PSD limits would mean 18dBm for an AP at 20MHz, and 3dBm for
each doubling in frequency, so a max of 27dBm for 160MHz APs)  while
for clients, it would be 12dBm for a 20MHz channel and again, 3dBm
plus for each doubling in channel width  (maximum of 21 dBm for a
160MHz channel).

I believe that basically copying the FCC restrictions for the 6GHz
band would probably be enough, but I was not 100% sure.

Following James Clark's post mentioning the WiFi alliance's page,
argentina is also showing up as having adopted the full 5925-7125
range.

Sorry I can't provide a direct patch to the DB itself since im not
100% sure how to represent the different power limits. Best regards

Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

