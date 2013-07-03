Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuTVp-0007eK-Cs
 for wireless-regdb@lists.infradead.org; Wed, 03 Jul 2013 20:18:50 +0000
Received: by mail-la0-f42.google.com with SMTP id eb20so549366lab.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type
 :content-transfer-encoding;
 bh=n0u/YmnnuBUz8rxif1prDWN9dG3LpWbBSdtgqMq0dkk=;
 b=bK3afP0khoaoifejd4Rj68g7aeFXTg7+uNvvsNPk3hUaEgzC66diGpnIilR+hP3IJO
 tu8wFKyUfcix0O0qXOUK35nZhWWZf7cgn0soABwn2UECYz8BQe2k0fBeFNOqSMYy0MT5
 Pu84S3x1x/1GpcWJ8pzr/j2B8M+H8JhBvgiKNeS0XByzyXv/ITBFEr4JCePSiSHM1RX4
 0R9/+ZVA9GR5+t6eaceSBzO1zz/m10Ub/TPLz04qMOGnnt9rktRqHYIVJnnAgapFsh2e
 zSY+oll8F11lUidsQqsLVExzAAlANJfde5l+bzTd09/BLY7cdJV5ojqzRhnojt/uq2JA 4cGw==
MIME-Version: 1.0
In-Reply-To: <87wqp8uijf.fsf@nemi.mork.no>
References: <CAB=NE6V_PKG2UBSLPRhziUDcFzFi8uOJNiNzoPNaK0oU7rmZuQ@mail.gmail.com>
 <87wqp8uijf.fsf@nemi.mork.no>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 3 Jul 2013 13:18:05 -0700
Message-ID: <CAB=NE6VLuMEZLhUFep3GxvSyZpaebBNBdEOFBphhAF2tm_E2SA@mail.gmail.com>
Subject: Re: [wireless-regdb] Updates to wireless-regdb review - vendor
 namespaces and VHT80
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
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 3, 2013 at 1:58 AM, Bjørn Mork <bjorn@mork.no> wrote:
> "Luis R. Rodriguez" <mcgrof@do-not-panic.com> writes:
>
>> In the meantime, while that gets developed, I'd still like to supply
>> patches to enable VHT80 for a few countries without hopefully such
>> high bar for documentation as I cannot get this information.
>
> I believe VHT80 (and VHT160) is allowed by current regulations in a
> large number of countries, and that the current db entries are in fact
> wrong by stating any upper channel width limits at all in the 5 GHz
> bands.
>
> For example, regulations in most CEPT countries are likely based on
>
>  "ECC/DEC/(04)08 on the harmonised use of the 5 GHz frequency bands for
>   the implementation of Wireless Access Systems including Radio Local
>   Area Networks (WAS/RLANs)"
>
> or a previous version of that decision.  Which is available here:
> http://www.erodocdb.dk/Docs/doc98/official/pdf/ECCDEC0408.PDF
>
> Quoting:
>
>  "considering
>   ..
>
>   e. that the systems covered by this ECC Decision operate typically in a 20 MHz channel bandwidth, other
>     values for the channel bandwidth are also feasible provided they comply with the relevant maximum mean
>     e.i.r.p. and the corresponding maximum mean e.i.r.p. density limits;
>  "
>
> and the continues deciding the mentioned power and power density limits
> only, without any specific channelization.  This document clearly allows
> and anticipates both wider and narrower channels, and so does most
> likely the national regualations implementing the decision.
>
> The list of CEPT countries implementating this decision is here:
> http://www.erodocdb.dk/doks/implement_doc_adm.aspx?docid=2033

Thanks, this seems to be in agreement with the countries I was
considering update that fall under that group that I had updates for
except for one country alone: Russia.

I'll use the information you provided to update the CEPT ones though.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
