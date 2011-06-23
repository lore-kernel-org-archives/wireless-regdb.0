Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZaS5-00082q-Vm
	for wireless-regdb@lists.infradead.org; Thu, 23 Jun 2011 03:19:35 +0000
Received: by iyn15 with SMTP id 15so1489806iyn.36
	for <wireless-regdb@lists.infradead.org>;
	Wed, 22 Jun 2011 20:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/fIrxyLTz9+CNAM7jsIWEiFmoVmV+Q6+1GlhhleLdt4=;
	b=Q1haKUaIQWgMYwuPmyT7fRDZX+fWRhSXQJQxBXYiRCffjfuW78CQ6IbZs4DI8IAYrQ
	OtHTMD9vuDxrwW77SAOneX7b/BlnjkI8/+qkXbK9X+flZC8bA0tP6sZbGAucLrKt/xov
	pgLzW+GkXI6EWafv8EpWrYVTzFsTJxQ/MrxF0=
MIME-Version: 1.0
In-Reply-To: <237CF5B631AA3446BAC55A2F73815CEB01185DC6@nasanexd02b.na.qualcomm.com>
References: <1304594478.3749.61.camel@wimaxnb>
	<BANLkTimGs+hAX=5wE7PiTuVzD=4iLShBHQ@mail.gmail.com>
	<237CF5B631AA3446BAC55A2F73815CEB01185DC6@nasanexd02b.na.qualcomm.com>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Wed, 22 Jun 2011 20:18:22 -0700
Message-ID: <BANLkTi=HVXDW_6GC5e03H7=OrbR2Hzf4uA@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb US and CA settings incorrect?
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Green, Michael" <green@qca.qualcomm.com>
Cc: Juuso Oikarinen <juuso.oikarinen@nokia.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "ext John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 22, 2011 at 5:18 PM, Green, Michael <green@qca.qualcomm.com> wrote:
> Well, the FCC & Canada regdomains should disable those TDWR channels for an AP.
> But regdomains for client devices should not disable those channels.
>
> In our licensed sw, we use different regdomains for AP vs. STA to accomplish this. Not sure how linux handles this.

In Linux, the DFS flag will prohibit initiating communication for AP,
IBSS, Mesh, or P2P in those frequency ranges as well.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

