Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atsy5-00012w-3W
 for wireless-regdb@lists.infradead.org; Sat, 23 Apr 2016 08:31:10 +0000
Received: by mail-wm0-x235.google.com with SMTP id u206so57182273wme.1 for
 <wireless-regdb@lists.infradead.org>; Sat, 23 Apr 2016 01:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com;
 s=google; h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=AWolPhqHCKSzCSxXlc+4WxYRjwmAnKL9Z/kz39swLjY=;
 b=ENXKKlmPlfPUrAdvfXaQNlhUSnrg/SgGUkEGcV0oifHem+R8U4lLN3asx/Awo2IVJt
 jPPy/xqNSWL6jGFPut2gT0eOXPssy1D47R7coL/Oe/DkW7by0B3b/AE9hlHq6ZIHogCL
 hyXPeWsD878IMX7nkRpIUPfsUYPujXQI1ob3k=
References: <20160422123614.2B4EC2063D@density.slowthinkers.net>
 <20160422135529.GA109717@ubuntu-hedt>
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <571B32B5.1040601@broadcom.com>
Date: Sat, 23 Apr 2016 10:30:45 +0200
MIME-Version: 1.0
In-Reply-To: <20160422135529.GA109717@ubuntu-hedt>
Subject: Re: [wireless-regdb] Update regulatory rules for NL as per ETSI EN
	300 440-1
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: Seth Forshee <seth.forshee@canonical.com>, Anne Marcel Roorda <marcel@slowthinkers.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On 22-04-16 15:55, Seth Forshee wrote:
> On Fri, Apr 22, 2016 at 02:36:13PM +0200, Anne Marcel Roorda wrote:
>>
>> Hi,
>>
>>   Below the patch to include SRD as per ETSI EN 300 440-1
>> for NL.
>>
>> Thanks,
>>
>> - marcel
>>
>> Signed-off-by: Anne Marcel Roorda <marcel@slowthinkers.net>
>>
>> diff --git a/db.txt b/db.txt
>> index e9ba21a..738e412 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -850,11 +850,18 @@ country NI: DFS-FCC
>>  	(5490 - 5730 @ 160), (24), DFS
>>  	(5735 - 5835 @ 80), (30)
>> =20
>> +# Regulation on the use of frequency space without a license and=20
>> +# without notification 2015
>> +#
>> +# http://wetten.overheid.nl/BWBR0036378/2015-03-05
>> +
>>  country NL: DFS-ETSI
>>  	(2402 - 2482 @ 40), (20)
>>  	(5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
>>  	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>>  	(5490 - 5710 @ 160), (27), DFS
>> +	# short range devices (ETSI EN 300 440-1)
>> +	(5725 - 5875 @ 80), (25 mW)
>>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>>  	(57000 - 66000 @ 2160), (40)
>=20
> I'm looking at the document you reference as translated by Google, and
> I'm not seeing anything there to support these changes. I can't find any
> reference to ETSI 300 440-1. The section which would appear to apply
> here (article 2 paragraph o) references Annex 11 for permitted frequency
> bands, and this does not include the range that you're adding.

It does. In Annex 11, subcat 1, there is entry J that specifies the range:

J	5725 =96 5875 MHz		25 mW e.i.r.p.

Regards,
Arend

> I didn't read the document in its entirety though, so I may have missed
> something. If so, could you please point me to the specific section
> which would permit operation in that range?
>=20
> Thanks,
> Seth
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless"=
 in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>=20

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

