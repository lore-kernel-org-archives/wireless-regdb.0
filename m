Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=h8GgfcVRVrCfUMqPRxrAdMQtdHymHRpjmulDG8dykmM=;
 b=jv0+2lbnONsX5W
 Hlvz0Ks5KhHfb/6T06VW34+RVpgUVxdWsyapuK+q5pZN8fPHSivy5I4LiWu29Buo8kMf/vUQlHPqh
 Z8FIfO9HreFcG8PHxL3L95zKr4Jpt3jukcnHcfgcZHPcY9GU6NtFqbJ/SpReSfnLgg2fA1FGtx38B
 yDMAQf6iYy1BbiY2veL+u8CeHkev+tVBilK7pP4VpB9wM7KbKm4TyhKDIhNG2IAO25M8EgGFK23NE
 PwwHr+yg2biloGkKBf/cEhM3grytRi49vIqAd9ZOaoxqdn62jZLn9ADZ6WxkQ2FtTAvFpQ+a8AkQk
 lc2v+tNLd+VcXhcRC6xw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puDQY-004pMT-1m
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 14:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683123953;
	bh=bLa5JCsvvnHG7alfQD8k/ej7JnLJbBqhc9pIBaJInd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A49+ALjxo7Lj8/yTLaHnGwwkuBVyeWcEM8Tosay0v+YVRjaNN7042NHhC4tqyNOuZ
	 xse0ncLSI2SBW8OgcRb+Ofkec48bEknf+KEuD2jJDlqQPJvchuT69LYM4F5c1ayfJw
	 il7zEOaMf8kGEyKhdGIwu5lZOhmR6CybCudrODn6q5HohP07WytHAdmbZDnWvbPVXd
	 v43WKNn7yddb+5+KMTd9C+fKUoCNKsi+3eBn1k20uS49RcO11s9S4qQZdVyWr9d5UO
	 W/HRgdRwlc3JDcnrosTexYLUP6EHil4Bg5vtUAkrd56yCCr0m13qwys48pefe9Q/cj
	 n77iMRZWZHjMw==
Date: Wed, 3 May 2023 09:25:52 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFJu8FbgHF0Pbo+L@ubuntu-x1>
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Russia
 (RU) on 6GHz
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
To: Kirill <me@16depo.xyz>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Mar 25, 2023 at 04:04:37AM +0300, Kirill wrote:
> Update regulatory info for Russia on 6GHz in
>  accordance with current regulatory rules.
> 
> Source: https://docs.cntd.ru/document/1300597464?section=text
> 
> Signed-off-by: Kirill Matvienko <me@16depo.xyz>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

