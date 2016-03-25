Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22c.google.com ([2607:f8b0:4003:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ajUL6-0001EE-Cy
 for wireless-regdb@lists.infradead.org; Fri, 25 Mar 2016 16:11:57 +0000
Received: by mail-oi0-x22c.google.com with SMTP id r187so102812235oih.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 Mar 2016 09:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=dB/hADM0nISJ4OPTn3Y+Xl2kwWayBgX0nRJAkafFy9M=;
 b=IpY9XyiGQn51CxUuuP1FNeHZdXMbi12kYNOWIbsxj4pt8Zc0Ux0W3+Y5uzVBpnzLPk
 Z4EgAs/Lk01iOgGRg0tHFCyu4SOHGN/syafdikiB+HbSbCavhH1Vg8FbcUQBDOCbgM3W
 /4cbhW2dCsIOkGWOfL5rmB03dzt1ixZ3g7D8siHBLHanLhuXEBwf9ChJw7p2uyMKOCEG
 lAQFj57w2JNTenUtOBuleoWHxxVBre5pWPQAoGUTZChaA5MuVT0LnxESHLSjIwcdjrrN
 8SeDPsjR35/GPwA649NIOifIDW7A2wC4wT9JFcD3MSlITIZWcDfgtXreGJzjouQ+tJFl
 uTTw==
Date: Fri, 25 Mar 2016 11:11:00 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160325161100.GA112464@ubuntu-hedt>
References: <b7a3a22077814e7da4e94a61e59c585d@ausx13mpc122.AMER.DELL.COM>
 <20160325135147.GA27324@ubuntu-xps13>
 <215edc732bbb4c8aa7b38dd1273f372a@ausx13mpc122.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <215edc732bbb4c8aa7b38dd1273f372a@ausx13mpc122.AMER.DELL.COM>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Russia (RU) on 5735-5835 MHz band
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
To: Thanh_Nguyen@Dell.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Mar 25, 2016 at 03:59:30PM +0000, Thanh_Nguyen@Dell.com wrote:
> Seth,
> The sources I am using are also unofficial:
> 
> o   Broadcom’s document showing Russia allow 2.400-2.4835 (Ch 1-13), 5.15-5.25GHz (Ch 36-48), 5.25-5.35GHz (Ch 52-64), 5.470-5.725GHz (Ch 100-140)
> 
> o   Wi-Fi Russian Certificates that Broadcom and Intel (and some other major suppliers) provided to Dell don’t cover 5735-5835 MHz band
> I will try to obtain official documentation of Russia's regulations.

Thanks, that would be helpful. All I could turn up was a document
regarding fixed wireless installations, in which the 5375-5835 MHz range
was allowed.

> Regarding the Patch, I am new to Linux and I am not sure what that is. It will be great if you can make one or guide me how to do it.

Let's hold off a bit. That will give you some time to look for some
official sources, and I'd also like to leave a little time to see if QCA
has any comments since the rules we currently have for Russia came from
them.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
