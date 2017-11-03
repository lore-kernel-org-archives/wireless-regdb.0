Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=0uXKzEokS+FfpHr6M8BS8B+h6HmatZiqhTSUbnNCsmg=;
 b=gwCmEm4Whd7U6u
 fpyhB/1F3GC0gleQ0i1JHTMzAQSPa7VG6KgoKKlCYVsYrATjuzya6Mev3p6WNAmON3NfBeuFG5KI2
 HZlCFKf4EUPYdksFZh5CxuglZciZmFEsBzW+8ewBMi72hUfleWnhKYHtJ3odCEZBIHGDUkJXMt63r
 HEMbCdxSuFkKChYRR4bXIKhQQeok0rF+MsgXjKsb9zXE0rRQN1oZDSksAhbWPg9JohPT9JXcrl19M
 HiDlwWZdg8SO/rlDrD21oh03K4HDEj0z586piB7cM7em1hTUFJO12RI4XZpolcwHtbo/NW4BCt1Q0
 1G+Lp0FmVx9djoKwmIPQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAftp-0003EU-7z
 for wireless-regdb@lists.infradead.org; Fri, 03 Nov 2017 17:37:01 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eAftR-0001Hl-7K
 for wireless-regdb@lists.infradead.org; Fri, 03 Nov 2017 17:36:33 +0000
Received: by mail-io0-f198.google.com with SMTP id m81so7569758ioi.15 for
 <wireless-regdb@lists.infradead.org>; Fri, 03 Nov 2017 10:36:33 -0700 (PDT)
Date: Fri, 3 Nov 2017 12:36:30 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171103173630.dlkvsa63e6n75wgw@ubuntu-xps13>
References: <20171020150651.32424-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171020150651.32424-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Add 5 Ghz rules
 for Kazakhstan (KZ)
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
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: =?utf-8?B?0JDQvdC00YDQtdC5INCY0LLQsNC90L7Qsg==?= <wowz89@mail.ru>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Oct 20, 2017 at 10:06:51AM -0500, Seth Forshee wrote:
> Add rules for 5150-5250 MHz, 5250-5350 MHz, and 5470-5725 Mhz
> based on the documents at [1] and [2].
> 
> v2: Also add DFS region
> 
> [1] http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> [2] http://adilet.zan.kz/rus/docs/P000001379_
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

