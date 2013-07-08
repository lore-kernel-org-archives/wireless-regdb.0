Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwHz2-000801-RX
 for wireless-regdb@lists.infradead.org; Mon, 08 Jul 2013 20:24:29 +0000
Received: by mail-la0-f51.google.com with SMTP id fq12so4142861lab.38 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Jul 2013 13:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=cWlOeja/1q0NK6R7gZkLzMJBAxmbP8DkXejHWaPtDLI=;
 b=QEYYhkDbe/EQW7ckvnKsGaytjYwF6o1aM2BCVlOZOjIWMuaALSAJeRTieD2zs3npq4
 JqfOn7OFDfmIyrzzGp9MWOOYlGfjI3JUkoDUiae188DTAzndL8lerNHFtfRhgscf1Hpd
 uMLVdPKrsEn3HZOdnCpx8OQ4eNoXhORgfIcSqoxU5jwgFzZXH/KhZL5FHR90DINDKod8
 L0ufh/kPfBZBFEGlW9domS9oz88rvl+GB9ymLgzH3WxJoQI3eikDV298i4iScmqRT7Yz
 umFRBm+1nK8X/iMD+GpV4kzEx/IsTQanSISkHHuqSpLxJcZZwaBPQnYSaPaeltrBGfO9 g14g==
MIME-Version: 1.0
In-Reply-To: <CAMcMvsiQb=byYEV4z2aZUYCLjRmqJUm_SQrUrOPUXrrfkcjeLA@mail.gmail.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
 <1372899889-19183-43-git-send-email-mcgrof@do-not-panic.com>
 <CAMcMvsiQb=byYEV4z2aZUYCLjRmqJUm_SQrUrOPUXrrfkcjeLA@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 8 Jul 2013 13:23:45 -0700
Message-ID: <CAB=NE6XFY1po10NZOCqTAbBWT6kvpmS67pRnj9CDtBUQTt_Pqw@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 42/53] wireless-regdb: ID,
	Indonesia - enable 5 GHz and VHT80
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, John Linville <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 4, 2013 at 10:51 AM, Paul Stewart <pstew@chromium.org> wrote:
> On Wed, Jul 3, 2013 at 6:04 PM, Luis R. Rodriguez
> <mcgrof@do-not-panic.com> wrote:
>>
>> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>>
>> Pursuant to:
>>
>> http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf,
>>
>> provide a 5GHz rule for Indonesian regulatory domain. QCA has
>> also verified VHT80 can be enabled. Patch originally posted by
>> Paul Stewart <pstew@chromium.org>, I just modified to enable 80 MHz
>> bandwidth.
>>
>> Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
> Signed-off-by: Paul Stewart <pstew@chromium.org>

Given I've been promoting the idea of taking the Linux kernel DCO and
making it a standalone project [0] it is critical for me to promote
proper usage of the Signed-off-by tag. In this case it is not
required, and a more appropriate tag is either Acked-by or
Reviewed-by. I'll add Acked-by for you and respin, thanks!

[0] https://docs.google.com/presentation/d/1J4VTSTuiJ88xcvOrYg7HRvwUoxOW9qvnBqOfoPPuc64/edit

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

