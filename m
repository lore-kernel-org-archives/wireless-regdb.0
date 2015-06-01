Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f48.google.com ([209.85.218.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzRGe-0007nm-5b
 for wireless-regdb@lists.infradead.org; Mon, 01 Jun 2015 15:04:45 +0000
Received: by oiww2 with SMTP id w2so103518872oiw.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 01 Jun 2015 08:04:22 -0700 (PDT)
Date: Mon, 1 Jun 2015 10:04:20 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150601150420.GB4072@ubuntu-hedt>
References: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update BG rules for
 5725 - 5875 mHz
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

On Fri, May 08, 2015 at 02:36:05AM +0300, Petko Bordjukov wrote:
> The ETSI EN 300 440-1 and EN 300 440-2 standards mandate the use of the
> 5725mHz - 5875mHz band as follows:
> 
> Application - Generic use
> Maximum Radiated Power - 25mW
> 
> The Bulgarian Communications Regulations Commission has made the
> decision to harmonise its regulations for this band with the EU
> regulations [1], [2].
> 
> Based on this data, introduce the 5725mHz - 5875mHz band for the BG
> regulatory domain.
> 
> [1] http://crc.bg/files/_bg/Spisak_2015.pdf
> [2] http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
> 
> Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>

Applied, with changes to indent using tabs rather than spaces. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

