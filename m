Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=hzVA/kXF5urMcwwzXyOKfDSbIzLxEyQE88gqe+8klrE=;
 b=u7PSLFcA0zsSPd
 xOWjo4gztJa7xLNU0CLYdSRpWzrB8ZksPaOklGxo7N5u4JZnCRf/JyZN7sFfrfsQnN5cj0nPW42OE
 sugwTx6hyOTeOq0FShAXEKhYSjn/smclU1eSgLfsP3oYcvtnIKBOAQfbwOp+FJvv+xqZh86wALlGC
 96bRXNmu4uPukVlPLs3sFYYGLVBgVOnGP/JKthLVSO3vBZsn2kcL6nta5pbccdNmQutNe7FTkSnXy
 LCZ/8BiMbecfm4lPWQHOxjtoPhObxSQJiQ1BxlSSzQX09oYJpe1sTYbt8JO0/T8u6oyLWGtUC6kaj
 9lcHwqE5JKKvroeDznOA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6DDg-00FyWt-Og
 for wireless-regdb@lists.infradead.org; Wed, 21 Jul 2021 14:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626877747;
 bh=IegnqJKU0dxppcRpT+kLJBNKmAxlPjTzOn7xsqafSa0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SJAxCU/qUtUx07jtTXRjXnYZ7l7OjYRRvkGHpwFU/g4BZUQ38mAvOAnVlXb4HtkdJ
 Rbtl6tdhglsI+W6XGcdWGPjXdHt382+1ZnPGmgYZ6zxEQdfBu/0A97ZPl/IR3+pBTR
 TveW5wanJBKYQMQuBUC0I2+bXUKhvSwCcuSRCYz2BqVWCoJR+KZhMA3SvlG9gcFCMj
 ppR8gNBN+wdgEkEgfUqHfyGb+x988I9GlfjaX3WcoLx/udRCdtq+0BmoTiSPq9JbRV
 LLw+gAQvTk55tNwmIydrFwBHcFl/BtAMt3EtRLMNB5UCy6hgVqjSIJ52u85jr336uM
 K+FoL1ZYddynA==
Date: Wed, 21 Jul 2021 09:29:06 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YPgvMph+3vRbrol3@ubuntu-x1>
References: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
 <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 6GHz
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
To: Timo Witte <timo.witte@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 19, 2021 at 02:20:34AM +0200, Timo Witte wrote:
> The bundesnetzagentur has assigned WiFi 6E frequencies for germany you
> this is the
> publication of that change:
> https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf?__blob=publicationFile&v=3
> 
> Following frequencies have been assigned for general use:
> 5945 - 6425 Mhz
> maximum (200 mW)
> No outdoor usage is allowed for 200mW
> 
> For "very low power devices" outdoor usage
> is allowed, but only with (25 mW)
> same frequency range 5945 - 6425
> 
> There is no DFS requirement.

This all matches with my reading of a translated version of the
document. Do you plan to send a patch to add this range? If not, I can
send one.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

