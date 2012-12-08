Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mms1.broadcom.com ([216.31.210.17])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ThH8W-0007Fo-AS
 for wireless-regdb@lists.infradead.org; Sat, 08 Dec 2012 09:55:57 +0000
Message-ID: <50C30EA0.9080103@broadcom.com>
Date: Sat, 8 Dec 2012 10:55:44 +0100
From: "Arend van Spriel" <arend@broadcom.com>
MIME-Version: 1.0
References: <CAHc5FiWpUBUDh=8tDaaLRh9fHXT-k3EBj+KdoOGoR=BhYhzrVQ@mail.gmail.com>
 <20121206090443.GD2502@redhat.com>
In-Reply-To: <20121206090443.GD2502@redhat.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulations
	for Ukraine
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
To: Stanislaw Gruszka <sgruszka@redhat.com>
Cc: wireless-regdb@lists.infradead.org, Mykyta Iziumtsev <mykyta.iziumtsev@gmail.com>, linux-wireless@vger.kernel.org, "Luis R.
 Rodriguez" <rodrigue@qca.qualcomm.com>, Andrew Bordunov <andrew.bordunov@gmail.com>, Pavel Chernyshev <pchernyshev@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 12/06/2012 10:04 AM, Stanislaw Gruszka wrote:
> On Tue, Dec 04, 2012 at 11:27:55PM +0100, Mykyta Iziumtsev wrote:
>> Add 5GHz band and mark 2.4GHz and 5GHz as NO-OUTDOOR according to
>> "Рішення про затвердження Переліку радіоелектронних засобів
>> та випромінювальних пристроїв, для експлуатації яких не потрібні
>> дозволи на експлуатацію" from 27 May 2010.
>>
>> Ref:
>> * #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
>> * #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
>> (appendix 8)
> 
> Since regulatory maintainer does not understand Ukrainian,
> there is little chance to get this patch applied.
> 
> IMHO this can be solved by:
> 
> * having official English translation of those document on gov.ua site

This is always a problem and unlikely to be solved.

> * provide patch by wlan chip vendor, confirmed by legal deparament of
>   the vendor

Legal department is not typically (directly) involved in this, but we
(Broadcom) have a regulatory department. However, there are OEMs
involved as well and some do their own FCC/regulatory certification. The
reason why I suggested adding references in the database is that I
wanted to get our regulatory department involved to validate at least
the correctness of the reference itself. Ideally, I would want them to
look at the rules itself.

> * provide patch by some known Ukrainian kernel developer, someone
>   who is know by regulatory maintainer and can be trust

I think John relies on community members watching the mailing list that
are affiliated with the chip vendors. Especially, when the url takes him
to some ukranian document :-)

> Stanislaw
> 

Gr. AvS


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
