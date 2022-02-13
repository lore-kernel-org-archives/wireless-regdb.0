Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=YmIX1fs7dN0c8oaa5l0elP8vXKVKnIsj0DCXDUl1gOE=;
 b=tdSt0QNVKFGRyq
 3zglqSaJdjsYs/ZIMY4jr1/AcEsDWbq6/whUV9fZH/MnJA2uM5ebAZcJAXstwS1jNKt5cQpakfL3u
 POMcJMxiF6rrSbFXBPiD/mZa1XCf8ZY0cSm6d+uyiYggJTUk4KeN9/TUHrfFYBsWAB97khsG/so+A
 PtXprEzs4doXvs+QLjdinnc7lbytdk5StCwLrnI96i6uyBaUvx7LkOonJ34x8YK+fn+LlISQd7tMw
 aCwBbRtCnU3aPqqqDTj9UXxi60bqYFvlZv1bdkkejXW1dBrTXrQAoSvY2ub3RSW0ZzoDXtrTU3g5i
 Tn25weZ+0zYBA1lceAKw==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJNJ2-00CcMv-2k
 for wireless-regdb@lists.infradead.org; Sun, 13 Feb 2022 22:25:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644791117;
 bh=6TiCAtkOA30O6+IrGW5hZ1QCXVrdhWmQ6yyS+woEdo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vLQvjlMicWaEMpplc6gU/WgrnRBbUybf9A2IG3yGnLWe6fMrlXmSX0MGTooK7Puu3
 th0spt/ZFWzIjtB/J/1Uxtae/joslMZ+pUKhhcW7csyyIWcpR7idrXL9rxMYQYavnG
 /Zjmy1nGQzg2hzbLqO5OhlA1HfxjYjIcTq/sqFg4L+BukuPsDDjWq5tW2e2gSVT3gM
 K2NZ04MKkT30PABQCIoVlolanm2Tm7yL3zf1Bg8Kamtd5N2F/+JhZ3RWGielMciDFp
 BFb/N0mPK/aNqgpWkwHIbgbCDBffP4qJE0l9luWMJUOLg7JdoLFDJNcYPPSAaEt7YS
 2VG+lLFr/L61g==
Date: Sun, 13 Feb 2022 16:25:16 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgmFTLBiMD+cEjvX@ubuntu-x1>
References: <ae43589a-6ca4-4856-8f7f-b631ce44993b@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae43589a-6ca4-4856-8f7f-b631ce44993b@www.fastmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
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

On Sat, Feb 12, 2022 at 04:29:50PM +0000, Jiaxun Yang wrote:
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
> ---
> v2: Reduce 3dBm for 5150-5350 MHz due to TPC restriction
> ---

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
