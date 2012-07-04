Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmDYk-00036p-Ap
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 00:35:11 +0000
Received: by yenr9 with SMTP id r9so6389994yen.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 17:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=oGp8WPQmtA62f3KaoO58+xF6mcaIP9+Ul3+YqkajbJo=;
 b=csUkWu82IH7E2mdsD+LYwRMCbbSfh92QeXfSCGGaSV7jacDvLF9PgwK+wjL0EbYnlN
 T9cWg1JlgVCKdT2p5ZCmB5GETMtHVHKUBUrrlE/hw5ENtLGniXxffn/y9rA3t0FFAPq/
 4AX6BwMcQMl7KtKk5FXfz4MpZntvcs0Am6w2RqJpYbggRnQiCSHDcnawce6tAKonO9hq
 +gmGKwYMtTLKXmpUzxdWnbS6vTe276R5Eb5YCZlZnWiKhO/+NyZj5Jnz91LfeBaFA0S7
 dxLwzFddKHUtAS83aZUUlG0itwIeFYsQQiJcNJeUh7Z+tk0006PlX1UjfIMDkaUAhP5r ZfUA==
MIME-Version: 1.0
In-Reply-To: <4FF38EA9.8000709@gmail.com>
References: <1341350730-11037-1-git-send-email-xose.vazquez@gmail.com>
 <4FF38492.20003@gmail.com>
 <CAB=NE6VpCUr1v400bNa1R3Ns4S4QVUt-cjq8=XtoJY=U533Cig@mail.gmail.com>
 <4FF38EA9.8000709@gmail.com>
From: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Date: Tue, 3 Jul 2012 17:34:43 -0700
Message-ID: <CAB=NE6W7pAsTPfZ-pja6hJdRkcgdWCOnwgSPazfXTt+NE0Ve1A@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
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
Content-Type: text/plain; charset="us-ascii"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 3, 2012 at 5:30 PM, Xose Vazquez Perez
<xose.vazquez@gmail.com> wrote:
> On 07/04/2012 01:59 AM, Luis R. Rodriguez wrote:
>
>> Please send a new patch and if you are going to convert something form
>> dBm to mW then please do that in *one* single patch so that it can
>> easily be read what changes you are *actually* making. That is one
>> patch to make a conversion in units that will not make any actual
>> changes, and then send another patch with all the verbiage you can use
>> to explain *why* you want the change you are making. You want the
>> commit log to have enough language so that if I forward the patch to a
>> regulatory person who has never read a patch they can read it.
>
>
> There was only one patch.
>
> The second mail was only a "Signed-off-by:", just in case.
>
>
>> The agreed upon "bar" for quality of regulatory patches was agreed
>> upon a while ago, for details see:
>>
>> http://marc.info/?l=linux-wireless&m=128414096127554&w=2
>
>
> Thank youuuuu
> http://wireless.kernel.org/en/developers/Regulatory#Mailing_list_for_regulatory_updates
> :-P
>
>
>> The more information you can provide the better.
>
>
> I believe  I sent enough.

Any chance you can just repost a v2 with the SOB on it?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

