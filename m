Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=YQcGBw7/csfpCTs12Cnr9PZT5Dc0MWxhQadDHvsDD+U=;
 b=PrkjACaQcryV9q
 LNUfApp+KB3/w0u3j42b0Ts2elJPKfhH2rasr9Qls6/t7T3Yk9Ml5XW3juuUFmOeO43bMiMdIm9Mx
 ARr0xOvyGAKry6hXZ2snO0rCjGPaAhsF5+pP/TpE4jkfGSQePwAKDwxmTiT11N1RiFuyW+XwUdz9i
 cXX9gZ+QE1CVpyqg3wB3aiEs0xqdBjlnENKDX75rlnetc8H77998GNktGgbYTRgJfnMz4BhEVOOU4
 KVb2vk5eJ56GbqLX10KIj+OCBMGts2/SuUIcLjk0Wmea771OzFYoOvu9lBeoyTupOE6M2t/KGgTjr
 hfBJyGIevUbqWuVTszUg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMxC1-00F6UE-1y
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jul 2023 20:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689973059;
	bh=XqUMwsvgw3jy5Kr17SRjd3dRflDXazCDyrNP2evsJWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kj4ShIMb1pZ/8ePXKf3qYxLvSFSfAvZMgJis7X4Lgfm9CusSeA1H2q28QVXlHwXSL
	 CIl7IBuyb8DrSEcAABkhcN7BtthANL4dH70KG3QfKU7RrqfZ9P6wBS6C0ynPE2aotr
	 y1jkeEFBorfxIpuS5XG637eKM6CSRnf5rC73tbyQCFGfesKXHWOhKk/+/HpTLUhHn/
	 edXZ/LaGz2uu1zXd9KLSkcb8wtCYT/YahdxsqZVn26ETixSvqKk6a6VFmA19QOokEo
	 Xy+QbyxJccgqh0I2znaGp7q0Z2CPyX/sxHANw2Mg4iQoOL+qMCyvn7+8y4UIMSaqDk
	 FCs2ez+do+wLg==
Date: Fri, 21 Jul 2023 15:57:38 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZLrxQrN/WVtVDc9k@ubuntu-x1>
References: <20230711153945.1004817-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230711153945.1004817-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Egypt (EG) from March 2022 guidelines
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
Cc: Mohammed Ismail <m.ismael@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 11, 2023 at 10:39:45AM -0500, Seth Forshee wrote:
> The radio spectrum guidelines document from March 2022 [1] contains no
> restriction on outdoor operation and allows use of 57-66 GHz.
> 
> [1] https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf
> 
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

