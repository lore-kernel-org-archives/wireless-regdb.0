Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6pm3-00020I-1C
 for wireless-regdb@lists.infradead.org; Fri, 24 Jan 2014 23:02:55 +0000
Received: by mail-lb0-f169.google.com with SMTP id q8so3021524lbi.14 for
 <wireless-regdb@lists.infradead.org>; Fri, 24 Jan 2014 15:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=q03mckI/XfqIr5Wqh+GZGyhrVHqfuxABcSZVmpWgFB4=;
 b=ruUUPYLNDD50DkTFarqImwjhvYUZuLnSIBaX6gMqdW6g5fr2DRsiU+uJ71qjI7RVos
 Ef62LBe3GFTeA10N6EXukbM8SULdxRDdKG51fIMoELVtVI09T5037UhZiKjXHbkjBrut
 b/egD4J5c6RCLcbdvLHZEzOFt6GVjlZgNtSZLnY5/9sy7cTUCWTwot7Z1R6xJdGnHFfC
 3jzzDTB0khO6QSN6WHlvvKTeZN9wbUi9c06KwR1C2Bn51hruccvWqCCzo1RI+j/BYanL
 UpVoX9vOtMEhtWeWkmch49FBzLlhqJKEQMO1epkO8wUPu4P3B4KwXXtFrPaTQKjVMdAb W86Q==
MIME-Version: 1.0
In-Reply-To: <CABPxzYLu+yjkfsi13BXG8sKoySu_CwtN+uSgwwYdiXdEq8sGMw@mail.gmail.com>
References: <CABPxzYJSBagxbz4nd8=Qt_HbG4ecqe=-cbzi0N4JDPCwDE42Mg@mail.gmail.com>
 <CABPxzYLu+yjkfsi13BXG8sKoySu_CwtN+uSgwwYdiXdEq8sGMw@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 24 Jan 2014 15:02:11 -0800
Message-ID: <CAB=NE6U7zy8MeO4qLuWsEC_t69JKkS2=98crGrp4073=5WHU9Q@mail.gmail.com>
Subject: Re: [wireless-regdb] CRDA: Build Fail: Database signature
	verification failed
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, John Linville <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Dec 16, 2013 at 11:14 PM, Krishna Chaitanya
<chaitanya.mgit@gmail.com> wrote:
> On Tue, Dec 17, 2013 at 12:20 PM, Krishna Chaitanya
> <chaitanya.mgit@gmail.com> wrote:
>> Hi,
>>
>> With the latest git source, i am seeing a build failure with the below error.
>>
>>   LD   crda
>>   CC   intersect.o
>>   LD   intersect
>>   CC   regdbdump.o
>>   LD   regdbdump
>>   CC   db2rd.o
>>   LD   db2rd
>>   CC   optimize.o
>>   LD   optimize
>>   CHK  /usr/lib/crda/regulatory.bin
>> Database signature verification failed.
>> Invalid or empty regulatory file, note: a binary regulatory file should be used.
>> make: *** [verify] Error 234
>>
>> Is there something wrong with the certificate?
>>
> Additional info:
>
> # regdbdump /usr/lib/crda/regulatory.bin
> Database signature verification failed.
> #  ls -l /usr/lib/crda/regulatory.bin
> -rw-r--r-- 1 root root 3344 Dec 16 17:34 /usr/lib/crda/regulatory.bin
>
> regualtory.bin copied from wireless-regdb latest git.

John, what ever happened with this, I forget.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

