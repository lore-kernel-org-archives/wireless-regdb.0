Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-x22d.google.com ([2607:f8b0:4003:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ajS9r-0000iI-E5
 for wireless-regdb@lists.infradead.org; Fri, 25 Mar 2016 13:52:12 +0000
Received: by mail-ob0-x22d.google.com with SMTP id kf9so53372680obc.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 Mar 2016 06:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=96+qHvaDE510llfWg87ZP68ZW7rthml3YyIXSqXbyfQ=;
 b=NARjZRhnT140GPnGD+HM6+VLE6cMZsJzpxuuk0VCis++tjh6WjtUa2yutGMT92ICEt
 Z5SKNsf+BCuadAr2cit+z1tQ243XzTOzDdG4ZD2fYVcuiQIpAf4xP+nIsNrhYabHSk6k
 wbRCuFfMv73d4fhjp5cgA6HwGPhdDx7NheoQidlNPFD0fOIsK3gsWU3d6p7FyaWfSSrH
 HDGbsPcU/ZKZHyhz9aO4kvL1cjGIYsUEIVqe/7iX+2czBgDoYARvaCPCKGUHE2tLo9LD
 zBVV3e34xtght6aSQdfrvUIZmLKyMcT1dRNbcY2bozOCZxqc38cyQ94cPdqYEtdpUdLA
 c5SA==
Date: Fri, 25 Mar 2016 08:51:47 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160325135147.GA27324@ubuntu-xps13>
References: <b7a3a22077814e7da4e94a61e59c585d@ausx13mpc122.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7a3a22077814e7da4e94a61e59c585d@ausx13mpc122.AMER.DELL.COM>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Russia (RU) on 5735-5835 MHz band
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
To: Thanh_Nguyen@Dell.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 24, 2016 at 09:19:46PM +0000, Thanh_Nguyen@Dell.com wrote:
> Dear Seth,
> Currently the db.txt has following setting for Russia:
> 
> country RU: DFS-ETSI
>                 (2402 - 2482 @ 40), (20)
>                 (5170 - 5250 @ 80), (20), AUTO-BW
>                 (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>                 (5650 - 5730 @ 80), (30), DFS
>                 (5735 - 5835 @ 80), (30)
>                 # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
>                 (57000 - 66000 @ 2160), (40)
> 
> Dell’s understanding is 5735-5835 MHz band is still not allowed in Russia. Dell would like to submit a request for the wireless-regdb to investigate and update the setting for Russia RU in the db.txt file.

I wasn't able to track down any official documentation of Russia's
regulations, but a few unofficial sources showed that range as being
allowed. What source(s) are you using to determine that it is not?

Feel free to send a patch if you think this should be changed, or I can
make one if you're not comfortable doing so. It would be helpful to have
a link to support the change though.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
