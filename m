Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=OaIvX8oMbEQ29slXvSC7r9nDqZq8OqMWq1CQ7HqwTa8=;
 b=NpVOysFHCxbH9r
 Es89rLhBbEo0uBhdKUZOmu5GGsbsbzd4qL6cK/4LLO4xxOFXivqbCTylWUQvxhgljAodFBKevBUxY
 VzC53dKmSSzjjxUN9wRr5qtYgkOiGXBbUTwkFaDIZKNE0C05a2peHjjVjrjoiVTiPGJO31Z534g/B
 CX1+CtGYwdT+rseIyYkU6j4rmtMQCMzfizMI9f4XkvsywSzyOO99mh12MjaulUiqqnqLeCvbcSatt
 RuVMZgbLMOkz77/IIG5FbwWLCsOooDBlSj4MURxrlTLGK3m1J7JwvMvvisJGfhKkLuc4mT6WlgNQc
 ztGsrL3KlMifwtVTWdrA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqCS-0000Pm-HZ
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:46 +0000
Received: from mail-qt1-f200.google.com ([209.85.160.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jTqCQ-0004kT-Ta
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:43 +0000
Received: by mail-qt1-f200.google.com with SMTP id v18so3465481qtq.22 for
 <wireless-regdb@lists.infradead.org>; Wed, 29 Apr 2020 10:08:42 -0700 (PDT)
Date: Wed, 29 Apr 2020 12:08:40 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200429170840.GT3158@ubuntu-x1>
References: 
	 <bd3095568bfcb9ee543cc1b2b68d22f5cd6e1c3c.1586117381.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd3095568bfcb9ee543cc1b2b68d22f5cd6e1c3c.1586117381.git.b.K.il.h.u+tigbuh@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update rules for US
 on 2.4/5G
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
To: bkil <b.K.il.h.u+tigbuh@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Apr 05, 2020 at 10:09:42PM +0200, bkil wrote:
> The bands are wider and more continuous:
> 5.15-5.35 GHz, 5.47-5.725 GHz and 5.725-5.85 GHz.
> Based on the April 2, 2020 version of e-CFR Title 47 Part 15,
> Radio Frequency Devices.
> 
> This also includes a small tweak for channel 144 similar to TW.
> 
> Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

