Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=0c3/ienUcmfktxDtjRkKQ1Uw2KhcrEWQlkfgjme0iIQ=;
 b=FawmuTYDIMsv1a
 px4lafxOL77dtZErTkjRAaJs6MVKqYabWpN4crS4VgqyyVwOnzXXv3gvfVstlwEKTO3dUWBNlNqMn
 QaVl/VzaXfxKditWZKgVY1PD9ZPpeostKcx++MgfoXL4I5qG1nNkzLq4oz3Ct40CHOR5Zx5+uVkWn
 OcU4M/w7M7J/dEFLIlLghsNdsKiRGKVMIrO+W28AjR3I+Ug+iwXMfJA0H64rjxdyubtFM/OcXV+VH
 ZQhQlIIpUqtkosD+FCIfUfxuPyUiT2w0BPBlbZoVe9eiyBgNxjc78tTpwspEDSdJ/febyL82UrVeC
 T+GxqCyvv3ehk3j+RH5A==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnrkJ-00CyUI-0Z
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 02:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681610641;
	bh=q1FTlBqay/1717eiEnGsLCQSlHrD3nGHP9zmYGzR5qg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YLRbiitkc29RL3ivVLjHcFRY6n/vQ0cv1czgWcqUaV1Tg7gc8AQ2P8a6P89y6BLf7
	 RDzuaScBSlAUl/3vLRfloRYyJhqEPIscVnZ4TUT2HDPy8UDfqzgWA+NzHafzgqO7U4
	 FpV6vfyxE7+ZX5j+q+xPofOrkRTVCXPO4gZqkQk5hHJYxUNgpC4q9qtu/BWiKRC0zT
	 g2EcykeM+CEgsPvacC6sbPcxgOaKf8rkdMcKJJcSFspelXj+TIvLbW0y677abHoSTy
	 tqOKHlhLcSsnGN/Nhila38F0r5GzaWbnxaOKHV8p/9XPWjOjQUcEWF5bLF0a6fC8cq
	 98lzIKOvqCqqA==
Date: Sat, 15 Apr 2023 21:04:00 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZDtXkCWhUQnYlNMm@ubuntu-x1>
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
Content-Type: text/plain; charset="utf-8"
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

Thanks for the patch.

Based on the document I think the rule is right. My only question is
whether or not this change is in effect yet. I ask because when I look
at [1], which is the document amended by the document you linked to, I
don't see this change. I'm not familiar with the process in Russia, so I
just want to confirm that the change is in effect before we update the
database.

Thanks,
Seth

[1] https://docs.cntd.ru/document/902048009

> ---
>  db.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index 915a3b9..7f338b2 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1500,11 +1500,12 @@ country RS: DFS-ETSI
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)
> 
> -# Source: https://docs.cntd.ru/document/902048009?section=text
> +# Source: https://docs.cntd.ru/document/1300597464?section=text
>  country RU: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (20)
>  	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
>  	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
> +	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
>  	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order
> №129_22042015.pdf
>  	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
> 
> -- 
> 2.34.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
