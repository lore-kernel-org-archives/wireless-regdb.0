Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mx1.redhat.com ([209.132.183.28])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TgXO0-0001B8-38
 for wireless-regdb@lists.infradead.org; Thu, 06 Dec 2012 09:04:53 +0000
Date: Thu, 6 Dec 2012 10:04:44 +0100
From: Stanislaw Gruszka <sgruszka@redhat.com>
Message-ID: <20121206090443.GD2502@redhat.com>
References: 
	 <CAHc5FiWpUBUDh=8tDaaLRh9fHXT-k3EBj+KdoOGoR=BhYhzrVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHc5FiWpUBUDh=8tDaaLRh9fHXT-k3EBj+KdoOGoR=BhYhzrVQ@mail.gmail.com>
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
To: Mykyta Iziumtsev <mykyta.iziumtsev@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <rodrigue@qca.qualcomm.com>, Andrew Bordunov <andrew.bordunov@gmail.com>, Arend van Spriel <arend@broadcom.com>, Pavel Chernyshev <pchernyshev@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 04, 2012 at 11:27:55PM +0100, Mykyta Iziumtsev wrote:
> Add 5GHz band and mark 2.4GHz and 5GHz as NO-OUTDOOR according to
> "Рішення про затвердження Переліку радіоелектронних засобів
> та випромінювальних пристроїв, для експлуатації яких не потрібні
> дозволи на експлуатацію" from 27 May 2010.
> 
> Ref:
> * #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
> * #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
> (appendix 8)

Since regulatory maintainer does not understand Ukrainian,
there is little chance to get this patch applied.

IMHO this can be solved by:

* having official English translation of those document on gov.ua site
* provide patch by wlan chip vendor, confirmed by legal deparament of
  the vendor
* provide patch by some known Ukrainian kernel developer, someone
  who is know by regulatory maintainer and can be trust

Stanislaw

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
