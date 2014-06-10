Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuUEw-00064R-0J
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 22:10:01 +0000
Received: by mail-lb0-f173.google.com with SMTP id 10so4337869lbg.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 15:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=tLRVUU5iVvFziyWMfzVoTlXJpm9RBvrJxqg7Hb5+3dA=;
 b=yYVzFg+oEwN1bqDYnklmJLiuMkBdWTt6schVSCuj8wNmMIh5NJSeSUjhafd6oXdKMS
 8dutDS7y30MpCEE+kX/MIaGD2MuMFrqG4BtytPwmfux1IytGzG6EVQb/eEW0GplfqSIJ
 ZJwFOC1GKl7U7/Ped8hR0wdtu+8DI8D5/3pPV88CiH0Mdjo+x5OAVQuDTON1eYwT9oc5
 cIWdmZHDaQWEx4JbHjH5sAEVHptyyDqnubGcZQhWam1ECO/0PTcrvYk2ch0QlCy88Bsi
 L8LqoBJ9VoJ0g/HexfsctJOUWUZKwzJshlT+eGOqnaT2ww3Kt+jpmbIDg1stni3mav8h DF8g==
MIME-Version: 1.0
In-Reply-To: <1402385153-5056-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1402385153-5056-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 10 Jun 2014 15:09:13 -0700
Message-ID: <CAB=NE6VZs7d2bJNW0cp7NhPUMKr=bHn+pKwhvtk2U71rno4VMA@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 1/2] crda: simplify text parsing for
	country/rules
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>, Felix Fietkau <nbd@openwrt.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 10, 2014 at 12:25 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Remove strange parsers.
>
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>

Did you test this with the different types of accepted rules?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

