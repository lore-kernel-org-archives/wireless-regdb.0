Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XfkKF-0005eu-It
 for wireless-regdb@lists.infradead.org; Sun, 19 Oct 2014 06:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1413701447; x=1445237447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8VE6Cvg+bV1Z0pbiXT2j9Qrq6NCfgqB8QM482HztK4=;
 b=JB22fMuOpCPkmB71MG60zzdWB49EG9O1EnpcbHlWwij4aivfWuTREoH1
 groNsmGPU+gT7yMEgh3/zO/XabISlu/A/UeEzG5G2fcfkAnNI4IPyLttl
 +L9DmBgkP9isCRagjpKenTz3BITo2e7DVQj9wmLjPiE2KRPQ/baOHjCmK o=;
From: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Date: Sun, 19 Oct 2014 09:49:52 +0300
Message-ID: <1465375.2aSLY3brRR@lx-wigig-72>
In-Reply-To: <543D170A.6060709@gmail.com>
References: <543D170A.6060709@gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add regulatory rule
	for ETSI members on 60GHz band
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

On Tuesday, October 14, 2014 02:28:58 PM Xose Vazquez Perez wrote:
> "(57240 - 65880 @ 2160), (40), NO-OUTDOOR" should(must) be replaced by:
> "(57000 - 66000 @ 2160), (40)"
> 

Yes, looks like you are right. I used draft that I don't see on its location any more,
and final document indeed says what you wrote.

Thanks, Vladimir.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

