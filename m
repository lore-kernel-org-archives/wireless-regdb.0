Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aPtk0-00045o-9R
 for wireless-regdb@lists.infradead.org; Sun, 31 Jan 2016 15:16:41 +0000
Received: by mail-wm0-x22a.google.com with SMTP id r129so38128385wmr.0 for
 <wireless-regdb@lists.infradead.org>; Sun, 31 Jan 2016 07:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jSEUlhHdHLfLxdY/kdKa4DrVmFxuyhwOPNZL8pwaxzY=;
 b=k+dK6WtvlyWxPZK73th5QRZuCJvYavCvxoIIPu6v0ftiul/eDhdY504o+2oAg5bCgs
 CIcA0MYWNIefKJWmM6KWaL4nNyp86azSyHu5bWcfqyvubTuv73fDjnaDzZnzijPcU6CJ
 VxK+naYLzpMv12pREYi9Vw5qZ7wGNFnVbxfh4/ffdADjJisRhZwClZjOyqTrcJ/9eBZR
 CtzPWOk7MdSgpvoTs2cT3xrSouTiRS2+lcNd61jDiWEAGces4WeGZrvsz4i1Vzw3U1hL
 1YGZEP+vPSaWts6cyZeRBhgnhaqaYEcuav+u8gcVNuOPvcKHU2TTjqUxyJrS61/wP52c
 17Zg==
Date: Sun, 31 Jan 2016 16:16:15 +0100
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160131151615.GC15850@ubuntu-xps13>
References: <1453888593-7705-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453888593-7705-1-git-send-email-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: add 2.4GHz
 regulatory rules for Cuba (CU)
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jan 27, 2016 at 10:56:33AM +0100, Xose Vazquez Perez wrote:
> Resolución 127, 2011 - Reglamento Banda 2,4 GHz.:
> http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
> 
> Cc: Seth Forshee <seth.forshee@canonical.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: wireless-regdb@lists.infradead.org
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
