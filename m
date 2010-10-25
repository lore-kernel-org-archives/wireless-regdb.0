Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PAVwp-0001l1-KZ
	for wireless-regdb@lists.infradead.org; Mon, 25 Oct 2010 22:55:27 +0000
Received: by iwn8 with SMTP id 8so5341254iwn.36
	for <wireless-regdb@lists.infradead.org>;
	Mon, 25 Oct 2010 15:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=CkCP9+WTW/R/VWjwsYM6gAA2U5yfqdLOjy/9mW83EAo=;
	b=jDScq4IDnvTn56icVPz9IQ45Rf3s5PAJc60sK+xveyHgFEJYenu7sB2VxuqcerLbHR
	u6HNcrgq0SlhuLNdsYXFMg6gPbzYfRoOKPYsI25x3FU+m2/uAIB/seiwcQ25gn2Ivg6k
	NqoOQeAeWzEcEW9sjgk4yk0hqcAavhHDeXLpg=
MIME-Version: 1.0
In-Reply-To: <7de8d1c9fd95f3b714597b4cd15f7a29@post.subsys.no>
References: <7de8d1c9fd95f3b714597b4cd15f7a29@post.subsys.no>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Mon, 25 Oct 2010 15:55:00 -0700
Message-ID: <AANLkTim9g63UYZaxow8SO7EZLihCbiukQyTqSbL6XkX=@mail.gmail.com>
Subject: Re: [wireless-regdb] Changes to NO (Norway) in wireless-regdb
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: =?UTF-8?Q?Robert_Gr=C3=B8nning?= <slimg@iggu.org>, Michael Green <Michael.Green@atheros.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Adding Michael and the wireless-regdb list. Please use that list for
further reviews.

 Luis

On Mon, Oct 25, 2010 at 2:37 PM, Robert Grønning <slimg@iggu.org> wrote:
> It seems like NO is wrong according to Norwegian rules
>
> This is how NO currently looks like in wireless-regdb-2009.11.25.tar.bz2
> -------------------START-------------------
> country NO:
>        (2402 - 2482 @ 40), (N/A, 20)
>        (5170 - 5250 @ 40), (N/A, 20)
>        (5250 - 5330 @ 40), (N/A, 20), DFS
>        (5490 - 5710 @ 40), (N/A, 27), DFS
> --------------------END--------------------
>
> This is what the Norwegian rules say about general usage of frequencies
> for wi-fi:
> Note: The following text is a translation from a subsection of the
> following document written in Norwegian:
> http://www.lovdata.no/for/sf/sd/xd-20090602-0580.html#7
> -------------------------------------START--------------------------------------
> (3) the frequency band 5150-5350 MHz is authorized for indoor data
> transfer
> including radio-based local area networks (WAS / RLAN) with a maximum
> radiated
> power of 200 mW eirp the frequency use defined in the standard EN 301 893
> If any
> other use than indoor use, the average spectral density in the frequency
> band
> 5150-5350 MHz is limited to 10 mW / MHz eirp in any 1 MHz range.
>
> (4) the frequency band 5470-5725 MHz may be used for data transfer with
> maximum
> radiated power of 1 W eirp Maximum average spectral density shall not
> exceed
> 50 mW / MHz eirp in any 1 MHz band. The radio equipment shall implement
> transmit
> power control (TPC) which provides an average attenuation of at least 3
> dB. If
> TPC is not in use, the maximum allowed radiated power and power density is
> 3 dB
> lower than that following the first and second sentence. The radio
> equipment will
> use Dynamic Frequency Selection (DFS) as specified in the standard EN 301
> 893
>
> (5) The frequency bands 5725-5795 MHz and 5815-5850 MHz for data transfer
> with
> maximum radiated power of 4 W eirp Maximum average spectral density shall
> not
> exceed 200 mW / MHz eirp in any 1 MHz band. The radio equipment shall
> implement
> Dynamic Frequency Selection (DFS) as specified in the standard EN 302 502
> Radio
> equipment shall transmit power control (TPC) which provides an average
> attenuation of at least 3 dB. If TPC is not in use, the maximum allowed
> radiated
> power and power density is 3 dB lower than that following the first and
> second
> sentence. On the border between Norway and neighboring power density shall
> not
> exceed -122.5 dBW / m 2 measured with a reference bandwidth of 1 MHz
> unless
> otherwise stated in the coordination agreement.
>
> (6) The frequency bands 5725-5795 and 5815-5850 MHz for point-to-point
> radio
> links with maximum radiated power of 200 W eirp Maximum permitted power
> supplied
> antenna is 1 W. The maximum average spectral density shall not exceed 10 W
> / MHz
> eirp in any 1 MHz band. The concept of point-to-point radio links exclude
> all
> forms of point-to-multipoint, omnidirectional systems and transmitters
> send the
> same information located in the same place (sector antennas). The radio
> equipment
> shall implement Dynamic Frequency Selection (DFS) as specified in the
> standard
> EN 302 502 On the border between Norway and neighboring power density
> shall not
> exceed -122.5 dBW / m 2 measured with a reference bandwidth of 1 MHz
> unless
> otherwise stated in the coordination agreement.
> --------------------------------------END---------------------------------------
>
> Here is the link to google english-translated section mentioned above:
> http://translate.googleusercontent.com/translate_c?hl=no&sl=no&tl=en&u=http://www.lovdata.no/for/sf/sd/xd-20090602-0580.html&rurl=translate.google.com&usg=ALkJrhhGbQPtCjONnilyHdAgh1NwIZhFVA#7
>
> According to that documentation, NO should probably look like this
> instead:
> -------------------START-------------------
> country NO:
>        (2400 - 2483.5 @ 40), (N/A, 20)
>        (5150 - 5350 @ 40), (N/A, 23)
>        (5470 - 5725 @ 40), (N/A, 27), DFS
> --------------------END--------------------
>
> Question 1:
> The norwegian laws also says that if TPC is available, then the maximum
> allowed TX power
> of the 5470 -> 5725 MHz frequency range changes from 27 dBm to 30 dBm, I
> don't know how to write that in wireless-regdb.
>
> Question 2:
> The norwegian laws for the 5470 -> 5725 MHz frequency range seem to exceed
> the European restrictions in 802.11n-2009, I'm guessing that the upper 5725
> MHz frequency needs to be decreased to comply with the European
> restrictions? if so, I'm not sure what frequency it should be decreased to.
>
> Question 3:
> The norwegian documentation also mentions these radio frequencies for
> wireless data transfer:
>  * 5725 -> 5795 MHz and 5815-5850 MHz: point-to-point radio links
>  * 17,1 -> 17,3 GHz:
>  * 57 -> 66 GHz:
> Does these belong in the wireless-regdb as well?
>
> I hope my limited knowlege doesn't cause anyone unreasonable much work,
> I'm really trying to get better at this.
>
> -Robert Grønning (Norway)
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
