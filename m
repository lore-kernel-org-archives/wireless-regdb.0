Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj8SJ-0000Np-0S
 for wireless-regdb@lists.infradead.org; Wed, 20 Nov 2013 14:08:35 +0000
Received: by mail-lb0-f169.google.com with SMTP id y6so1843119lbh.14 for
 <wireless-regdb@lists.infradead.org>; Wed, 20 Nov 2013 06:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type:content-transfer-encoding;
 bh=Zh/LdcoX67/OjukNXvvVwf9DDLItB1aA5n2CGVexCS8=;
 b=P7xCNKrfRef20tsipFTKw/vu1bLxVMSvicTYAQxitFeqsodxM+stQDItr7iWWLvsLW
 GCzjn7jKof8AF4AtdZrITbJiaicRwpJYj4WOntd9aukYq6K0A1beFmnTKiJeBR72g5/t
 zipZHKyiecKYB0MGimq/w4vSP75NlGPeolVYocwFB9rgjgW6kDAG+uVBAkpjb6vXUQTh
 oaa09wt0tPnzY/lcyLuWrd9UCa95+LLYJokHAoAe3rWg3BjKE0SGWAAP8Aiz/5mgj+Yn
 aiJmau0OHXpWswcu5r8AjsBPl5A/dcmoMXzxQPvNhyeDrbHEq33z6slMawOMPC+UfARj j6+Q==
MIME-Version: 1.0
In-Reply-To: <2765421.8z1iAPSgk6@blech>
References: <2765421.8z1iAPSgk6@blech>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 20 Nov 2013 15:07:51 +0100
Message-ID: <CAB=NE6Vn5Pyn9k--S11SKsNS0VoK8BX0HXkdW8uR5u7D0yC4cQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] reglib: fix memset usage
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
To: Christian Lamparter <chunkeey@googlemail.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Nov 11, 2013 at 8:39 PM, Christian Lamparter
<chunkeey@googlemail.com> wrote:
> gcc-4.8 fails to compile reglib due to:
>
> reglib.c:1133:22: error: argument to ‘sizeof’ in ‘memset’ call is
>                          the same expression as the destination; did you mean
>                          to dereference it? [-Werror=sizeof-pointer-memaccess]
>   memset(rd, 0, sizeof(rd));
>                       ^
> reglib.c:1155:22: error: argument to ‘sizeof’ in... (same as above)
>
> Signed-off-by: Christian Lamparter <chunkeey@googlemail.com>

Thanks, applied and pushed!

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
