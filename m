Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x232.google.com ([2607:f8b0:4003:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8DI3-0000iT-1b
 for wireless-regdb@lists.infradead.org; Wed, 01 Jun 2016 21:03:00 +0000
Received: by mail-oi0-x232.google.com with SMTP id w184so47549924oiw.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 01 Jun 2016 14:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0pIyOaRg4Qx5RASoREHuqEVyi61U8zJqxq7z10IbkmY=;
 b=KYemy1K+3/SOJKoIj/aYkY4x043OSdi3K3iivSxw4RK9NpTXX/Fr4YBGZOJJEmgPs3
 Q7c/P44pUoB44asTRtO8MMstHcaDp+iHSO6bWJ3L+FdmG7m9edMYJACk/zq+lxeajiq5
 5e9TwcyzHKPv7TUbRn7N3Uvn3Ua6DJ0uJxBHS5t6EVQ5+z2irRfxke7c2ZJyVkzY9/g9
 ysr9KQFTFhmRWpgT+wX0ShbMDaLaJiLkNMA25/bWkz2NFVEZfNwmP/ELJfr58/LDfU2g
 4ALUluWE75Cs+UJIch3I0o75/RCmJ0AGECjqYAbVJDQKWosuA4qCr+GOa8aVTQV8Bdbf
 RdcA==
Date: Wed, 1 Jun 2016 16:02:35 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160601210235.GF93568@ubuntu-hedt>
References: <1463822708-20053-1-git-send-email-qca_merez@qca.qualcomm.com>
 <20160531123550.GA93568@ubuntu-hedt>
 <e2e7d60b6e5b597e1de15605ee19b082@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2e7d60b6e5b597e1de15605ee19b082@codeaurora.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Republic of Korea:
 Add 60GHz regulatory rules
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
To: merez@codeaurora.org
Cc: Maya Erez <qca_merez@qca.qualcomm.com>, wireless-regdb@lists.infradead.org, linux-wireless-owner@vger.kernel.org, wil6210@qca.qualcomm.com, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 01, 2016 at 10:32:14PM +0300, merez@codeaurora.org wrote:
> On 2016-05-31 15:35, Seth Forshee wrote:
> >On Sat, May 21, 2016 at 12:25:08PM +0300, Maya Erez wrote:
> >>Add 60GHz regulatory rules for Korea (KR).
> >>Source is
> >>
> >http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%
> >A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> >>
> >>Signed-off-by: Maya Erez <qca_merez@qca.qualcomm.com>
> >>---
> >> db.txt | 4 ++++
> >> 1 file changed, 4 insertions(+)
> >>
> >>diff --git a/db.txt b/db.txt
> >>index da16f7c..143f915 100644
> >>--- a/db.txt
> >>+++ b/db.txt
> >>@@ -664,6 +664,10 @@ country KR: DFS-JP
> >> 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >> 	(5490 - 5710 @ 160), (30), DFS
> >> 	(5735 - 5835 @ 80), (30)
> >>+	# 60 GHz band channels 1-4,
> >>+	# ref:
> >http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%
> >A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> >>+	(57000 - 66000 @ 2160), (57)
> >>+
> >
> >Thanks for the patch. I wanted to double check with you that the power
> >limit is correct though, since it seems extremely high (an order of
> >magnitude higher than what we have for any other country in fact). I
> >can't make out much of anything from the link, and I can't even run it
> >through google translate since it's composed of images rather than text.
> >
> >Thanks,
> >Seth
> >
> >--
> >To unsubscribe from this list: send the line "unsubscribe linux-wireless"
> >in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Thanks for your comment. I double checked it and the power limit should be
> 43dBm. I'll send an updated patch.
> This value is determined due to the following statement:
> "The antenna power is 500 mW or less, if you are using a non-directional
> antenna 100 mW or less, power density should be 13 dBm / MHz or less, the
> equivalent isotropic radiated power is less than 43 dBm."
> We fit the 500mW or less power, hence the EIRP is 43 dBm.

Great, thanks for double checking.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

