Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22e.google.com ([2607:f8b0:4003:c06::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axE8R-0006DU-IF
 for wireless-regdb@lists.infradead.org; Mon, 02 May 2016 13:43:40 +0000
Received: by mail-oi0-x22e.google.com with SMTP id x201so189669529oif.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 May 2016 06:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iNLBLNWliLtKMjEtuJGkSADgC0XWuUrDd4zP7qx8zUw=;
 b=Ws0RgGwx6yQgbjGi9fMoDooEU0g0iLFB65sbohD4nAp0VOfG62E4kfE2Iub19CZPUq
 xquST40gb1htlD2UbJ5Kz32OF5/Y8BNvQ4g/M7WvqaxqB1Oh39aZjyw/FHwsZZVgmWxN
 08EF0tceFjmuxjNB13nMpsy/XqBVr88xGJkjF0BMe9i1Td37wNbTCrOrfNCxgCaLjEkA
 SEIm/bKXSKoLybWPDlyJ63+yrRFQNEzAFAXYtXFdbMlw3vMarpkLXd+efuBBOd5scvL4
 LaGhkjLWm73n0JFdva2ykc2gHfditXYYXjbU8Tfu0cpxPLxCFRY2j5JwsQXzz8fqr15u
 7bFg==
Date: Mon, 2 May 2016 08:43:17 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160502134317.GB2714@ubuntu-hedt>
References: <20160422123614.2B4EC2063D@density.slowthinkers.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160422123614.2B4EC2063D@density.slowthinkers.net>
Subject: Re: [wireless-regdb] Update regulatory rules for NL as per ETSI EN
	300 440-1
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
To: Anne Marcel Roorda <marcel@slowthinkers.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 22, 2016 at 02:36:13PM +0200, Anne Marcel Roorda wrote:
> 
> Hi,
> 
>   Below the patch to include SRD as per ETSI EN 300 440-1
> for NL.
> 
> Thanks,
> 
> - marcel
> 
> Signed-off-by: Anne Marcel Roorda <marcel@slowthinkers.net>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

