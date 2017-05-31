Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=e8Fq6GD2rQbVmhtPVvc6jhK18e0nWksk1OIrmwHoAE8=;
 b=TtgG0fzE2M04V6
 4mDeByxNwbR/xGC7/uxLGLZhmXHQe+02/62NN/yOXjAlTuJoumvYLaEDUjuC/vLI70+N1icA70uVR
 +hqEecYP9zki3gAKgi3qrAk9DGbm74pGB9QoNhSCGHbzEmmNIgebreNXTS66IfStnRnxwSTgOPKIu
 W9OfSf1ktHjTSqLF6ma0g3bqv7E0c6vP9+UqMjIFe516Uu3paGo5+sFeLkivB9gfT8E+JvgaFtjqg
 DfOylCOL+M9gD0RM2alt61jTGyc40IliB/32o7cTl5aulEvDsRRdFIVxq99RbzyyQ4ZYAQvjyh4cT
 N9tU38bv04FJnCV5J6rw==;
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFz1N-0005lV-Qg
 for wireless-regdb@lists.infradead.org; Wed, 31 May 2017 08:30:27 +0000
Received: by mail-wm0-x233.google.com with SMTP id 123so31998170wmg.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 31 May 2017 01:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hrt-email.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=pwVcJggMd3wGRnYuuYfHqsiaBVpda2BKAUGw2LcoYcQ=;
 b=0mlcDvQU06QkBJmgagLyAq8s08yrv+0x/OvlE1nLL9brlK+3xYYdS0nKcCWxrB/I87
 TK6Hm/lyTCt3QDraoFHzhmy4N8L/WPKvPIe0y5q769zagVDFxCVsNrtcNqUPn/W1YEot
 RLAHZUDs18Uy/mLgahYVrRws9HhyvIo450rczlyT3p5cKs1UNctDr4nbKbAKSJbWarz+
 sNCAxBbNJa67eA+0HNChEuYCYE4bZ0WaJDd04vHFVdB3wHvMchvGsaZj1BYK8DNMwuCW
 ZYjeUx7s0peAe9QnMKdoDBYkbMa3IOK8sYKp7ZZZTsqkNIyV7GgIEZjspbaNmh4lanQs
 idEQ==
Received: from [192.168.1.205] (149-62-65-85.primorski-tp.si.
 [149.62.65.85]) by smtp.gmail.com with ESMTPSA id
 p139sm14950313wmg.14.2017.05.31.01.30.01 for
 <wireless-regdb@lists.infradead.org> (version=TLS1_2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128); Wed, 31 May 2017 01:30:02
 -0700 (PDT)
From: Ivan Golob <ig@hrt.email>
Message-ID: <98d8dfe4-a683-d6d7-229f-bce7accec556@hrt.email>
Date: Wed, 31 May 2017 10:30:01 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] Regulatory customization
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello to everybody,

just a question about the "regulatory.bin" customization.

I've recompiled the "regulatory.bin" and copied it on my system, 
together with the new public key. It seems to work well, but I'm 
wondering if I have to recompile also the "crda". As far as I 
understand, with the "crda" recompilation, I can include the new public 
key in the binary, but I don't think this is necessary, right? (I'm 
using Ubuntu 14.04).

Thanks, best regards.

    Ivan

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

