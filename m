Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=UPwkvCZVTzjyPwqrdnt/miIBHg4CaYS5rc13lW5UM/k=;
 b=L3ruDEEh0opETh
 +xJUyhPHieJ0gEjZO3SR0ni/38jEjUA+IGcWUVhLYEAhuF2tl+PS2E7AcRFrwX5GgiDPJ2KwIB5Q8
 kPs3iAUkGLH8rC2wd6g+g/Aek1VXDQO57xhmz84n94QT1/CnIBXzBHNaWscOdtzUE3gApjFUTxAUG
 N0EzfoS+dWlw3gBp6k9dYlTlSUPI8CBur1aKHfvEGhPKBMzZDhE5odvxAVrW3JfMbWh9NaKworsGw
 MP2ugf71Xg6pymI0GswBgSpiMK/3o1eZvoZybghYO+QWdPYyCGZtUEx3BCDbC7zj5a6tghiqBjEmu
 WYcQuJkiX4ltn26bha+g==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309;
 h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=AUyCYdEEYIlEnakSduhyM/fC90b5efBH2B0s/8y+mdo=;
 b=HeGMC6x4yE8HN/R1fL3V65KVJV
 Uf6UOE34R2kMzRj1Q7U+1DWn8p5fMKNJCcj3IALSaJoht83rynPl1oxUfN9IEcl77v3Rz53wsv9Cv
 dt5dnTgAPDqSOY/+QBnnn+UUatBQWFOVUlemNPmW/vRvqYOzJkOzh70fygy2G8UNvxojDn8gI3R+6
 +3mEhLr3mNhUP+XKqYGYxNzjzbP/HOIlZvajNuFGqij56LIyJ7mgMi3jhGlswywilGmVXY6aSZD4Y
 fVZ9U1q/Mi4QzOpWA27J8t/Q+KuqTVm1EzzbJVBoVm0nR/BCr+dWvp+fc2LlbTgcrRAw3GT2X36Ai
 TkNtx8OA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZEfq-00CzfA-27
 for wireless-regdb@lists.infradead.org; Wed, 21 Apr 2021 15:21:58 +0000
Received: from mail-oo1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lZEfl-0006sg-HR
 for wireless-regdb@lists.infradead.org; Wed, 21 Apr 2021 15:21:49 +0000
Received: by mail-oo1-f69.google.com with SMTP id
 i11-20020a4a6f4b0000b02901ef8b6e92a6so3419056oof.7 for
 <wireless-regdb@lists.infradead.org>; Wed, 21 Apr 2021 08:21:49 -0700 (PDT)
Date: Wed, 21 Apr 2021 10:21:47 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YIBDCz7+guQ+V01C@ubuntu-x1>
References: <20210407220054.9347-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210407220054.9347-1-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: re-add source url and
 info for CU
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: =?utf-8?Q?Jos=C3=A9_Daniel_Rodr=C3=ADguez?= <josedanielr@yandex.com>, WIRELESS ML <linux-wireless@vger.kernel.org>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 08, 2021 at 12:00:54AM +0200, Xose Vazquez Perez wrote:
> Handy to find modifications or new rules.
> 
> Cc: José Daniel Rodríguez <josedanielr@yandex.com>
> Cc: Seth Forshee <seth.forshee@canonical.com>
> Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
> Cc: REGDB ML <wireless-regdb@lists.infradead.org>
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
