Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=XBE13n0Ty5an09Rf201BLdi++p4E2tnZEifGvQ9P/zw=;
 b=guHHZaMzDUwAk+
 dOfnhJ8SzriFi2LfWht01QQV4DbI30McnHiZgejzlnOidCgMNAwyj2b0/Cs82f1HA7C8WphmEwKLo
 eJ3+X3bMb1FtwWYbzgP9b2FkIoBZkNt8djKxMz7n2d5y6ogkHEwvJZs4mJICgnyYa3dNfLm9jNXZb
 GoS9lrtDP3z3aiN8VPCh7OpeAJLIUfa9oiRFOObxiMuoBH+v1J7WFTXUfa5rH1TmUX6S4dqOTYGlZ
 LP02dODV1VGF+tKvhdYzt4O6bYgaW6JaYaaFiVnz+dx6HVtAIadZkZeKDyZC8kn2xEfnWM7+q9VOD
 aXBBBKVaCrHGqCb+dZ5Q==;
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6EWc-006fI7-Ae
 for wireless-regdb@lists.infradead.org; Sat, 08 Jan 2022 16:25:03 +0000
Received: by mail-oo1-xc33.google.com with SMTP id
 t13-20020a4a760d000000b002dab4d502dfso2385408ooc.6 for
 <wireless-regdb@lists.infradead.org>; Sat, 08 Jan 2022 08:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qcePZHUndCvsbe9CeFTuGpA7iZzJuVvWnTZiN97UlDw=;
 b=Exr3AjWPsGhxSuaUx0wXOT3UQd9mQvbRf+CIrQpH+/dDar4pPO137h4HEOSb1xf7rt
 rTBeTABh12IpLZEMTzquaqbaD5GPnLT9nsb/XR9BsDltJqn78Wlk3GeNXDFt1/Cr55QZ
 Am9Z3PBWEU9go/1H9/6ruiuORkltG5IMYyZOM9iuYL4rUzzoYVFyHGOjagol2qpAJatR
 idsSvBB/BVghxB3REz1hKIn2ndVzUG6ToreztD69RLMG0sb/aH9JhzEPScBH7BNigxpO
 5q3+2VPw0iNDATscOa9c750YQR4vLYY43Bah/UwIqW6rmJuLA5rZhCpuWUKwy/ka8UQg eW9g==
Date: Sat, 8 Jan 2022 10:24:56 -0600
From: Seth Forshee <seth@forshee.me>
Message-ID: <Ydm62ODTB4GciBOS@ubuntu-x1>
References: <20211228105605.32141-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211228105605.32141-1-robert.marko@sartura.hr>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Croatia (HR) on 6GHz
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
To: Robert Marko <robert.marko@sartura.hr>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 28, 2021 at 11:56:05AM +0100, Robert Marko wrote:
> In accordance with the EU Commision decision 2021/1067/EU the
> Croatian Regulatory Authority for Network Industries (HAKOM)
> has issued the general license for usage of the 5945-6425 MHz
> spectrum for 6GHz VLPI and LPI devices in OD-236 and OD-237.
> 
> They have the same restrictions as in EU countries which already
> implemented the decision earlier.
> 
> OD-236: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_236.pdf
> OD-237: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_237.pdf
> 
> Unfortunatelly, both licenses are available only in Croatian.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

