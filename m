Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22d.google.com ([2607:f8b0:4003:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axE8z-0006Yb-2f
 for wireless-regdb@lists.infradead.org; Mon, 02 May 2016 13:44:13 +0000
Received: by mail-oi0-x22d.google.com with SMTP id k142so189667690oib.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 May 2016 06:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rMLnuEiUzbyOLq2Iwv+9lg0n19dN3ZJCTRWFh4Gy8tQ=;
 b=oZ9+l+Lhr4Bm4/CCBrvZjwtisKWaylP1Xfv8X4n4SS6NXaFjufLOvpmSMTbNeFp+bm
 sqFhCerSiTv/3rlE//AuQNixdlWXL1Mcw/4eFVrwAKqwrfJZZMgyaPwSVFD5LC/BbgNs
 MmZazDaGUWb3r+tlqbN4Xm6GGScQ+NzKNO2yHpbg3DWvwE7EEy254tFjxKUcjVkT2oNE
 eml4rHFCA8NYDSHT+PKoOankJuGNNobh6TSyeMlSXrIxDKbrsIayddSkoQfhj7dlty5q
 ZciUtSHqv85pPyX0Qu7NnzH4AJCPlXp13GnQvIHvQdv2qsLDUdVesd1jxmtdRcNFpI10
 tLSQ==
Date: Mon, 2 May 2016 08:43:50 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160502134350.GD2714@ubuntu-hedt>
References: <1627007.Hvd6lR1COR@perisens15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1627007.Hvd6lR1COR@perisens15>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory references
	for Germany (DE)
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
To: Maximilian Engelhardt <engelhardt@perisens.de>
Cc: linux-wireless@vger.kernel.org, maxi@daemonizer.de, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 25, 2016 at 03:09:48PM +0200, Maximilian Engelhardt wrote:
> Hi,
> 
> The "Frequenznutzungsplan" is not really a good reference as it's a list
> of all frequency allocations and does only list basic information about
> the allocation. This patch changes the comments to reference directly
> the corresponding documents which provide all information about the
> allocation.
> 
> This patch does only change comments, all entries have been left
> unchanged. However the entries have been verified to match the mentioned
> documents.
> 
> This patch is based on my last path that adds the short range devices band for 
> Germany.
> 
> Thanks,
> Maxi
> 
> 
> Signed-off-by: Maximilian Engelhardt <engelhardt@perisens.de>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

