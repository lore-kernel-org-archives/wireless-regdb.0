Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ePTJE04UXV5ai1JhBc76J3b2acb7DemCm86d84IuQnA=;
 b=LSouyDOTHbpYGD
 6PekXeqDhIUfjfPdFdcWU18GgbVMZkWRvfQSfMZY5XFqHta2x7dUusWBdLzHmu+r9EerNIebSQ4t6
 PKWbemvMI5vfYrFwAb04YA+nmsR6NpU4HCwp03/uVLs4yAFyYSuPbdXrgXWP0gs6NNI49Bv813lgw
 vcgfFVsWJA/Se60EoF5+eoFoEhQnEdK04vEqLsXU8msqSspbWEUlVw6QRKQU2LBlSENEJzXWsWQnL
 HP0craRvtCIKNvR00IdSfzADhHg6CYLkHDIB6jdZDwhePI6AquJdEMGj9FQ8pznvbIWo8WPwCkXeC
 bl+R3aBoA5GsK1U4WIhg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puDZw-004qaI-2g
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 14:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683124535;
	bh=Dfu0Oo4wS5bbuhu/ZJTm3kewDRXpkdoWHrQ4dxVhyuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t7Ic6BvEPmFCHXXcHEM5dfIlU2WTCOCwUXuzKiUYq97cpSXEa2yaI2gK96qzjPUW0
	 hKBNyct4D9jZ5hLAvAx8zDKTLK1VZVdRm3kITUi4u0PYjpep6rTYCmOsNLPsr0olZB
	 OjbzWK3Zz8aO13Xpx8rQp25RVAyM3O5YmL42XwTo7u6dpPIbjPzRlTJjqk91gEDqPk
	 CmPY/KtvSD0ls+KhEkR2uV+Zk+rIbqsAtzJZ50PuJdV6sfAFjjxqUKgIqh3JbP/BUJ
	 UN99ZKQWTirPPwNn4aNiXYfi+19jVGTps+GdAYkPQ7/AoR8t43HToe0hukGKaIVeLI
	 S+KhEJ5YZmkfQ==
Date: Wed, 3 May 2023 09:35:34 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFJxNrxeA+sRft0A@ubuntu-x1>
References: <20230416013031.158433-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230416013031.158433-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update regulatory
 rules for India (IN)
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
Cc: linux-wireless@vger.kernel.org, Keshav <the.ridikulus.rat@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Apr 15, 2023 at 08:30:31PM -0500, Seth Forshee wrote:
> Increase the max EIRP for 2.4 GHz to 30 dBm, and add DFS for 5250-5350
> MHz and 5470-5725 MHz.
> 
> Source:
> https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
> 
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

