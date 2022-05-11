Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WT9e2L138H8+kfgNduQDYDZ+pfMQy6HVFTUf8jX6nrs=;
 b=NYB7NAdCg7wzQc
 /5bs6Zr/FCdpDUBiTpO/RnlZR/ejUUW2Dxi93b7NCiUvoxO3VXx89a3yUJynIw7YhlEhLNz+f9qFy
 G1WGiGjlOQNBSLm/2KH+/lPV3Zqut5/AtookVqXkx4f3lFERLgnfLqMLkAu7F3BiN+Go+Cz8VXZl4
 1qOOGqsp6Hj1MSuJMz1XtGm2g2645l4G3HS2I6YOj2kLhW9ETyLhvF2ULpkoNb6YLqOAbONf8t02u
 Y8UIWG9GZgHSNDL4/iOKwHJ+px1KGfxsQcRCj2frF5I3ITib5ftojeryiu7A/UH+eUARXpBVdbtE3
 QDgahhFJeosyHbvO40NA==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonVz-007Gn0-FO
 for wireless-regdb@lists.infradead.org; Wed, 11 May 2022 14:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652280032;
 bh=wDYEIjYWinYpJIV+w3hmOpIkKvCGB3pRAmibwkS664s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u6h5SGH4qblj3ppWgYYOSI1WNAy1LHkhp+KPNQC01zzZPUskrN2zH1r9ll9lQ0aJ6
 eCZd3+Tx0zPkYqqMvrB956GsTaLf/OdCd1pZiUdtKWJe/vUqunXJqtz02htxywb8yZ
 WgPA+K0ADZ31Anng66u5P+gGUmS4NrmKY4zAcvrcEvfyhNdzl7lXCOYV/l3Df5yDq2
 6lusI/48hKorKzrome4Hqf/vaHeBgUeTZJCW1Rfd5VYFsYBaplSEZsJR9I+BOTNY6H
 /wlWh1wvn/AMQHGRHgKCZcywV2YxiegoSnHGQk6XOnQDq+D88e4HuIGT8IWt3+V2tG
 eiNBiHlg0oZfA==
Date: Wed, 11 May 2022 09:40:31 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YnvK3xt+1Reemaes@ubuntu-x1>
References: <CAPRryQrHC2kC-dcokJyqSMiAFUjNJp2z6T9TCb=J+s0TvDzF8w@mail.gmail.com>
 <Yl8UjXhg695+Ts+5@ubuntu-x1>
 <CAPRryQp6j4UKvLZCkMAuQdaxepMBETQUJ1eNULJSh3ZWXC0f5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQp6j4UKvLZCkMAuQdaxepMBETQUJ1eNULJSh3ZWXC0f5Q@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in United States (US)
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Apr 20, 2022 at 08:56:38PM -0600, Dennis Bland wrote:
> With the 6 GHz band (U-NII-5, U-NII-6, U-NII-7, U-NII-8) in USA, the FCC
> introduces the concept of a fixed PSD (Power Spectral Density) for all
> supported 6 GHz channel widths for LPI (Low Power Indoor) environments.
> Wider channel widths have a higher noise floor, therefore specifying a
> fixed PSD allows wider channels to operate at a higher EIRP to maintain
> the same S/N ratio as smaller channel widths.
> 
> While the 6 GHz specification also allows a "Standard" power mode with
> higher EIRP and PSD limits, these devices are also required to employ
> AFC (Automatic Frequency Coordination) which normally requires GNSS.
> Currently there is no way to specify different EIRP and PSD levels for
> APC and non-APC devices.  Therefore, only LPI mode is considered here.
> 
> LPI requires non-client (AP) devices to have a maximum PSD of 5 dBm/MHz
> and a maximum EIRP of 30 dBm.  LPI requires client (STA) devices to have
> a maximum PSD of -1 dBm/MHz.  The maximum channel width is 320 MHz.
> 
> The following equation is used to calculate the EIRP from the PSD and
> channel width:
> 
> EIRP = PSD + 10*log(channel width in MHz)
> 
> Using the maximum PSD values of 5 and -1 for APs and STAs respectively,
> the EIRP in dBm for a given channel width can be calculated:
> 
> Channel Width (MHz)     AP            STA
> ------------------------------------------------
> 20                      18            12
> 40                      21            15
> 80                      24            18
> 160                     27            21
> 320                     31 (max 30)   25 (max 24)
> 
> For channel widths up to 160 MHz, the maximum PSD is the limiting factor.
> For the 320 MHz channel width, the maximum EIRP is the limiting factor.
> 
> Unfortunately, because there is currently no mechanism to specify
> different power levels for AP and STA modes, and for different channel
> widths, the smallest value has to be selected, which is 12 dBm.  This
> will likely cause connectivity problems with larger channel widths until
> these additional parameters can be added.
> 
> 6 GHz operation on oil platforms, vehicles, boats, trains, and drones is
> prohibited except on commercial aircraft above 10,000 feet altitude.
> An IR (Initiate Radiation) restriction is mentioned in the 6 GHz
> specification.
> 
> signed-off-by: Dennis Bland <dennis@dbperformance.com>

Applied, with the same notes as with the other patch. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

