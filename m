Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yzo37-0002xO-SM
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2015 15:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1433258657; x=1464794657;
 h=from:cc:to:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lKm7mwAnHCbk8v3IGTjPQvDnhk86eY5djxY4efJoO1M=;
 b=VVagLHvPIIzHHMYhxYzXPSedFPVKEFD52GkSlrR9aAinkUy4KHtYZfJL
 0ldSoUXYkdltcXooiVy8a8Neon/QGgPRDNvjz8ovi6hQNK2QGDMb3xy6h
 hkfgE0k7A/21chqikoD2TyoPhn16XnSpd4qOaqOJ+Eq8frooWTUdB9hsN Q=;
From: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Date: Tue,  2 Jun 2015 18:23:46 +0300
Message-Id: <1433258628-7047-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
In-Reply-To: <20150602144231.GA31648@ubuntu-hedt>
References: <20150602144231.GA31648@ubuntu-hedt>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v3 0/2] 60 GHz rules update
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Update for the 60 GHz rules for 2 countries - Japan and Russia.

Rebase and re-sending to the right maintainer, thus mark as "v3"
to avoid mis-interpretation

Vladimir Kondratiev (2):
  wireless-regdb: Add 60GHz regulatory rules for Japan (JP)
  wireless-regdb: Add 60GHz regulatory rules for Russia (RU)

 db.txt | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

