Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x233.google.com ([2607:f8b0:4003:c06::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atJja-00013r-NH
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 18:53:51 +0000
Received: by mail-oi0-x233.google.com with SMTP id x201so96319635oif.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 11:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qJxrqTebhvt3NfB55kpaRbTxP4I2Z1E9mZ8gmnK3G/U=;
 b=YX4M6eITPhZcFqR2fNqI/yJ0pGUBch647/MbQTT02AZw0i6pOsI0AKesY6RUnBBAWm
 eFnGQeZxg3uCckcQA5wvSLB94YNhlL72MNE4EA1Z1MR8zkKIsWEa/GQeGiaUgv2OFA5v
 QGFTxIGDg1eR1aj1Zcza8gKSAkhknKnqtRwBrFl3zVXsX7qw8R7B32kdfbjet9Lto+jb
 W1HXjDuMNjsEQROsUQEEf0xO208x+ItsnmiAAGjDVu6BH3GwEQ4A61oZCNLTjIJOoZf6
 vA+IXe2dTh9nAFjpB8aAc5y3480qdyllGiEfKk3epnzjXt0ho0+0/ODfJsgghwltHAg/
 VAeA==
Date: Thu, 21 Apr 2016 13:53:22 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421185322.GE95003@ubuntu-hedt>
References: <1461113043-30102-2-git-send-email-bordjukov@gmail.com>
 <1461258158-16699-1-git-send-email-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461258158-16699-1-git-send-email-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] Update the regulatory rules for
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

On Thu, Apr 21, 2016 at 08:02:38PM +0300, Petko Bordjukov wrote:
> Make sure the rules reflect exatly the contents of the List of Radio
> Equipment That Uses Harmonized Within the European Union Bands and
> Electronic Communications Terminal Equipment[1] and add proper
> references.
> 
> [1] http://www.crc.bg/files/_bg/Spisak_2015.pdf
> 
> Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>

That looks good to me. I'll leave it for a few more days then apply it
if no one raises any objections.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

