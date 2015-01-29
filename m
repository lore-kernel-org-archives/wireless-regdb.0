Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f45.google.com ([209.85.218.45])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGqF4-0008Qj-6X
 for wireless-regdb@lists.infradead.org; Thu, 29 Jan 2015 14:38:46 +0000
Received: by mail-oi0-f45.google.com with SMTP id g201so27170638oib.4 for
 <wireless-regdb@lists.infradead.org>; Thu, 29 Jan 2015 06:38:24 -0800 (PST)
Date: Thu, 29 Jan 2015 08:38:11 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150129143811.GA102184@ubuntu-hedt>
References: <54C9FDB9.4050405@bluetown.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54C9FDB9.4050405@bluetown.com>
Subject: Re: [wireless-regdb] Regdb Questions
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
To: Quinn Plattel <q@bluetown.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jan 29, 2015 at 10:30:33AM +0100, Quinn Plattel wrote:
> Hi,
> 
> Some questions about the information in the regdb database:
> 1: Do the frequency values refer to licensed or unlicensed bands?

Unlicensed.

> 2: Regarding the dB values, are they EIRP values, meaning dBm or dBi
> or combined?

They are EIRP, dBm.

> 3: Do we have any reliable sources of information regarding the
> frequencies for Tanzania and the surrounding countries?

We have a pending patch from QCA for Tanzania, and I consider them to be
a reliable source.

http://lists.infradead.org/pipermail/wireless-regdb/2015-January/000724.html

We have rules for some surrounding countries already, though I haven't
looked to see who supplied them. For any other countries not already in
the database we don't currently have any source of spectrum rules.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

