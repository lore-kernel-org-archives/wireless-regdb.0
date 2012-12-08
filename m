Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThGTj-0006cL-IM
 for wireless-regdb@lists.infradead.org; Sat, 08 Dec 2012 09:13:48 +0000
Received: by mail-ie0-f177.google.com with SMTP id k13so3779421iea.36 for
 <wireless-regdb@lists.infradead.org>; Sat, 08 Dec 2012 01:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type:content-transfer-encoding;
 bh=sFnfAwNqja+7FAS1tl8G6YbMfCriKznjKw1TxqQIacU=;
 b=D0NbO+eI9O8neLVCgrIo6wcitP1/BrudFXzIvdziOW6YnQVpToUTYgDl4Lfam6Kpq6
 WoS9Pj5E+pPuOSJbX/nIDOELeAoaWeHK0Qw3JBtN2PUAEIoubceiA+fOmJJNaCYenNSZ
 4nZl1l19u3sA5MsVqkz+vv3zntC17VXih4esKTPA11Sm19lzssXHVJOFV69iMj10zVuR
 Lj1MmduEqwPW8DO7cMt9TVEGdZY7RHw0rcl+Ng9lsPB64P/a1ReV+HRGVu38rC5Ygs9o
 je18/0IZovnerir+92QjSYnPweY9ITF/0GHjGfjMYlqmMsw+MqgwWycS0WqxPNAzVeaA E18A==
MIME-Version: 1.0
In-Reply-To: <20121206090443.GD2502@redhat.com>
References: <CAHc5FiWpUBUDh=8tDaaLRh9fHXT-k3EBj+KdoOGoR=BhYhzrVQ@mail.gmail.com>
 <20121206090443.GD2502@redhat.com>
From: Andrii Bordunov <andrew.bordunov@gmail.com>
Date: Sat, 8 Dec 2012 11:13:25 +0200
Message-ID: <CAHgdZf+TYEZkLG13sWkYPCz2Qah+HBokFwyz9WiuegGd6WUBHQ@mail.gmail.com>
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
 Rodriguez" <rodrigue@qca.qualcomm.com>, Arend van Spriel <arend@broadcom.com>, Pavel Chernyshev <pchernyshev@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

There is really a little chance in this case. English translation is
absent for the referenced docs and I emailed UCRF several months ago
regarding terminology clarifications but got no response. Maybe there
are more chances with traditional mail or personal visit but I'd not
put a lot on that.

Regarding 2nd and 3rd cases I have no real assumptions at all. Anyway,
it would be better to know John's opinion by himself here.



2012/12/6 Stanislaw Gruszka <sgruszka@redhat.com>:
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
> * provide patch by wlan chip vendor, confirmed by legal deparament of
>   the vendor
> * provide patch by some known Ukrainian kernel developer, someone
>   who is know by regulatory maintainer and can be trust
>
> Stanislaw

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
