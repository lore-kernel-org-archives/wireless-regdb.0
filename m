Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=PNxAHIgQPEbFnlx5aDbrepbos6+Mx45so/KMWcE+OE4=;
 b=2rAVWocWiJRtUj
 tD/EOt+0kR4ffhwEdTi0POKxf0qHn8bAMKLgm5CX5FMZTs3o6bfUo6o4JejIYQRyHLGvE2xtvXMlq
 vLPyMkx0sL2t+mKyXO5SPGkLx0N2A24efB6zH1McnnW1MARY1w5dwG/AB62LsJiDjsM8jSXn8b6eD
 3roN7BLm7xU37aRi6CsvICkhMVpCPOghbl1QUae6nF/vC47jbJqHHrf2N2K/LQpJILm1PNGT8VIW9
 f+b0k1XQzP5i//o7eZ71pSCzgpQ1ONXGWjqZeOe+b4Han8NijvgW5fPCBSVPjj+BGFaxbcwBxubtg
 qT8/TNXFj4vAf6v0KI0A==;
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na7C2-004J8D-9N
 for wireless-regdb@lists.infradead.org; Fri, 01 Apr 2022 02:39:21 +0000
Received: by mail-oi1-x229.google.com with SMTP id e4so1520257oif.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 31 Mar 2022 19:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BjTHLhmpYCYQ0PpoBjmla79tTLcmiaAbrm5pPyI7YWI=;
 b=SIc+vhlOh5ttYc/ya6FB5DzsAfi6SYDUsbVbixAlfe4jzYCYfa/3ygswSRyHX8641r
 FfqYLVHK3BQ+mr9I33NY/aSjEtc86mIEIFpc86bKE/SEiFM6dw+kp1Z1g4uUwUI+gSwo
 tvOso8LxS4/5hrCzyUFmMKNSbSofwGI0dd/652XS796UWUMa/CJPZ8IHhyGgwZrDWd4W
 JeogF2Y02Lpyq86e8/Eo3yq+vxq3Irncw+z5QdeJt1SWD6MaSYsPE9muTDq7mwOsFzkr
 TXz5MQMW+pRBqTW5C/i4uJBoP7rRSqg90UTM2FIuN0b1yZj47+gXeHTJc+56f7MODWig EaEA==
Date: Thu, 31 Mar 2022 21:39:14 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <YkZl0gw40Htwpu5t@ubuntu-x1>
References: <20220323194134.169332-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220323194134.169332-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add missing spaces
 for US S1G rules
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Mar 23, 2022 at 02:41:34PM -0500, Seth Forshee wrote:
> The rules lack spaces in the frequency range definition, which works
> find for building the database but causes problems for some external
> parsers. Add the missing spaces.
> 
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

