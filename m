Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSQfy-0001re-R4
 for wireless-regdb@lists.infradead.org; Mon, 02 Mar 2015 13:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1425303987; x=1456839987;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nt9WVTIgY7MvVc6cxlkgEP6+ezsKtA0ID/IByPIURzk=;
 b=DF4Cm6nDAVEHeZFxxrayXdH0SJYbvxCGAVfA/AD6FZ4J0HEgx8YBThUa
 J7/IxpAWAtT4IuiTqqOVSqn8VcBHQwNcLA1BjjOeHcJ0UUi9kAF/ZWKCz
 jn7kDOu+ebnFEtZPCbkF8FT4ydBeDuaC8XYiKIZrggVehJ6lTIKAh4WFq o=;
Date: Mon, 2 Mar 2015 15:45:59 +0200
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20150302134559.GA801@jouni.qca.qualcomm.com>
References: <DUB408-EAS367CCE6240821ED3A644E56F0140@phx.gbl>
 <DUB408-EAS1652BC7618FD5CCB9A287D4F0140@phx.gbl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DUB408-EAS1652BC7618FD5CCB9A287D4F0140@phx.gbl>
Subject: Re: [wireless-regdb] WG: [PATCH] wireless-regdb: Update Austria
 (AT) regulatory rules
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
To: =?utf-8?Q?J=C3=BCrgen?= Vogl <juergen.vogl@outlook.at>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 26, 2015 at 06:37:18PM +0100, Jürgen Vogl wrote:
> just a little Update of the Austrian regulatory rules - because it looks
> like the current ones are incorrect.

Without commenting on the correctness of the interpretation of the
regulatory rules in any way, the proposed changes themselves cannot be
correct as far as the use of AUTO-BW is concerned. That flag would not
do anything in either of the two cases where it was used here and
removing the AUTO-BW flag from 5150-5250 would break use of 160 MHz
channels on the combined 5150-5350 area.

As far as the TPC requirement is concerned, I would like to keep in mind
that we drop the TX power limits by 3 dB on regions requiring TPC for a
good reason (not supporting TPC).

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
