Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmE2D-0003NF-UA
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 01:05:39 +0000
Received: by wibhq4 with SMTP id hq4so3746435wib.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 18:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=0H6mpXi4Fx5uCr0d7FJyBV3PeIhkq1JiiWZSjWMtths=;
 b=H3iqpLwGeQT2BNjhSjdXNwFtTZmhcj8ikxoi2Zn7kt58HzjMshYaZmM21gje6iIAjz
 rnwftnyXpR4zUzzaCSICyl4sROSeGmB0GQIVHUoJEkwFZ/a4xmShCsx2Yjxat6VUApdM
 5Fy6b+Mm0s33x/JlbedbyWFIwPoiAf5UObFjOCnDM9EQn98M1JbaF/tKdg5dEbRs+7de
 ElfrDzMRBhKvX1yqg3K+sDZvg01c3qDHiCjJMpb2G88KFzVsxsNwOUGzGIF5MAM5lfyh
 g1pALW+LMGzrgBUfmjEyxfWEZi6Cx9Zhhxnzynn1Oc6kxQBzh0d+fo7OJheeV5a1L4vU mpSQ==
Message-ID: <4FF396DD.7060408@gmail.com>
Date: Wed, 04 Jul 2012 03:05:33 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <1341362473-18747-1-git-send-email-xose.vazquez@gmail.com>
 <CAB=NE6U=bk6RSXHouuHvJd0=GErYJp82jkgeNWGnPDooZ_SONQ@mail.gmail.com>
In-Reply-To: <CAB=NE6U=bk6RSXHouuHvJd0=GErYJp82jkgeNWGnPDooZ_SONQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for ES (Spain) on 5GHz and 2.4GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On 07/04/2012 02:49 AM, Luis R. Rodriguez wrote:
> On Tue, Jul 3, 2012 at 5:41 PM, Xose Vazquez Perez
> <xose.vazquez@gmail.com> wrote:

>>   country ES: DFS-ETSI
>> -       (2402 - 2482 @ 40), (N/A, 20)
>> -       (5170 - 5250 @ 40), (N/A, 20)
>> -       (5250 - 5330 @ 40), (N/A, 20), DFS
>> -       (5490 - 5710 @ 40), (N/A, 27), DFS
>> +       (2400 - 2483.5 @ 40), (N/A, 100 mW)
>> +       (5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
>> +       (5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
>> +       (5470 - 5725 @ 40), (N/A, 500 mW), DFS

> You are changing from dBm to mW directly... please do the unit change
> in one patch and *then* the actual change. This would make it easier
> to review....

I did copy & paste from DE to ES. These are basic CEPT rules.

10 log(100) = 20
10 log(500) ~ 27

Anyway tomorrow, I will send a new patch.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

