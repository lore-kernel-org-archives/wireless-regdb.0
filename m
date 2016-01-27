Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOMrm-0004EA-PF
 for wireless-regdb@lists.infradead.org; Wed, 27 Jan 2016 09:58:23 +0000
Received: by mail-wm0-x233.google.com with SMTP id n5so17906462wmn.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 27 Jan 2016 01:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=subject:to:references:cc:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding;
 bh=JDCoLRGYpCVl6wMcjkSGl8pk4K3PG+35hJrSg4dy8l0=;
 b=yc4yPjoeBylNoMNUdJrwJ+ca5plI5YlAYHk8GmQGblOGGRrtCnPkWM7l/bWMzEjR0t
 JglSTM91VQstFsgTePglEP+ZtCcH398W+GsmX+5H17eie9Srd6hFNBli/GzLWy3P93sh
 wHsc26v7k3TfofjCLaNrJ6RAEqdqn3Ehs77iBL2t0VWhxLXmmrTSy5qS3JzXHOIMw7El
 DArKSaeoEORil5ZKdDCg9/La9dX3usPJxVgXlwp+Wq5q6F1ugfYHl0zeCH/DOIhTDDEN
 Xzzz/rgp8QZJB6TFFMWPcfQHoTesvwJokhQTunw8mMp3+StSZ12BjW+6LnFmn3cL92Lq 1mXg==
References: <1439299795-17359-1-git-send-email-xose.vazquez@gmail.com>
 <20150813143154.GA121347@ubuntu-hedt> <55EEE9CA.5010309@gmail.com>
 <20150908142208.GB26645@ubuntu-hedt>
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Message-ID: <56A894A5.4040306@gmail.com>
Date: Wed, 27 Jan 2016 10:57:57 +0100
MIME-Version: 1.0
In-Reply-To: <20150908142208.GB26645@ubuntu-hedt>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add 2.4GHz regulatory
	rules for Cuba (CU)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 09/08/2015 04:22 PM, Seth Forshee wrote:
> On Tue, Sep 08, 2015 at 03:59:38PM +0200, Xose Vazquez Perez wrote:
>> On 08/13/2015 04:31 PM, Seth Forshee wrote:
>>
>>> On Tue, Aug 11, 2015 at 03:29:55PM +0200, Xose Vazquez Perez wrote:
>>>> Resolución 127, 2011 - Reglamento Banda 2,4 GHz.:
>>>> http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
>>>>
>>>> Cc: Seth Forshee <seth.forshee@canonical.com>
>>>> Cc: linux-wireless@vger.kernel.org
>>>> Cc: wireless-regdb@lists.infradead.org
>>>> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
>>>> ---
>>>>  db.txt | 7 +++++++
>>>>  1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/db.txt b/db.txt
>>>> index 982db34..2edbf90 100644
>>>> --- a/db.txt
>>>> +++ b/db.txt
>>>> @@ -275,6 +275,13 @@ country CR: DFS-FCC
>>>>  	(5490 - 5730 @ 20), (24), DFS
>>>>  	(5735 - 5835 @ 20), (30)
>>>>  
>>>> +# http://www.mincom.gob.cu/?q=marcoregulatorio
>>>> +# - Redes Informáticas
>>>> +# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
>>>> +country CU: DFS-FCC
>>>> +	(2400 - 2456 @ 40), (200 mW)
>>>> +	(2456 - 2483.5 @ 40), (200 mW)
>>>> +
>>>
>>> Based on the Google translation of the document you linked to, I don't
>>> see anything which would prevent merging these rules into one rule. Am I
>>> missing something?
>>
>> from http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
>> page 7:
>>
>> Artículo 4: Disposiciones de carácter técnico
>> [..]
>> 4.3.- No obstante lo anterior, los equipos que operen en las frecuencias entre 2456 y
>> 2483,5 MHz pueden emplear valores de p.i.r.e superiores, cuando ello se justifique en
>> beneficio de objetivos de interés nacional [...]
>> 4.4.- Para estos casos es necesario obtener una autorización expresa de la Agencia
>> [...]
>>
>> If you grant an authorization, for 2456-2483.5 pire can be increased.
> 
> Okay, but for the purposes of this database that provision isn't going
> to apply, and it seems you agree since you've listed both as having the
> exact same power limit. So I'd still prefer that we make it a single
> rule.

OK. Done in v2.

-thanks-

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
