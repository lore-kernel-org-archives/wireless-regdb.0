Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
 In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=djf+koa5evRE7bZhUs4OQOl8aY7x/0Gxyjz1Qg9d8x0=;
 b=U+Bj6+bKsdhZ1O
 Zpkj5ScwnpKnz3eeV8Ust26JGcwrnUB7EbWmN0EJy1TDCWvCmY4SF2lMafqoKybU5ejbsDTWmu/D3
 6PkQdo+luOupaspOOkBYW8aJrjZW9yg1hH5IlFCV0xLs5nGRQI8XWgUV4frOa38K5ku9Fd6sZodzf
 Dhr4tywOtAUgSrvcDRUQ1gZeuVW4xKgyF8pc+5VLzfeFJG4/Qq35ZVqE+nvdffJ9jz+9q/oDB1iYb
 mLIkOaJ/wMZehrFkcayOFyp62SsK6CErV8ys4GYdrgyibcnC3ScMf6VgwAgNP/wIs4WGzPNqaVfQB
 hi3r2mXlhDmGTLahRIdQ==;
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk1Vv-0001sp-3G
 for wireless-regdb@lists.infradead.org; Thu, 17 Jan 2019 06:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1547707854;
 bh=wfQVS7uPB4VwPjCmn+kIsJKOAE/qWlU2Wp8lDYZOKss=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=VrpLbHAY5EKnv9u+Ol3OdUe7NhDMIrgLPtnyAFtijhpXM8sm+X/c+yUatTal/8JYL
 dKSlYOB0iFRZieIsBuX9/vvPsSGg7VKnY+1Liaqhl3PYT5j28oSrVKeX7eLpTnRxKM
 cD26Njp9aL9DX8eplE2QgNEJTqofAzSDd3O/Gwb0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1547707853;
 bh=wfQVS7uPB4VwPjCmn+kIsJKOAE/qWlU2Wp8lDYZOKss=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DDDB3QDDr7aS6zuVzyHbgnHMZeQftL90A8BOFq/ngZI38Rue4G0FOtFW0j6HSuPEP
 8q9Mme2ByH8ZICXHt4kgVNyy5yn0lRyIgEv5DryqVksFBvw/pZQukk2w7ICTE7Co5j
 IKplVqvLzAJZVHAqmX3dps0kzwchLQtDCHLM+6xI=
From: Kalle Valo <kvalo@codeaurora.org>
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
 <CABPxzYK+Tu678C=84i3+67gA1EBw_pG3cJ1y1ZvWZobU6iS8Dg@mail.gmail.com>
Date: Thu, 17 Jan 2019 08:50:49 +0200
In-Reply-To: <CABPxzYK+Tu678C=84i3+67gA1EBw_pG3cJ1y1ZvWZobU6iS8Dg@mail.gmail.com>
 (Krishna Chaitanya's message of "Wed, 16 Jan 2019 14:09:05 +0530")
Message-ID: <87lg3j6aly.fsf@purkki.adurom.net>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
To: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Krishna Chaitanya <chaitanya.mgit@gmail.com> writes:

> On Tue, Dec 18, 2018 at 1:38 PM <chaitanya.mgit@gmail.com> wrote:
>>
>> From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
>>
>> Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
>> 57-64GHz band till 71GHz with almost same rules.
>> ---
>>  db.txt | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index fa5c0e0..ae650dd 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -1280,9 +1280,9 @@ country US: DFS-FCC
>>         (5490 - 5730 @ 160), (23), DFS
>>         (5735 - 5835 @ 80), (30)
>>         # 60g band
>> -       # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
>> -       # channels 1,2,3, EIRP=40dBm(43dBm peak)
>> -       (57240 - 63720 @ 2160), (40)
>> +       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
>> +       # channels 1-6 EIRP=40dBm(43dBm peak)
>> +       (57240 - 71000 @ 2160), (40)
>>
>>  country UY: DFS-FCC
>>         (2402 - 2482 @ 40), (20)
>>
> Kalle/Seth,
>
> Any update on this? Patchwork shows its delegated to you(may be by default).

Seth doesn't use patchwork so I just delegate regdb patches to myself
and then mark them as 'Not Applicaple'.

-- 
Kalle Valo

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

