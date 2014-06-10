Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuTyJ-0001TY-Jf
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 21:52:49 +0000
Received: by mail-la0-f51.google.com with SMTP id gf5so4322484lab.38 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 14:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=T7fAzKie/n8ZGPAF5L2+GqHt/2y4GuUbbtBptrMIup8=;
 b=eFoe7SVjKegLx23ZMEpRA1oQwXwoiopvEzUc2Zao/TbWfOYeXKbgx7ltYrei7QA/56
 i2bxCqeYi59k+Y+WemN6QXE4kOFI5ju8s6ZEa8yrATG/wz9gqrmCcy6BXpiQs0NMdc01
 feDSr9KB/exYghGx3aNkziq1XCzYLIM7MHNZu91JMlIjVBc8hNf+zWhqwdj9NAqPj4+b
 ijA6DA/tTXhXEO4o2iama3TnZgqk9nj/VMECBUcXMmvsAq55bQbJP/QlFlxU/3ZkZhmL
 UIQe3Hf6VjMcX/N9NsKN5HUESQvybu3d/KtWLUvbOEgkjB0XbZHvjzkaAQ7VydVvKBVq lW0Q==
MIME-Version: 1.0
In-Reply-To: <1399624723-9167-3-git-send-email-janusz.dziedzic@tieto.com>
References: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
 <1399624723-9167-3-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 10 Jun 2014 14:52:05 -0700
Message-ID: <CAB=NE6WGEuKTGxj=ZyCso5TdUp7=sskJ4Q1VGzxkfWycPU00=Q@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 2/2] crda: add AUTO-BW rule flag
 support
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 9, 2014 at 1:38 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>

Applied and pushed, thanks.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

