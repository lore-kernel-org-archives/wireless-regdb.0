Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGF7j-0001QI-9F
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 21:56:12 +0000
Received: by mail-lb0-f177.google.com with SMTP id 10so742752lbg.36 for
 <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2014 13:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=011LG0owLa3A3z9B6gDVUTjr9TcdsPPF8x3rjVe7x8I=;
 b=PAMAhSS4SyTAyKqBsTh6NXtCD+1TAqpuBxXnK5p3P/EvD0dP2oCoTFLhUZ9UblLbw+
 +3lJp/1YjVqM0no/km0kevm/SxjuTRXcXtJ0LNDZaot+gDxUgFVLyoF4G9oHSxuBKcj3
 dIiNxze+kedcX0wwVzdETloouHxTPQRsyQaVZUV7OX1+i25U+8FONz/34imfrhV/9js9
 EkSU7JO0PC0Rmve6lM99Q7VSuveRVgHQwxIgxWOSGf+DKeFAR91QR3pcZFSxamlF5ppX
 dG24th17ewdt7zamzmRZJFIM9AK88Mgm9yqDCTlrz9w5eAlBeZdytPmtTZsOmn7L4XmF wneA==
MIME-Version: 1.0
In-Reply-To: <CABPxzY+CnnssaZpqgWuJ=QH-k=zJbHpLaGkJXAQSWSxq7kKa6Q@mail.gmail.com>
References: 
	 <CABPxzY+CnnssaZpqgWuJ=QH-k=zJbHpLaGkJXAQSWSxq7kKa6Q@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 19 Feb 2014 13:55:28 -0800
Message-ID: <CAB=NE6Xdj=RMc=rZ8FpFge0vaX=5HNmf-3dnR-icPBEhDzpGxg@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC] crda: Fix the linking order to avoid
	compilation error
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
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, John Linville <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Dec 16, 2013 at 8:27 AM, Krishna Chaitanya
<chaitanya.mgit@gmail.com> wrote:
> While linking the crda.o and libreg.so, first put crda.o
> and then -lreg. This fixed the below error:
>
> # make
>   GEN  keys-gcrypt.c
>   Trusted pubkeys: pubkeys/linville.key.pub.pem
>   CC   libreg.so
>   CC   crda.o
>   LD   crda
> crda.o: In function `main':
> crda/crda.c:196: undefined reference to `reglib_get_rd_alpha2'
> collect2: ld returned 1 exit status
> make: *** [crda] Error 1
>
> Note: This still doesn't fix the below error (will send another mail)
>
>   CHK  /usr/lib/crda/regulatory.bin
> Database signature verification failed.
> Invalid or empty regulatory file, note: a binary regulatory file should be used.
> make: *** [verify] Error 234
>
> Signed-off-by: Chaitanya T K <chaitanya.mgit@gmail.com>

Applied and pushed, thanks!

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

