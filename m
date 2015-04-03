Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ydu8L-0001Wi-6b
 for wireless-regdb@lists.infradead.org; Fri, 03 Apr 2015 05:27:10 +0000
Received: by lbbug6 with SMTP id ug6so73130045lbb.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 02 Apr 2015 22:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=2gxLRqUYNFzIyC0kniiN2tyrX9fJl2omAfhJ/ciAXIA=;
 b=qa509Ue36osOYusiHE3kxBTratKtifyUq17kPOccRO2FXS6baVB3FW4hAWcurYVj1U
 Irk9dQ/aIo5iupcAm1IjPhqY2EisB7WHfLVubkaYR8P9TZDYd7ebk1CkqhtkXd7jeJmL
 Zom1x65vtTKQ22FjFhLekfh30AtlOHoCsv500=
MIME-Version: 1.0
In-Reply-To: <20150330211018.GU5622@wotan.suse.de>
References: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
 <20150326192532.GB61113@ubuntu-hedt>
 <20150326204221.GD5622@wotan.suse.de>
 <1427702614.26117.1.camel@sipsolutions.net>
 <20150330211018.GU5622@wotan.suse.de>
Date: Fri, 3 Apr 2015 07:26:40 +0200
Message-ID: <CALhHN=qp5AeVwER6BwA4Djga2b2OVDCK7YYdDjrxqTOY0fwiLQ@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] CAC time syntax in regdb.txt
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
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Cc: Jean-Pierre TOSONI <jp.tosoni@acksys.fr>, Seth Forshee <seth.forshee@canonical.com>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 30 March 2015 at 23:10, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> On Mon, Mar 30, 2015 at 10:03:34AM +0200, Johannes Berg wrote:
>> On Thu, 2015-03-26 at 21:42 +0100, Luis R. Rodriguez wrote:
>>
>> > This would require generating two binary files and supporting that.  This was
>> > never done. We could also try to somehow mesh both versions together with one
>> > larger file that has both and try to remain compatible. That's the ideal
>> > solution IMHO.
>>
>> Given the file format, I don't think this will be possible.
>>
>> > Instead of sticking to CRDA updates to rely on this for support what we really
>> > need to do is mesh in CRDA support upstream into the kernel since the kernel
>> > now supports the cryptographic needs that CRDA had. I was planning on doing
>> > this during the upcoming Hackweek at SUSE but if anyone else wants to try that
>> > before please feel free.
>>
>> And given that we want this direction anyway, I'm not sure that the
>> multi-file-format CRDA solution will really be economical.
>>
>> For the kernel, we should probably define an extensible file format
>> anyway, and then just do it once.
>
> Ack. I can try to address both then during Hackweek unless someone wants
> to jump on it sooner.
>

Hello Jean-Pierre,

Before this will be ready, you can always chek crda-tiny
implementation, where signed db.txt file is used (skiped bin file) -
and CAC time works fine.
So, you can check this patch: [RFC 2/2] crda: add crda_tiny implementation .

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

