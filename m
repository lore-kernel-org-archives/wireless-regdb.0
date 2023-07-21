Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=SgiQN/0AGdzjNqZpoWnKihk8Ow0sGNrd++swCafaPF8=;
 b=jutx6RoQwyt2E1
 doi/2hLB9ptqluaF78ST6zCCqxrZYsQywilDgxE5FO4MJ1xcRGAHoJy+N9Zv4JLh7CmhPLiVz8X0+
 3lN/t/2a18VNlNfms6ZdjRQzKAOgHpv9TioAIfNT5HDyGUj6HtpxUx8oTiWNyn0PBXQetjT0vhzWJ
 Y6VcehNQU8Yu0WaBJwNo+7He41v1IECkUWJAA50zoKVCVgTpaLbd2Q6ZqPnkL8ndEPPNvGXYcHX84
 xQNA7m533CgA/Ez+6xFkaNAFznp5wT3J0snreB1G4Cqggto3w5JuKGfsLacaRVm+F+KUOCHjY/LhH
 15kGxoYfeVJE9XfbcLnw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMxCE-00F6Vb-34
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jul 2023 20:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689973073;
	bh=Oe1OXOQKme1fZeZy58FAYuG4ahJcLSXfLJKSJoD8Cnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFkqimnJz+54PNp9gVNnwxX7Gand3YuRYpSfY+uW/oLKHPT3gP3kWqvNbYE7t2pz6
	 T455pswYwDriri4QN+l1dzVF0H8js/JJJ0VatS8FIvhknCXplZLU01Ms9Jij17w3kD
	 HaTAXosN/Ogi7e+yqa3cujnRwW+2hhcEpRip8Hz0brvQdtGtYty480Yd84TrYWn71I
	 FfgVOfYlkDN8fvVnZCxK79xKo7UefZ/490XSEu9EWdTGCCmgDbiCFhAZUJsMFFAlks
	 i+Q7eCs6yNCXZzL1loLD8jjG5Bhb3kJWFDfve/JW79ZToxa9JJwQ2wAh46L3llZ7rQ
	 m1OK2mNgHSB9w==
Date: Fri, 21 Jul 2023 15:57:52 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZLrxUL7il5s2YWsI@ubuntu-x1>
References: <20230713153228.241774-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230713153228.241774-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] 
 =?utf-8?q?=5BPATCH=5D_wireless-regdb=3A_Update_?=
 =?utf-8?q?regulatory_info_for_T=C3=BCrkiye_=28TR=29?=
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
Cc: Atahan Bostan <ooatahanturan@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 13, 2023 at 10:32:28AM -0500, Seth Forshee wrote:
> Based on [1], add support for 6GHz and make minor adjustments to other
> ranges.
> 
> [1] https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
> 
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

