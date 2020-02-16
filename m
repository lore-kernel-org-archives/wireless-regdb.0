Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=rb7jFNElle7u65h2J/npsVgf4CGLrK2GTr8nJXdqLpo=;
 b=klpVHCW9yNjRjbLIiJaphxxSZ
 IIUCqBndO8meWNB6bL8k/KArvvNeT1ws4VZe+IvGwBYlnaaFdLjR9hnnW5QxCUHIIPpulZVaMJ2e+
 EFU0GqbaDxeag6cyaenbkg9fb3y32x3dXL3l9Sbvx5egscs8JxUKqPWnvZCYmC9/89azM8/ofNsk7
 bMftIOzAFyf/MmelpSNURTFfODmhXiCDb4JKWMJUcU8yIh17WbgDGE/B16jolA8zNKyUP65k2hU1r
 glkIldK1vimcN643X8ZUMIqT+oHKO5zQ6zyIR3Q2oX1ejZw5dXzrg3Ww+U/YEy9C9UdgR2niPCDEt
 uB7WPBvMQ==;
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3L2S-0004vd-KH
 for wireless-regdb@lists.infradead.org; Sun, 16 Feb 2020 14:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=lF1H11A4xL3IUsMYRIBxDsrUXUH8yfHXn7YDFVEYpQs=; 
 b=vpFcs00O/dphvOFx2eCniSx05u8D+v4jVIs3g3mOshpFLrHI65h3kiI08FtKaq8fT/49YW+gu5hIAMYKTVKkwCWRhC4ZzeP1oVqxI6jwJUKW3UybxOFtottijJiPdsLDdoowPRwinE3httW0rgXRb1tfVagZmlr9PV4aldiRtxc=;
References: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
 <20191029144815.GR30813@ubuntu-xps13> <20200127042500.GE3730@ubuntu-xps13>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <1c1bda62-fec8-b30d-5300-79fbe08fc517@newmedia-net.de>
Date: Sun, 16 Feb 2020 15:36:33 +0100
MIME-Version: 1.0
In-Reply-To: <20200127042500.GE3730@ubuntu-xps13>
Subject: [wireless-regdb] wireless regdb issue
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

i have found something very strange in the regdb. according to various 
sheets and document. channel 165 is not compatible with vht80
in the fcc area. but the regdb doesnt cover this rule. the whole range 
from 5735 - 5835 is set to vht80.

so what is correct?


Sebastian


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

