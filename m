Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=VrEumRiNBeZQ/Cg4shCw0965JG/Vuya6aeM6JEU92yA=;
 b=iDjwuUmm9OPg7PNJVQc16YA2HB
 6+hru+cqR6hFU03stahqqd0jDtEMctqH71tChd3dCFIPLnzZDxEZPLRsDMxKClAJas42OjUPR/bta
 7EBpKRLVwmlE0RGMzNKtUtLiIencjsONnsYg7mnWclz201Xq8FUnKCpACp9yOcbxyCi1dYW2RaiT6
 nvseGQruW4HpoJ5DAg0qn4lOK9et1+kHiLXlyzXG6p7WH+h3OfyAXU1Pm5ddOHScqO4JHk/Ly5lyb
 AO84nYy7FQ5zUWuAhfmEKMwjViVcbtbGtl4ifh645DL8Jb3Mw/pZqP00TTJBmxDkP0VBKjrNMX30c
 74yHwnvg==;
Received: from mail-vk0-x235.google.com ([2607:f8b0:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIiPv-00053L-V9
 for wireless-regdb@lists.infradead.org; Tue, 15 May 2018 22:27:39 +0000
Received: by mail-vk0-x235.google.com with SMTP id j7-v6so1177576vkc.9 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 May 2018 15:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=CnWyQP3p9vb5d2W6DxMNK8Ry9ARwReYEdSCBc51NJ58=;
 b=VgbhDtol3qLQzQ3piqOGsbCDsRNK1+UJHeXnFCDvPgGttL4HLR3DYoYnErWcd7sccI
 kPUZ7gttcmfCoeQgGqCTjoOw3J6VaUh2MfZK1273bxcgZToYhkzBkcPxo6grENXx5T4R
 eFKNkw+txHO+Tx5RZKqbgrnqIiLUZyhqBpehZDh73cFGgMmHR93oVz7objBROkTSwKxb
 AT66eQ5iLUN6jbsgH1rZO0AtsOhLZuUM5h3dZ0/0lPJ+/EtRNktHYP3PaOTrd9Teg6/x
 1PMtU9arIk2ihL2Loqq1aW1GSp/XGWKm2wZ0zINNXAQ2M/X1eTlFbmUReIhwc/P0hZ7f jv4A==
MIME-Version: 1.0
In-Reply-To: <20180515182727.GC5093@ubuntu-xps13>
References: <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
 <20180330135934.GR18469@ubuntu-xps13>
 <CAD7otF5kDtQR+fddfKBwCCMqeQ4kdWRmT2dLPy6uwLOZr0RJpg@mail.gmail.com>
 <20180515182727.GC5093@ubuntu-xps13>
From: Michael Chen <michaelchentejada@gmail.com>
Date: Tue, 15 May 2018 17:27:23 -0500
Message-ID: <CAD7otF6NoMnzCzzA=p5KWx=391am0gZjiuas1ia1Fc0+Y7RCvg@mail.gmail.com>
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

Sure, no problem, although I don't think they're relevant since the
observations deal mostly with point to point connections and high gain
antennas.

11.5.2 states that (for the 5Ghz bands):
- For outdoor devices and point to multi point devices, if the antenna gain
  exceeds 6 dbi, the transmission power must be reduced by the same
  amount of decibels.
- For point to point connections only, it allows the usage of antennas with
  gains up to 23 dbi without reducing the transmission gain on the 5.15-5.25
  GHz band.
- For point to point connections only, it allows the usage of antennas with
  gains up to 6 dbi without reducing the transmission gain on the 5.25-5.35
  GHz and the 5.4-5.725 GHz band.
- For point to point connections only, it allows the usage of antennas with
  no gain limit and no transmission power reduction on the 5.75-5.85 Ghz band

11.5.4 states that (for the 57Ghz to 64 Ghz band):
- For outdoor equipment, the transmission power must not exceed 85 dbm minus
  2 dBm for each dB of the antenna's gain that the antenna's gain is less than
  51 dBi. Furthermore, the antenna must be the same type of antenna that was
  certified with the equipment. No other antenna type shall be used.

2018-05-15 13:27 GMT-05:00 Seth Forshee <seth.forshee@canonical.com>:
> On Mon, May 14, 2018 at 11:50:15AM -0500, Michael Chen wrote:
>> Neither TPC nor DFS are currently required in Panama. I verified this via emails
>> with the relevant authority. The Eng. Rene E. Piper from Tv, Radio, and Spectrum
>> Administration Department of the National Authority of Public Services (ASEP)
>> has confirmed me that the current code does not require radar detection.
>>
>> That being said, he has informed me that although the current code does not
>> require TPC or DFS, the department is strongly considering adding the
>> requirement
>> on future versions of the National Plan of Frequency Allocations(PNAF).
>
> Great, thanks.
>
> I'm having trouble getting a good translation of the document, but it
> looks like there may be some restrictions on outdoor use in sections
> 11.5.2 and 11.5.4. Can you help me understand what if any restrictions
> apply?
>
> Thanks,
> Seth
>
>>
>> 2018-03-30 8:59 GMT-05:00 Seth Forshee <seth.forshee@canonical.com>:
>> > On Fri, Feb 16, 2018 at 02:33:25PM -0500, Michael Chen wrote:
>> >> Hi,
>> >>
>> >> I've been researching which frequencies are allowed for WiFi in Panama since I
>> >> noticed that WiFi channels 12 and 13 are currently not accesible. After some
>> >> research, I found that there are a few discrepancies that can be corrected in
>> >> the 2.4ghz and 5 ghz band. Furthermore, the 5470-5725 band and the 57-64 Ghz
>> >> band were recently added to the regulation.
>> >>
>> >> Source: http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
>> >>
>> >> Go to article 11.5 (pages 18, 19, and 20) for the WiFi frequencies.
>> >>
>> >> Allowed frequencies:
>> >> 2400 - 2483.5 MHz 30dbm - 36dbm EIRP (See article 11.5.1)
>> >> 5150 - 5250 MHz - 1W transmission - 4W EIRP (See article 11.5.2)
>> >> 5250 - 5350 MHz - .250W transmission - 1W EIRP
>> >> 5470 - 5725 MHz - .250W transmission - 1W EIRP
>> >> 5725 - 5850 MHz - 1W transmission - 4W EIRP
>> >> 57 - 64 Ghz - 27dbm transmission - 43dbm EIRP (See article 11.5.4)
>> >
>> > Based on reading a translation of the document, these limits look right.
>> > What I can't find is any indication of whether TPC or DFS is required in
>> > any of these ranges (based on the existing rules there seems to be a
>> > requirement for DFS at least). Possibly it's just not coming across in
>> > the translation; could you check whether there's any information about
>> > TPC or DFS, and if not see if that information is perhaps found
>> > elsewhere?
>> >
>> > Thanks,
>> > Seth
>>
>> _______________________________________________
>> wireless-regdb mailing list
>> wireless-regdb@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

