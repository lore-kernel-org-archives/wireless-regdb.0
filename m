Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=iGL8MOkL5X5aQGiujW1poxE2geVpTe1h6sACCPma+74=;
 b=zw129m6eVK+9a2WTa7qs5de5DQ
 04SXuJ1YqsRG/ftZESae4nKAtnE0qc9W++6QBb1pMvdDuhf2fvDZkZQP+7+HzvPL5JsrzR8KwUsYq
 1auXNzW23BED0YEr4b4/iOkuknLO4/stiKXs3Ct/Gp8UYfVs8eAXAr9MM6P1pJMh4DJmTBavpAHw1
 3LradyfoZsTIpZa2/ZpLxy/gLbgdjbA9Gm9ubJvO25W8GAdW28scFgNMbZtQeHCipAOPhJ3U2F+Yj
 8z4GMhEbHBIvRQC2X7G9STkWOtjxYx4NxrINpgnc94TujDnD0FHVT1REdTJb7+U14/voZbGedhkYl
 KYOcwq/Q==;
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2]
 helo=sipsolutions.net) by bombadil.infradead.org with esmtps (Exim 4.96 #2
 (Red Hat Linux)) id 1r8yiB-00Cweu-0h for
 wireless-regdb@lists.infradead.org; Fri, 01 Dec 2023 08:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID;
 bh=5DWagvj1CA8MScOkBkQIcrlMwt66VS+jBzwsb4mHB34=; t=1701418640;
 x=1702628240; b=AL16iTdDQRb7bwDbawjnCuoIhTPHlYFBCgVqoQYjbFTraMQ
 fXsnHb2b9YR4AaF6o+Xi3J7utDm7SF82mw5GvCzY+0uH0N8EwLfrMLQBmMBv2rJwy9xThf3vncLEX
 8LDSr7pKh4TgnxCGRFwu27FvXlzlv1bGygcm1cwgscKi32LK9DSKjqpNGgLWQif9o7QbWca6TS4Rk
 bboBWDYYV0vnDADo6tvDVZws/BX861uuiCJvc3N6w0p7TVzlRdwpUBNR1NzzeyaPYuy/7Vg70TpaC
 WdE0OUMpMn2DP2P/Poun3Swgpz0YcvubVBsrO4hc33VVMAHVsEhd9NVTmlkM5vfw==;
Message-ID: <12f110339b4daeb5ab920369a2226dc33ab7e058.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 01 Dec 2023 09:17:15 +0100
In-Reply-To: <ZVqTTC2rqNpKHptJ@ubuntu-x1>
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
	 <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
	 <ZUAUahZakEvOXpip@do-x1extreme>
	 <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
	 <ZVqTTC2rqNpKHptJ@ubuntu-x1>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2023-09-01
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
To: Seth Forshee <sforshee@kernel.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, 2023-11-19 at 16:59 -0600, Seth Forshee wrote:
> On Tue, Oct 31, 2023 at 05:32:15PM +0800, Chen-Yu Tsai wrote:
> > > Johannes will be the one who needs to accept your key into the kernel,
> > > so we should wait for a +1 from him at least before we really get the
> > > ball rolling.
> > 
> > +Johannes for his opinion.
> 
> Johannes, we haven't heard from you. Let us know if you have any
> objections, otherwise I'm going to start moving forward on this.
> 

Sorry! I fell way behind on email :( Yeah I'm happy with this.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

