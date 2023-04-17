Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=qTvyd+RSTziPC9qJIA/XDlrHBlpHLgJPOYNVPE67MQ0=;
 b=hIRtAFLVCXM/WH
 8+Kw3mqBwscYmBL+8CFGi+i8DqrpzBASsAjws/m4pXYPZ3ckCn0sR/FMOKTB7F1M6HHUt92JGfz1O
 Sn6xHeRfWHByj1WHKZ7PRulfrTwCpEALZ9rW8FspLF4coFyNtYz632K3DnXeXnTbEQTzDmFDwgYjC
 ZWRF+uMW6xMEwW+LLjZfF+BQF+ZiaH7dIfBnLLtDFPaucqc5JEyEs3PczyjZM/rvhtIsVxyrxW9xw
 tVpi2oKdCwoHZlwm6n9FGfUf+pnC0660BkD1u5LYErsAGDEZr23GqvZZo0cpMfzS5anu2qClGxIcr
 wXx40Qis04X+mrGv27Xg==;
Received: from forward501c.mail.yandex.net
 ([2a02:6b8:c03:500:1:45:d181:d501]) by bombadil.infradead.org with esmtps
 (Exim 4.96 #2 (Red Hat Linux)) id 1poO8K-00GAIT-1y for
 wireless-regdb@lists.infradead.org; Mon, 17 Apr 2023 12:39:02 +0000
Message-ID: <59bfee53-12c7-cde4-e9c8-1adcefff459f@16depo.xyz>
Date: Mon, 17 Apr 2023 15:38:50 +0300
MIME-Version: 1.0
Content-Language: en-US
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
 <ZDtXkCWhUQnYlNMm@ubuntu-x1>
From: Kirill <me@16depo.xyz>
In-Reply-To: <ZDtXkCWhUQnYlNMm@ubuntu-x1>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Russia
 (RU) on 6GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

You're right.

The main document that describe current regulatory rules is 
https://docs.cntd.ru/document/902048009?marker=65E0IS, with last version 
from 10 march 2017, but since than all changes in there are regulated 
and amended by decisions of "Main Radio Frequency Center", last one is 
https://docs.cntd.ru/document/1300597464, with status "Действующий" 
("Current").

List of all amendments are here: 
https://docs.cntd.ru/document/902048009?section=operative


On 16.04.2023 05:04, Seth Forshee wrote:
> On Sat, Mar 25, 2023 at 04:04:37AM +0300, Kirill wrote:
>> Update regulatory info for Russia on 6GHz in
>>   accordance with current regulatory rules.
>>
>> Source: https://docs.cntd.ru/document/1300597464?section=text
>>
>> Signed-off-by: Kirill Matvienko <me@16depo.xyz>
> 
> Thanks for the patch.
> 
> Based on the document I think the rule is right. My only question is
> whether or not this change is in effect yet. I ask because when I look
> at [1], which is the document amended by the document you linked to, I
> don't see this change. I'm not familiar with the process in Russia, so I
> just want to confirm that the change is in effect before we update the
> database.
> 
> Thanks,
> Seth
> 
> [1] https://docs.cntd.ru/document/902048009
> 
>> ---
>>   db.txt | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/db.txt b/db.txt
>> index 915a3b9..7f338b2 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -1500,11 +1500,12 @@ country RS: DFS-ETSI
>>   	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>>   	(57000 - 66000 @ 2160), (40)
>>
>> -# Source: https://docs.cntd.ru/document/902048009?section=text
>> +# Source: https://docs.cntd.ru/document/1300597464?section=text
>>   country RU: DFS-ETSI
>>   	(2400 - 2483.5 @ 40), (20)
>>   	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
>>   	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
>> +	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
>>   	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order
>> №129_22042015.pdf
>>   	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
>>
>> -- 
>> 2.34.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
