Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXKI-0001vK-Sf
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 00:23:12 +0000
Received: by mail-la0-f50.google.com with SMTP id dy20so693847lab.9 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 17:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=ucz28lbA9hsnyEIUVo7ldkOI7wX6zrqZhe1E5cyWwGU=;
 b=aDMdn2LZqlEN9hqEe/5HMiGXbYOkFUwF3tYcVnFAiTAk3dOUuB9eCzAKNBxIBE2y2K
 fDdaIJ8JCPUup5ISAZf7bi4SsCdy4nkFMyazHXB3pZFbSK+24A2O45tufGdoWwfSR3tc
 nr6yg+Uu1wtkC38FPu1+tTDhzQjMQdarmgJ8t2Jz75syaCmqk7IzjCzdy4WmeKlnBrWX
 L1WRdqm8bZz2qZzcfYa9wBSgJI3o3j7A4QyxJF8bZZ/do8l7SmSHSn6h9i0VxweVaU3Z
 lFQkCmsFUadrW06J+ZInQ1sDLq/nEjHXlAJKZSaZPCVHV2b+YG9BzuqgkdGpfio1oIvE 7jGA==
MIME-Version: 1.0
In-Reply-To: <20130702172537.DC8F62006D3@clearcreek.mtv.corp.google.com>
References: <20130702172537.DC8F62006D3@clearcreek.mtv.corp.google.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 3 Jul 2013 17:22:25 -0700
Message-ID: <CAB=NE6UdCnNzd-_VjdePSgwKUhrJ4XWycT_4Wg0JoUkDncDpAg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: 5GHz rule for Indonesia
	regdomain
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
To: Paul Stewart <pstew@chromium.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 2, 2013 at 10:20 AM, Paul Stewart <pstew@chromium.org> wrote:
> Pursuant to
> http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf, provide a 5GHz rule for Indonesian regulatory domain.

This looks good to me and matches QCA's work on this, but we also can
enable VHT80. Given that I am working on sending a huge series of
VHT80 patches I'll roll this into my series and modify your patch to
add VHT80 as well. Will send out shortly.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

