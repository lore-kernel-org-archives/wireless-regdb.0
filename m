Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
 by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
 id 1Pk1O0-0003NV-LN
 for wireless-regdb@lists.infradead.org; Mon, 31 Jan 2011 21:34:13 +0000
Received: by qwj9 with SMTP id 9so5839871qwj.36 for
 <wireless-regdb@lists.infradead.org>; Mon, 31 Jan 2011 13:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=domainkey-signature:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-type;
 bh=zdXBevFJlctTOzzzJgeVMUUQA0/h5uEspT92XiOl8ZM=;
 b=UWKZqpXgLfabQS9fMc5ngKI+R8dBxxoUgfPn9zeMpR0H5rpkcVwRJUCi1S8e65p4hr
 g0d+8Jnh8emIo5IAWBALYrWsRTcqcyWyN27MdEPBB2uW/IbFvnwCnfgY5dxQghNCMG1C
 WVG0FuY2Dqk5V3M7afz+MZ62JkDwwOAxE62vY=
MIME-Version: 1.0
In-Reply-To: <AANLkTinuFzBMMLd08Zpkf8iGBO-YdM2Ni-KtNCNxuUbT@mail.gmail.com>
References: <AANLkTim3CG+aN9QGhGOfBD9+BSYsgQW_ACC0o+k9H-rt@mail.gmail.com>
 <AANLkTinuFzBMMLd08Zpkf8iGBO-YdM2Ni-KtNCNxuUbT@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Mon, 31 Jan 2011 13:33:50 -0800
Message-ID: <AANLkTi=b-Tm7r1eODgAQqpQJuimD0+dQkHFB4YV06kES@mail.gmail.com>
Subject: [wireless-regdb] Review of EN 301 893 1.5.1 and 1.6.1 changes
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
To: "Luis R. Rodriguez" <mcgrof@gmail.com>, Michael Green <Michael.Green@atheros.com>, linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Kathy Giori <Kathy.Giori@atheros.com>, David Quan <David.Quan@atheros.com>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

FYI - European conformance spec for 5 GHz Radio LANs has some slight
modifications which Johannes has pointed out which we have reviewed
today in consideration for our new DFS design. The skinny is that our
implementation of using 3 regions are OK and we will move forward with
that. Below are some small meeting notes on this.

EN 301 893 1.5.1 - new pulse patterns - in effect now (Michael will
confirm) - all rules harmonized, all countries will use the same of
set of pulse patterns. Countries won't be able to pick and choose, all
countries must abide by this.

EN 301 893 1.6.1 - isn't finished yet, it will take effect 6 months to
a year to take effect. 0.8us pulse is what we support today, this spec
pushes the narrower pulse width of 0.5us. Countries won't be able to
pick and choose, all countries must abide by this.

Based on our review today we are OK to keep the US, ETSI, JP
categories for DFS regions. We also do not foresee any future changes
which will break this design. The biggest wild card will be FCC which
is currently reviewing DFS rules but as far as we can tell there is
nothing on the roadmap to allow dynamic configurations for DFS
parameters.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

