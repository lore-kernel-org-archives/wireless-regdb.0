Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=7/YKF4GgWk17Fil6qeq7dsYMn90OQzosisPeLYuOCkQ=;
 b=zhAY3pDOWMLApJ
 0pvhftOQxFHOKM44c0ke9fzrEfrb3YLhpyS31BULX0tGQ07WM5jZ9wl710al4C3r/C6Vn9tSwpEz8
 K4N2bmGB0YHtNlrK3Nh2xhb9nsnV0Zpc96dwLvKhR2urk58OjLtlN8zSZRG95DBXhWHTrX3rAYn6P
 eN3vkMFQ+DG5J6Rvj7RdPhbToKZl3ET3oLyTtqQoqdkRC6X/QNzEZHosCVSJR7BphCn5Khy6+JSn0
 qvtrwbZVA/GbJen4/HS9anxmD0ceSW+1LJJEZEeCM5vDkuavJAUPbW+2LBHxKvPb7dcHnEMz7Uxqw
 OHekYqTNNLBYbXux2Bzg==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxvbS-0067Ai-0H
	for wireless-regdb@lists.infradead.org;
	Tue, 31 Oct 2023 20:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698785083;
	bh=/FlQVzk+2p9U5lIDiQ8LPfxUXiO0yI8HaQK+bbMeYDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BoOx+Sht6lVVc+0/17jdLeJhCPWLpYRf5Mgphv0MvSI1lE63vmNo7MQk7JmVj9lkk
	 b7EODG+yfn87xbGbGj6t3d1OvtAZZms1+fV9oaQxpVVD5Mv1gTbXggSIfSwWd34J7w
	 zSbCyoLXtEqzLBm+S1ZIckbH1iE7bK04zLetNR5nNfzRkxhzLTTXA+sQ0CPRcMBOqY
	 n5BMeS8mITgsefhk0Qn8xsVcBwdm3EW4IfjfH5jSRM9uBktHinDzM+mtVdfi23Sf+X
	 U9fI+h2TjDTdHEBN/ITjl9x9MtTHGut0XUIGrq+b0IUV30X3MkqrBPHcW+EX5ssSSi
	 YWdD3QUTotuoA==
Date: Tue, 31 Oct 2023 15:44:41 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZUFnOZ5KstXnNoIm@do-x1extreme>
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
 <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
 <ZUAUahZakEvOXpip@do-x1extreme>
 <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
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
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 31, 2023 at 05:32:15PM +0800, Chen-Yu Tsai wrote:
> One thing I forgot to ask. After a release is tagged, is there some
> magic bot that produces a tarball and uploads it to kernel.org? Or
> is that a manual process?

Releases tarballs are produced using kup [1]. It's not quite automatic,
but with some simple scripting it's pretty close.

[1] https://korg.docs.kernel.org/kup.html

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

