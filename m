Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PKcC9-0006cS-72
	for wireless-regdb@lists.infradead.org; Mon, 22 Nov 2010 19:36:57 +0000
Received: by pxi7 with SMTP id 7so1857304pxi.36
	for <wireless-regdb@lists.infradead.org>;
	Mon, 22 Nov 2010 11:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=D7KvKesotBBvAz56/RB8ecmOiDAB6yYph1EN3EHxmHI=;
	b=CUthJ8g3dq6/G3YFwXRsdOtRG3VPuGNbsmPx7Eeg0PDJsI4/Sy7rYhH+/f31vUxPAm
	soVkHuZfS3bEHJ4ZC7FIxCSLdB4W1dEjwLM2XIaQbE2Rn+N+pFh5er6knKDtoCbDwxoS
	1Wy6odqyFb1Ms2qEU0BkA7sSR/7U+JCDqBZu0=
MIME-Version: 1.0
In-Reply-To: <AANLkTimbCzK6RPCnc0T117D0X+Yvi8S3j3L9aG74L=Jg@mail.gmail.com>
References: <20100525151429.GC6342@tpkurt2.garloff.de>
	<1290029817-711-1-git-send-email-linville@tuxdriver.com>
	<AANLkTimDkoqNbkFWDsU2HgFK3926gRpcBbokX_GL5sSc@mail.gmail.com>
	<93781E992CBA7843962D8B0E7D683F3C163340D5AE@SC1EXMB-MBCL.global.atheros.com>
	<20101119020414.GB2512@tuxdriver.com>
	<20101119091450.GD12228@tpkurt2.nue.garloff.de>
	<93781E992CBA7843962D8B0E7D683F3C16334843DD@SC1EXMB-MBCL.global.atheros.com>
	<AANLkTi=ySDQtw+M6ATV47HszkJN7vfR7q+FOC6-OBqjk@mail.gmail.com>
	<93781E992CBA7843962D8B0E7D683F3C1633484F57@SC1EXMB-MBCL.global.atheros.com>
	<AANLkTimbCzK6RPCnc0T117D0X+Yvi8S3j3L9aG74L=Jg@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Mon, 22 Nov 2010 11:36:33 -0800
Message-ID: <AANLkTi=hgXNGDqquzhRsWfPQ9Wtr2qtvSJSZAqc3P2R8@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update rules for DE
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Michael Green <Michael.Green@atheros.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Nov 22, 2010 at 11:35 AM, Luis R. Rodriguez <mcgrof@gmail.com> wrote:
> On Mon, Nov 22, 2010 at 11:00 AM, Michael Green
> <Michael.Green@atheros.com> wrote:
>> Thanks.  I understand/agree with that. But a dumb question...are all other EU countries set the same way now?
>
> Hey Michael, no they are not, each patch addresses just one country at a time

Oops, forgot to include wireless-regdb.

John, feel free to add then:

Acked-by: Michael Green <Michael.Green@atheros.com>

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
