Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x229.google.com ([2607:f8b0:4003:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brV9k-0001Iv-Lm
 for wireless-regdb@lists.infradead.org; Tue, 04 Oct 2016 19:13:37 +0000
Received: by mail-oi0-x229.google.com with SMTP id r126so246049372oib.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 04 Oct 2016 12:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DnpnnvPfTrBNp5obQ9c8Pqdwc3XS7Sdq/PQ1chjGfw0=;
 b=RuM3ijFDMFtJ4/UuOLMiiya2pHetdUBQfxH7uLjcc5dCC77MDX+a4WPJYlqIQ//2Y8
 3IVFxpZzR89smvWoQcPZQnPJg4Z7ENy17dqzrmbOlOAccxDF+B5a+ybh4FgW55ol9epK
 PT/wxxtsa0Y0Cq0jlhiJG78mQKJCZHPL87e1ZNqtGsSlu0y+Fe5UnruiWaXzvv48tAt/
 mF4dIOEz/mTpFKZcZxRrwmjSsBTFrSyLp2ErE/M/gqad4Gi47CSmINvDDd4HCthd7e+O
 HnGPsiMw3pc43Fp/fja2KGN1U427j1u+LHnwffPW2VvjoCwTemJNaV3sLQ+ByMW1D6Hq
 vtMA==
Date: Tue, 4 Oct 2016 14:13:13 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20161004191313.GB132934@ubuntu-hedt>
References: 
	 <CAOSyk=Jch5pz7pzDuHSyv=eiNXf81Wk2hA+o2yov9sQfkC_tWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSyk=Jch5pz7pzDuHSyv=eiNXf81Wk2hA+o2yov9sQfkC_tWg@mail.gmail.com>
Subject: Re: [wireless-regdb] Wrong / outdated regulatory information for
 Malaysia
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
To: Teoh Han Hui <teohhanhui@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Oct 05, 2016 at 01:46:53AM +0800, Teoh Han Hui wrote:
> There seems to be a mismatch between what's in wireless-regdb and the
> actual regulations in Malaysia.
> 
> See http://www.skmm.gov.my/skmmgovmy/files/attachments/WiFi%20Guideline-Final%20V.pdf
> 
> Direct clarification might be needed from the Regulatory Division of
> the Malaysian Communications and Multimedia Commission.
> Contact information can be found in the PDF.
> 
> Values reproduced below:
> 
> Frequency Bands | Max EIRP (Watts) | Max EIRP (dBm)
> --------------- | ---------------- | --------------
> 2400 MHz to 2500 MHz | 500 milliWatts | 27 dBm
> 5250 MHz to 5350 MHz | 1 Watt | 30 dBm
> 5725 MHz to 5875 MHz | 1 Watt | 30 dBm

The document you link to seems like a summary that may not have all the
details we would want. For instance, I note that the rules in the
database right now include DFS for most of the 5 GHz rules but the
document makes no mention of it.

I found the following document which "recommends" both TPC and DFS for
the 5150 - 5350 MHz range (and for ranges which require TPC we cut the
maximum EIRP in half):

http://www.skmm.gov.my/skmmgovmy/files/attachments/SRSP534WLAN.pdf

I haven't yet tracked down anything similar for the other ranges, but I
would like to so that we'll have a full picture of the requirements. I
did find another "guideline" document with a similar summary table which
also includes the 5470 - 5650 MHz range:

http://www.skmm.gov.my/skmmgovmy/media/General/pdf/Guideline_WirelessLAN.pdf

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

