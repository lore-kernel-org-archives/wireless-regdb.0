Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x233.google.com ([2607:f8b0:4002:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAfN9-0007cl-Ss
 for wireless-regdb@lists.infradead.org; Thu, 02 Jul 2015 14:21:53 +0000
Received: by ykdy1 with SMTP id y1so69477192ykd.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 02 Jul 2015 07:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type:content-transfer-encoding;
 bh=zY5/MvZq0H5dPMYqG0kYlImrMsoS1L66f9gmjqrp6KU=;
 b=MmyiFh5d54+gIOt0aildHMawOc7OPW2Qc2ALnMoKflgAvkYhbVeYRFmyUCs3iqEhNQ
 c4y5mrsNJCpY6iEDLyZDjdaQCfIZ/srcIKn05YufIeGWj/7a+70c5A1Wj7gFjvpS6IdA
 PZjM3nySzlu5xWyyyxWGeewIRP5ip4IUXUPyeZRIxpXI3anqGCs5RMhzQ78F0jqszDPx
 7MgCKVbrlcvwpjED7BGm+TBRhi5+9pp0G73bJC0aM5jPx27neeF3lr70uCMv6SoB+b55
 1fXYJONQlIRApko+LRzm+1izIc10Ke3SDj+uiFpUBAHeL4c3XY2DHAncMTDpJx2o+1Pv ZwZA==
MIME-Version: 1.0
In-Reply-To: <20150702134801.GA40677@ubuntu-hedt>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <20150702134801.GA40677@ubuntu-hedt>
Date: Thu, 2 Jul 2015 07:21:30 -0700
Message-ID: <CAHr=Vqn8LzpsbAk=V2yC3Q0Xd5DHqfuSCW4G6vs1vZqBG-VSMw@mail.gmail.com>
From: Wei Zhong <wzhong@google.com>
Subject: Re: [wireless-regdb] wireless-regdb: update CA rules for 5600 -
	5650 mHz
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Thanks for the reply. I'll fix the format and re-submit.

On Thu, Jul 2, 2015 at 6:48 AM, Seth Forshee <seth.forshee@canonical.com> wrote:
> On Wed, Jul 01, 2015 at 10:44:09PM -0700, Wei Zhong wrote:
>> commit 2fef4cad8a1bd9cbbf178e59a1b3ca672b057095
>> Author: Wei Zhong <wzhong@google.com>
>> Date:   Wed Jul 1 22:39:09 2015 -0700
>>
>>     wireless-regdb: update CA rules for 5600 - 5650 mHz
>>
>>     Related regulation:
>>     http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3
>>
>>     Frequency Bands 5470-5600 MHz and 5650-5725 MHz
>>     Until further notice, devices subject to this section [i.e. Wifi device
>>     supporting 5 GHz bands] shall not be capable of transmitting in the band
>>     5600-5650 MHz. This restriction is for the protection of Environment
>>     Canada’s weather radars operating in this band.
>
> Thanks for the patch. There are a couple of issues though, plus a
> question.
>
> First, this project requires that you add a Signed-off-by tag to the
> commit message to acknowledge your agreement to the Developer
> Certificate of Origin. Please see the CONTRIBUTING file for more
> information.
>
> Second, the patch is not in the correct format. It looks like to me you
> pasted the output from git-show, which resulted in mangled white space
> and other issues. Please use git-format-patch to create the patch, then
> send it using git-send-email or else send the patch as an attachment.
>
>> diff --git a/db.txt b/db.txt
>> index 809cd3c..da0cfad 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -216,7 +216,8 @@ country CA: DFS-FCC
>>         (2402 - 2472 @ 40), (30)
>>         (5170 - 5250 @ 80), (17), AUTO-BW
>>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>> -       (5490 - 5730 @ 160), (24), DFS
>> +       (5490 - 5600 @ 80), (24), DFS
>> +       (5650 - 5730 @ 40), (24), DFS
>
> Why isn't 80MHz channel bandwidth allowed in the 5650-5730 range?

It could. But since the entire band is only 80 MHz, in practice, not a single
center_freq, channel 136 or140 for example, can utilities 80 MHz, right?

>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
