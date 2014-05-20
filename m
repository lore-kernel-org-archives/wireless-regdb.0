Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmk4a-0002el-Rb
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 13:27:18 +0000
Received: by mail-lb0-f170.google.com with SMTP id w7so389973lbi.29 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 May 2014 06:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=DHP4Tf3ET6tRZlzL3ZP21M/nXL6K5w1kMmCpYnbescY=;
 b=rJL3Ct+J7V/pip1RukKEv2ZKZ9O8C5aveiw5I+5hdyuGJMNzz8jKgxgt3ZOVJ4sSwJ
 NlIJCwpA54HgNZXN2WJ+967rRkOVaU3w2Z/WcRpil8QDSWakpY+SBabmGQNFsdaHNqJa
 S+aXcdQxTfyTJmlCirWBMKz6CAvlsBGaFB10Q=
MIME-Version: 1.0
In-Reply-To: <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
Date: Tue, 20 May 2014 15:26:48 +0200
Message-ID: <CALhHN=rLpBt-aTNDSbO6BO-TwFYuHf79=rpsTetysBrW_D47cA@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time
	parameter
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 20 May 2014 09:33, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
> On Fri, May 9, 2014 at 1:40 AM, Janusz Dziedzic
> <janusz.dziedzic@tieto.com> wrote:
>> Introduce support for setting DFS CAC time
>> in milliseconds.
>>
>> Eg.
>> (5250 - 5330 @ AUTO), (20), (60000), DFS
>>
>> will setup CAC 60 seconds CAC time.
>
> Can you elaborate whether or not this will require a bump on CRDA  and
> issuing of two new wireless-regdb files for the different versions on
> the commit log?
>
Yes, sure - will add this.

BTW, probably you know, why we decide to split usermode regulatory
code into crda, regdb? This required binary interface between them and
a lot of "not needed" code? Why we don't simply zip/sign db.tx code
and parse this direrctly in crda and use just one user mode project
for that.
What was the reason for have regulatory in binary file?

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

