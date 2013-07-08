Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwHvf-0007rX-H9
 for wireless-regdb@lists.infradead.org; Mon, 08 Jul 2013 20:21:01 +0000
Received: by mail-la0-f49.google.com with SMTP id ea20so4095701lab.22 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Jul 2013 13:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=XZtwwah5KQrPnLMFQ6t2pH0PNnLnzT9aA+jVFUzsXX0=;
 b=uXF+t1k8XQdUR8sLsT5QONTTw/93xZR0z7bY1udqy8V2d5ObEUBxDGLGInLxXEskl+
 u2DSMyJvC1heq4JiwatNHRp2lVuOQ4SXYREtvz4N+jCRE4rsnXEGe6CUM7Vl9JPi2zmb
 u6IQF01oZFQT4b8fDB0D0nAyvz4tqTcnigyJCcVeZfqyjzRVVhWnJK/51NkX0KYkeLK0
 AsG3Jg2Hmbrbtvejr5q0NzbDf97wOxIg+CwMGE7A1Xmg3WBFF+R5jetqfkvgsPUd9SY1
 nxQphIpqZfaDzPEnf37DB0TqEjyVcPuYwiXY00/WfCb5cxixYSH3nsjVylCWEnM/XxJr a/9Q==
MIME-Version: 1.0
In-Reply-To: <CABPxzYLD3xp9vyTA42PsCdNo1qAm4+X4OrqFTN70-aGvO52FeQ@mail.gmail.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
 <1372899889-19183-43-git-send-email-mcgrof@do-not-panic.com>
 <51D5BD9D.5020604@broadcom.com>
 <CABPxzYLD3xp9vyTA42PsCdNo1qAm4+X4OrqFTN70-aGvO52FeQ@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 8 Jul 2013 13:20:16 -0700
Message-ID: <CAB=NE6UvN25jbyVgGzbfdniJY9chxhr1FRDyF89Y+AEGyDBnkg@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 42/53] wireless-regdb: ID,
	Indonesia - enable 5 GHz and VHT80
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
Cc: Arend van Spriel <arend@broadcom.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 4, 2013 at 12:29 PM, Krishna Chaitanya
<chaitanya.mgit@gmail.com> wrote:
> On Thu, Jul 4, 2013 at 11:53 PM, Arend van Spriel <arend@broadcom.com> wrote:
>>
>> On 07/04/2013 03:04 AM, Luis R. Rodriguez wrote:
>>>
>>> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>>>
>>> Pursuant to:
>>>
>>> http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf,
>>>
>>> provide a 5GHz rule for Indonesian regulatory domain. QCA has
>>> also verified VHT80 can be enabled. Patch originally posted by
>>> Paul Stewart <pstew@chromium.org>, I just modified to enable 80 MHz
>>> bandwidth.
>>
>>
>> Hi Luis,
>>
>> Is it just me or did you make a typo. Should '@ 20' be '@ 80' ?

Indeed, typo, I'll fix in my next iteration!

> But as per the document shared above the maximum BW allowed is 20MHz only, no?
> So is the VHT80 tested by QCA compliant to the reg rules?

Yes it is.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

