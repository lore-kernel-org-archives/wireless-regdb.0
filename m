Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=tVUh2uYDNTssZnwOT76g4LbOANjfoMot9RMhSs+uA10=;
 b=ASKIARrqAAyVt8
 Vp0OOkq+6CdDDzEKowlqtCB1rnZ4r78nfn9n08RMs6XSBl42HEULeNmZASuqcB/vUbHutnTKGAX3m
 ehDg2dPsl3DxtdRgOFFAxoq6slkPrvJcsxXC9/KGmcFSUY/kHMosycsSSIieQuMV/ZfdIecnDf9sr
 iDPIWiy2IxmJhmFS4cxG/qed41WyMx46Ni8Chhh4/YfH2TCvXonlFsvxvLZqFt6DpyQSukmdhE8Z1
 IHSk/SlQPctC+DFR1w0Qb9Y6yhfxTfL5YVvEZmBc6YJcr/1sZzdVoio2PDlIawrkK+TK6GN0PJO0L
 ACdz67/zLlgNJqhY2fQA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIud9-00A5ea-MN
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 15:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644680890;
 bh=wdO2zfMgIWAo32D+i8APtdcwmrUAuCjFi5NUKDnaU3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eBxwkkW1G/AT9CrUYYkF1PpZt4f/V3iFAS4Om1W5shJKpkxl3AYXgwJW+3DxiN3pP
 9ucl3JB5UdlBFo07K9YROYmqaOanuZcB8HFl7AQW2WaWoa6m2Kn+YAU52c2MBlWjH4
 OTN/R6r30Glbg5Or2HhwYrvlRk0lS9WmBMCACSu6sOe5taz/pPN5jbipQYqZn3uIQ5
 wUs3mxdeimHrM4DaV8JhpWQryZxy0FRai6DghDs/rBt0XPMbVU4fgEfrOYU8ehE7t7
 iNm9kfNIFnU2nKn2EHTeo6oVcxW+BTU0tks1PevydlDflIlog6huTVKjtCQmmMiyD7
 r76R+Rj0u6bzg==
Date: Sat, 12 Feb 2022 09:48:09 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgfWuV8E+xHZGeqh@ubuntu-x1>
References: <9a460b85-4e1b-40b2-8691-3f999331c76b@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a460b85-4e1b-40b2-8691-3f999331c76b@www.fastmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for China (CN)
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
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Feb 04, 2022 at 03:19:29PM +0000, Jiaxun Yang wrote:
> China had updated regulations on ISM frequencies by
> "工信部无〔2021〕129号".
> 
> The new regulation effectives from Jan 1 2022.
> 
> Update regdb accroading to it's attachment "2400MHz、5100MHz
> 和 5800MHz 频段无线电发射设备射频技术要求".
> 
> Announcement: https://wap.miit.gov.cn/zwgk/zcwj/wjfb/tz/art/2021/art_e4ae71252eab42928daf0ea620976e4e.html
> Attachment: https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
> 
> Those documents are only available in Chinese.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

Thanks for the patch. I'm looking at a machine translation of the
document, and based on that I think one change needs to be made, see
below. If something was mistranslated or if I misunderstood, please let
me know.

> ---
>  db.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 6dbda3c..e6fd657 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -346,11 +346,12 @@ country CL: DFS-JP
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5735 - 5835 @ 80), (20)
>  
> +# Source:
> +# https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
>  country CN: DFS-FCC
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (23), AUTO-BW
> -	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
> -	(5735 - 5835 @ 80), (30)
> +	(2400 - 2483.5 @ 40), (20)
> +	(5150 - 5350 @ 80), (23), DFS, AUTO-BW

It looks like this range requires TPC, and if TPC is not supported the
max EIRP needs to be lowered by 3 dBm. Since Linux does not support TPC,
we need to reduce this power limit to 20 dBm.

Thanks,
Seth

> +	(5725 - 5850 @ 80), (33)
>  	# 60 GHz band channels 1,4: 28dBm, channels 2,3: 44dBm
>  	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
>  	(57240 - 59400 @ 2160), (28)
> -- 
> 2.34.1.windows.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
