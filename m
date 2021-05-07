Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:Message-Id:MIME-Version:Date:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=NQEF3+JEiJPy/E+DpJFKwh7PzPgtSnetIIpJ/KimkwM=;
 b=YyO7il6haJzc0lr89IFkt3rFmy
 hDs+4joBRnW5cfT1QrMh2eb/GUE7fTqSplSEydy1khE/+3txhKM1TkGn7bilLBPo7PbyYewySD9+9
 hXSuBQDZ9Ivwpy2xgHt5d6x+elBuNXeF8XQrRnC4bVLxmxcLXIjOIHI88kMi6XHEWF8SfE1tptJee
 0bQWfuH/9Xfx1rXNhbItUyiKrnG0PSaXw4wCn6r22LFaN/cLe9WsfAlD41Y7nNeX7OY0xfEZttv5C
 mpYfTEQh4Fh/lyhu8aO1ytHYJHLC/ZV6jbU4ce5BdJ4vzISAueEOtvDc9wuCHslJo0yXrynXlsOs+
 dhbgD7zw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=1gCss6vfCt9tMs4NbfVodO5Xn4oR063UFqnkt85Kibw=;
 b=xSAjplmY7fNb+yC3vg4gV/iNSy
 zyc0n9qMhwYtU5FF5XYth0vEVKZKm32oeT0xa21nEgMMv8HlycGQoC9/1KVrAzhKdlaC+QG4/4TnQ
 z1q8qneHxdQ8RY/dfCWjfKEqQZI8ZV2OnFp6txpPaeVa4dTIzYyIPuGkJCB3GQwoPEkd/6tuXcaXv
 rXBah0Ew810iBXYPshkEmETid66ckl0ig1FRQevfV2HwufxpWXb80WYgzXFJ1y34yC29Ps8M/flFO
 4O4Kjvvc/gDnu8GzB5xbkLF4Dx1dtuomrzVHFOGKRl7tT48dssrQ03M8xVML8wK5N0XRh/l7lvTY8
 +3+fmzuQ==;
Received: from shout01.mail.de ([2001:868:100:600::216])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyu4-006pKY-BC
 for wireless-regdb@lists.infradead.org; Fri, 07 May 2021 11:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.co.uk;
 s=mailcouk201708; t=1620387856;
 bh=1gCss6vfCt9tMs4NbfVodO5Xn4oR063UFqnkt85Kibw=;
 h=From:To:Cc:Subject:Date:From;
 b=f5ASkVNVQYE+JqOzulJH9GUwGfnRqSz7sP/nme2dPdTgrfyhW9gu8BZTWU8GzeqVU
 /0pmls5N5tYMhb0GY+418dx79V5AgGDFEIRVFeydaDcRWjTlnnmIZbRAgc9CoARtHq
 +HfPX1HEogljhZlpq52b4V5nwMFdpFFfJvE25Bzw=
From: mj888@mail.co.uk
Date: Fri, 07 May 2021 13:44:15 +0200
Content-Disposition: inline
MIME-Version: 1.0
Message-Id: <20210507114415.C850BA03D0@smtp03.mail.de>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Great Britian (GB) on 5GHz
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
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Thank you Seth, 
Still witing for reply from Ofcom but coincidentaly (or not) they have 
updated IR2030 last Friday (30 Apr 2021) . It does now contains 
changes I was refering to: 
DFS IS NOT LONGER REQUIRED ON 5.8GHZ 
(BAND C - 5725-5850 MHZ) for unlicenced indoor use. Please see 
https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf 
-------------------------------------------------------------------------------------------------
FreeMail powered by mail.co.uk

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

