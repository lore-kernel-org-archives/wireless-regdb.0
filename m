Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpYX3-0004T3-4b
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 08:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1430815730; x=1462351730;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Z+53ei+N46hwf1q0TyxemALkjo6IU4lXfpuX9Jy8p8w=;
 b=bMCvdznL+GnBeeJUaY10s0y9BfD0fLOTJvBsdEFcTaczEMAI3/AD7ZYq
 cn41YA72PHSXrwf+PAQ+P3XGM8VxpImaLSxUZ+zwJd8ZvRJfh1AvyOWnE
 xj6w1oTd13+Cme8Z6sWmunxp8p+E3UIlQzBvtrm++S2TTkdg1DhZSoTEV s=;
Date: Tue, 5 May 2015 11:48:21 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20150505084821.GA26349@jouni.qca.qualcomm.com>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
Subject: Re: [wireless-regdb] [PATCH] Specify Australian DFS region as
 DFS-ETSI
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
To: Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 05, 2015 at 11:32:16AM +0300, Dmitry Ivanov wrote:
> Currently, DFS region for Australia is not specified. This prevents starting AP with AU country code on DFS-affected channel in 5 GHz band with latest cfg80211 and hostapd because there is an explicit check for such condition.
> 
> This patch specifies DFS region for Australia as DFS-ETSI. Alternatively, DFS-FCC can be used.

I would have used DFS-FCC here unless you have a clear indication of
DFS-ETSI being closer to requirements. In addition, there should be a
Signed-off-by: tag in the commit log as described in the CONTRIBUTING
file.
 
-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

