Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=UrZWXx1hbUENHHhQ46KLK5TXl/+brxn+gv1x1gC3iAk=;
 b=Um+5yCbmo8B3AERAJzmRbxA48
 +GllmlUsxE8GrzNLqFzWrbN+xAkc4XMsas861U3wn0qrdTugC4DGh1lmYhl2D4QeirgExjNJuKwGV
 HF7zoUOP+xEmEuyR/GZRKdP7zE5vagWR+8FoW9tLvOSkL+Vcisp5II6eQT+MYrXnDWqhMesotG2Pk
 3gxxcNYfDrCtDgkPphS4indC0BrFnqQkjpjz7Wgwy7/KuGJgGsukQzuqlJDpC4viNrwswKzWkw9YK
 2d3EnmhmrJZWQve+7PJzF6Tgx4oQIKRYgt/z1KNWNYur4F4J5V1b3aEWN1fTfCm0x1c691g5t917i
 H59WBKwHw==;
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpwAH-0005xc-OQ
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 12:44:16 +0000
Received: by mail-wm0-x22a.google.com with SMTP id r10so3078482wmf.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 05:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Mff0oksGB5BIHKHOZLHgpk8EXBAkBbSycYzNhu2Y/rI=;
 b=gtsJNRxmfMnHSO8pIvdoh83sGoZnIxHJchl47iHMxmcNxN+xQWBQxEPew8+wxt8iOq
 UIFHnU+m9MrzTG5bBjBBqzw/DxeiozJY8yDe4iEYPGi3f4uMfZZEW0icm3NAxNsZ52al
 ddg6Lp0l9QqTOMS2xMiEXGQ1cj0vx6iPGkiwrxKzhokcoHQJmoqGJ3LFoJ5qPFXazQfP
 SR5XAlUNND02FY93aWYBH9rv+0FzU4kyL9de4V3BsapX/zXRmzJt9rnCxmcquIDkx+N4
 NmFgHaG8WEf68Cs03poDv6eoV9S77sfPtGJqQnAzqtGV+zUSgKv5tD4eTXsGNK9g7mYg QZcw==
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <52d133f8-7c2e-c9ae-f14d-8b6261408817@gmail.com>
Date: Thu, 7 Sep 2017 14:43:44 +0200
MIME-Version: 1.0
In-Reply-To: <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
Content-Language: fr
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
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
To: Ryan Mounce <ryan@mounce.com.au>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello

Sorry, I'm kind of discovering all those wifi stuff and I'm not sure to 
follow your argument.

What I can see in current DB version is that some E.U. countries have it 
enabled :

e.g. Germany :

|country DE: DFS-ETSI (2400 - 2483.5 @ 40), (100 mW) (5150 - 5250 @ 80), 
(100 mW), NO-OUTDOOR, AUTO-BW (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, 
DFS, AUTO-BW (5470 - 5725 @ 160), (500 mW), DFS # short range devices 
(ETSI EN 300 440-1) (5725 - 5875 @ 80), (25 mW) # 60 GHz band channels 
1-4 (ETSI EN 302 567) (57000 - 66000 @ 2160), (40) |

Regards,

Mathieu Peyrega


Le 07/09/2017 à 14:38, Ryan Mounce a écrit :
> Hi Mathieu,
>
> The permitted power within 5725-5875 MHz is only 25mW / 14dBm EIRP, as
> far as I am aware this was also the case prior to 2014. This rule does
> exist in the regdb for Bulgaria / BG, which is technically correct
> however in my opinion should be removed for consistency.
>
> I think the problem with 14dBm being such a low power level is that
> its useful range is very limited. There is also the fear that client
> devices designed for use outside the EU and not complying with 802.11d
> will transmit far beyond the permissible power level in this range
> upon associating with even a compliant AP.
>
> Whether for these reasons or others, the convention appears to be to
> simply disable this frequency range altogether for EU countries.
>
> Regards,
> Ryan Mounce
>
> On 7 September 2017 at 21:49, Mathieu Peyréga <mathieu.peyrega@gmail.com> wrote:
>> Hello,
>>
>> I'm wondering if the regulatory DB is up to date for France, especially
>> regarding channels in band 5725-5875 MHz
>>
>> in
>> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
>>
>> I can found (07/09/2017) :
>>
>> country FR: DFS-ETSI
>>      (2402 - 2482 @ 40), (20)
>>      (5170 - 5250 @ 80), (20), AUTO-BW
>>      (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>>      (5490 - 5710 @ 160), (27), DFS
>>      # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>      (57000 - 66000 @ 2160), (40)
>>
>> which as far as I understands it prevents those frequencies being used.
>>
>> The European Union have taken the following decision :
>>
>> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
>> (or in French :
>> http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)
>>
>> where (p14/20, line 61 of the frequencies table) it shoul be allowed in E.U.
>> and the last column states that member countries should reflect thie E.U.
>> decision at national levels regulations before 2014 July 1st.
>> I don't know for other countries, but it seems that France as complied with
>> this, regarding the document from our national agency (ARCEP) :
>>
>> https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
>>
>> on page 23/35, the table gives the exact same condition as the E.U. rules. I
>> believe those frequencies should now be allowed in FR regdomain.
>>
>> Also, I own a Synology RT2600AC routeur, and the regional settigns pages
>> allows to set "European Union" which result in the access point broadcastin
>> a "EU" regdom that I can not find in the wireless-regdb
>>
>> Shouldn't it be added in the database ?
>>
>> regards,
>>
>> Mathieu Peyréga
>> --
>> tel : +33 (0)6 87 30 83 59
>>
>> _______________________________________________
>> wireless-regdb mailing list
>> wireless-regdb@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/wireless-regdb


-- 
tel : +33 (0)6 87 30 83 59


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
