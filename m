Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x233.google.com ([2607:f8b0:4003:c06::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axE8m-0006Nm-Ps
 for wireless-regdb@lists.infradead.org; Mon, 02 May 2016 13:44:01 +0000
Received: by mail-oi0-x233.google.com with SMTP id x19so189379976oix.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 May 2016 06:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E3eG556PLY6jHLnV+jo0uuFhpRtIRnoe6+ejbNDoaLY=;
 b=ITAPSs7TTIYpgdaOCPxikctZQOixzZqaqkHU88zCCN31Hb2LVYHgq2eyX9gjxnIeJL
 27mBmWgpzsvhSLvS0UjuWF0l7qNlSRNx+y9zFE4VeZLYc3q+YhrmVUOEVlwKjaRB2s+a
 beh0fWaPllYh1GYQrbxQXwGZqr4R8A4NXxGrbgeTuCbkh67D3Wi8KbtslH3EZgE+63xt
 23Sx43dCRw7s/fyXFMITgi62M4i1twL0wYwtLrxYhyoioV7w3lAvKzgdygcLfnDUjABy
 LN5Cs7B6DwLCUnTFcq3R65wG+AkOmJGFJuNcAso0xJw/zjr7IQ6G2ajj0sT1oASsmBeY
 hvyw==
Date: Mon, 2 May 2016 08:43:37 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160502134337.GC2714@ubuntu-hedt>
References: <1461316070-32666-1-git-send-email-bordjukov@gmail.com>
 <1461331867-29322-1-git-send-email-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461331867-29322-1-git-send-email-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v4] Update the regulatory rules for
 Bulgaria (BG)
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
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 22, 2016 at 04:31:07PM +0300, Petko Bordjukov wrote:
> Make sure the rules reflect exatly the contents of the List of Radio
> Equipment That Uses Harmonized Within the European Union Bands and
> Electronic Communications Terminal Equipment[1], add proper references
> and document the power reduction in the 5250-5350 MHz and 5470-5725 MHz
> bands with a note.
> 
> [1] http://www.crc.bg/files/_bg/Spisak_2015.pdf
> 
> Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

