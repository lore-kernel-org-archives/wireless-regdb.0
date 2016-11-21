Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8ow8-0002Jt-EX
 for wireless-regdb@lists.infradead.org; Mon, 21 Nov 2016 13:47:10 +0000
Received: by mail-io0-x232.google.com with SMTP id c21so39867828ioj.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 21 Nov 2016 05:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TUyLGQ1g3uipoAOOHS6G7KCqf1K5Pz/Wpx+m0mSYEbw=;
 b=Fsyr6L1Pf52dTBK8FgzW35wASDPK+rOouwHdmUrvp0DA8AP4LfDOdh1HBiAJMHO60Q
 L69yK01o9fEhQM5eHXaeo9ZEN3tPF+eCUWR/umsk28Zyh2DtwYxQppDvN4L9dVlM8Sul
 aGoaTRW6BsSeBV5ajmGJ9quIpPuyKzq/Fyne4G0ncK55b+/USNV4V90zdJ8PZ1pZwZiR
 m8Rjfj/Oc5SDCdpBeac2VNYdCeI89+llxiMlfkvrgzMqzR0I0mu9iadU/JPLADvGKs8J
 R7dS8LMHzicbX0+TA8OLwyNTe0+p4Yu4EKxQIIF/OJTuxNz5jJGy3pdXwjjM5gqkC47n
 yQ8Q==
Date: Mon, 21 Nov 2016 07:46:44 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20161121134644.GA28887@ubuntu-hedt>
References: <CAC1jSDQsTir3v0zWSdvpd3He-ERDDLLFMhKQbd=Vc-PfEkAcTQ@mail.gmail.com>
 <CAC1jSDQV3oP=dvD863dGGzPYwz6LyCANXb_sbrPOr5i+nLxFOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC1jSDQV3oP=dvD863dGGzPYwz6LyCANXb_sbrPOr5i+nLxFOg@mail.gmail.com>
Subject: Re: [wireless-regdb] 5 Ghz regulation in QATAR need to be updated
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
To: Manuel Cuadrado <manuel.cuadrado@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Nov 17, 2016 at 04:48:51PM +0100, Manuel Cuadrado wrote:
> Hi,
> 
> according to this official document from the communications regulatory
> authority  http://www.ictqatar.qa/sites/default/files/qatar_national_frequency_allocation_table_qnfat_0.pdf,
> bands (U-NII-1 & U-NII-2A) are also authorized in Qatar , so  and
> updated in the db is required
> 
> 
> 
>      # Follow US 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
>      (5150 - 5250 @ 80), (23), AUTO-BW
> -    (5250 - 5350 @ 80), (17), DFS, AUTO-BW
> +    (5250 - 5350 @ 80), (23), DFS, AUTO-BW

Care to send this as a patch?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

