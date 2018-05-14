Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=b0frTnXkKeCuscVSYnS1pl8IJ8vrGAJFGIRh359NNaI=;
 b=RIHSc8Re2LLLhaxoT+opXl9Jzf
 7x4jBYJoo9DZObTv3J8nus2YqLnh+Dp0MZV4BnmThRsUCmpTckGMaYtsptFOQpq1o4J/i2cyvm4VB
 l41CK/nDE6MwjP7O2En0hZTrtnKy3qaS277676RrqmyR1IaDJaa23cRvJntc6A+pnnXfKnGOWmK9a
 H9ZE9jmxkOHWy9tIWmuJ/Z/XbBKbi6WuMz+wRZL5W1Lsg8O6ZOgIc+MURp/lXX7KxKe4KMNyMvT1p
 R4O2/q1SuKMoyHz1+mNIAIbaZd5vPGVQQ/i7csIdRUDb1JSxgIzpYUspyeNcz4gEDVS7N+3UUf+kL
 g0q65TkQ==;
Received: from mail-ua0-x22b.google.com ([2607:f8b0:400c:c08::22b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIGg8-0002MS-QV
 for wireless-regdb@lists.infradead.org; Mon, 14 May 2018 16:50:52 +0000
Received: by mail-ua0-x22b.google.com with SMTP id v17-v6so8827584uak.6 for
 <wireless-regdb@lists.infradead.org>; Mon, 14 May 2018 09:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=7V3STnooBMWRfsF/MacQZSOgyIpmRYrdMgiKw4LdcFk=;
 b=Ean2ctF/HGzd7IPOXvg+Vf7MvASUgebFTnxLq8LsWpvsCVwExl/hxthuUkKVunJXPw
 +MKQL33Q3W1vTdBML77Wu+lxk7fkD3sns04ld+Ih9ICStDJY10NfSaFsENN5Qno7X3D6
 h3aW4I2RJUFck8UfEAKMsAXuMrHrXgs6hUFaOxChhe2pJQMQI+DZwpBWVboRo2R8z6fb
 3z47IQqG+1K2YG4DtJ6wm99wJplLkhKuuX2CdK63LWmghMII1vBcU8cluJftJZzH0kgO
 4gl/I6QfawLLKQ2rxRC3rUEa3CJ+fHS+E54R6vRazDy+6L0wyvWjlOCCS6UweTpstHVA ehpQ==
MIME-Version: 1.0
In-Reply-To: <20180330135934.GR18469@ubuntu-xps13>
References: <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
 <20180330135934.GR18469@ubuntu-xps13>
From: Michael Chen <michaelchentejada@gmail.com>
Date: Mon, 14 May 2018 11:50:15 -0500
Message-ID: <CAD7otF5kDtQR+fddfKBwCCMqeQ4kdWRmT2dLPy6uwLOZr0RJpg@mail.gmail.com>
Subject: Re: [wireless-regdb] Update regulatory rules for Panama (PA) on
 2.4 and 5 GHz
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Neither TPC nor DFS are currently required in Panama. I verified this via emails
with the relevant authority. The Eng. Rene E. Piper from Tv, Radio, and Spectrum
Administration Department of the National Authority of Public Services (ASEP)
has confirmed me that the current code does not require radar detection.

That being said, he has informed me that although the current code does not
require TPC or DFS, the department is strongly considering adding the
requirement
on future versions of the National Plan of Frequency Allocations(PNAF).

2018-03-30 8:59 GMT-05:00 Seth Forshee <seth.forshee@canonical.com>:
> On Fri, Feb 16, 2018 at 02:33:25PM -0500, Michael Chen wrote:
>> Hi,
>>
>> I've been researching which frequencies are allowed for WiFi in Panama since I
>> noticed that WiFi channels 12 and 13 are currently not accesible. After some
>> research, I found that there are a few discrepancies that can be corrected in
>> the 2.4ghz and 5 ghz band. Furthermore, the 5470-5725 band and the 57-64 Ghz
>> band were recently added to the regulation.
>>
>> Source: http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
>>
>> Go to article 11.5 (pages 18, 19, and 20) for the WiFi frequencies.
>>
>> Allowed frequencies:
>> 2400 - 2483.5 MHz 30dbm - 36dbm EIRP (See article 11.5.1)
>> 5150 - 5250 MHz - 1W transmission - 4W EIRP (See article 11.5.2)
>> 5250 - 5350 MHz - .250W transmission - 1W EIRP
>> 5470 - 5725 MHz - .250W transmission - 1W EIRP
>> 5725 - 5850 MHz - 1W transmission - 4W EIRP
>> 57 - 64 Ghz - 27dbm transmission - 43dbm EIRP (See article 11.5.4)
>
> Based on reading a translation of the document, these limits look right.
> What I can't find is any indication of whether TPC or DFS is required in
> any of these ranges (based on the existing rules there seems to be a
> requirement for DFS at least). Possibly it's just not coming across in
> the translation; could you check whether there's any information about
> TPC or DFS, and if not see if that information is perhaps found
> elsewhere?
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

