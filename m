Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=5wh4e0y4LYRzdCeIUAwpfeDOZHyLbnuVK5o0k3yzDwY=;
 b=nICgSBQHyZ0QNj
 EWn5z+37x84/UY62YSAJStibOxtHoBcPitMl52WhmhZTcgfZDQly3MTlNg+ZwicUfnOaqZoFSlSHN
 qSX/W8xdd0/7C0LT3spXCbh4L4y35AsamHxSmW9fpcrELjlJo9S01dTYbIko096QPwzyvR9P23PS7
 +xiDrucH7Hq9erDTiy262yxp6YzryBvMc2gdpNRqRHCsPhHlN5ZD79Dl9WDNdp8rLLdWjfU2U7FYJ
 wGTMLVgNwGPRU/ubOEcXAprtz55kNQzwvUoqd5gTon8TkV3mtrhC8iWnzvbTwjkoPkYPR5NrBOadd
 ebAqoIIZz0tIbfRrTaow==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209;
 h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pcxSyonlpRtTtGH9QsgXMsViX8JYgFGu5vclyFdl7KE=;
 b=G7V7Ep3YLblOwlkF7K7jqDCb6
 jS6rVAg3y0yspcKldEcUPe8ysvHkR8aSXX39gNCX2Hpt/N47hJdS8Z27rWYixQcJSYaDtB26mF9lJ
 m+ybXg6SnK1tzC/riZdKjjNbE3nb2U1TXoaQfW5UWpZbsY7TGdqisSCFa2xSyJpCTGh17jkBOERXs
 Pi0/PU+fg18E/evJulIa2qw9+21SBlTb3Wh0CBuf5g+aDOd2QaA45WC+SUpFJlXWc18aLU4PB/w4z
 +L8XDMP2SnKkq+0yQQ6Bc20MEPHSmwKZDpLEj2KSXuo34aEPak+H9DU5kJzWGvP6z3Ntk+9zCDf0V
 BZimML0Hg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e5JEB-0008UO-1b
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:23:48 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5JDn-0001Dv-Gk
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:23:23 +0000
Received: by mail-io0-f197.google.com with SMTP id 97so9170325iok.19 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 15:23:23 -0700 (PDT)
Date: Thu, 19 Oct 2017 17:23:20 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171019222320.zz2qprjzxn3pyrf5@ubuntu-hedt>
References: <20171015134637.2760-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171015134637.2760-1-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add Short Range
 Devices (SRD) (ETSI EN 300 440) for Spain
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Oct 15, 2017 at 03:46:37PM +0200, Xose Vazquez Perez wrote:
> UN - 130 Dispositivos de corto alcance en 5 GHz :
> https://www.boe.es/buscar/act.php?id=BOE-A-2013-4845&tn=1&p=20150410
> 
> Cc: Seth Forshee <seth.forshee@canonical.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: wireless-regdb@lists.infradead.org
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

