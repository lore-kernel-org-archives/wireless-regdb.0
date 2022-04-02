Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WhD4Asi7TthDpO9GUw0GlwBGp63ZbJreTAuHzSrjn2Y=;
 b=wCSu9z+7AuxZMl
 y01QHM9xZX5yGuYMrVgyC9hMNPZXAiHj4/CfWMrqhxYMtiM1D2m+i6Nrh7LnUv9uI+s5mpYLtsjen
 V9qow2EtV+CNakWZyWZVFPRHRMSX8seewO9YWpxk/m9MmP46KYRY515DIOu9EfGJ1GmASKC/qT49s
 KV1dAPoz2jqwNUfeuvBS92QTmRan/NOoVYusptzQp/SwJ1tum1eh3ng8rn0xHBiluIsH5mz6OnIs5
 nRcL8oU9AzOKK84iMxVXQLmgRdOffFOca2Vqpoaqf82PbGJ3+XHsCdPvRwbsdtbIunu3iG78ySaTf
 UWqa+nFh1/OCxWZz8hWQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naiwd-009ozJ-Vq
 for wireless-regdb@lists.infradead.org; Sat, 02 Apr 2022 18:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648925872;
 bh=Edwzk91aSR6soNm7mbNhpZNF9A4whqNTasdWlpuLCn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bj5YJkIWrwG9k2/TqUS+nxux9PMEIKwuQa5Ybchnlk5zRNbFytUgeA+es9rYhXh8i
 ypZ+Hc13nNDSNoG9T7iy8PEy1CyeyVphGfVDExkouG+ArReOIeBKVGN0KYSfla82F9
 4y9kLpFq7xmufxa4+Gpx7in+27cyvO2pcJlfC3c7uqq7/dIJvbrWUVJ++HNT3ZZ0zC
 E58LPTJDBit9WsL+lD0qSL9r99fhOUYDBGAEe8Gk2sYqOc3/NSP1G5hCzAakI5fzzz
 VwWSh7mRtS7JuKcdGwfSJkTRqHGsYadbqJ94BLH1ki+Z0hjFLRDdozUm+kYahu5ypA
 p6JUrzmEb8mBQ==
Date: Sat, 2 Apr 2022 13:57:51 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Ykicr3kUFXnIMcXt@ubuntu-x1>
References: <20220401031116.2195-1-voxlympha@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401031116.2195-1-voxlympha@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for Australia (AU)
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
To: Richard Huynh <voxlympha@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 01, 2022 at 02:11:16PM +1100, Richard Huynh wrote:
> Changes allowing lower portion of WiFi 6E spectrum. (5925-6425)
> 
> Amendment: https://www.legislation.gov.au/Details/F2022L00249
> Full text: https://www.legislation.gov.au/Details/F2022C00281
> 
> Allows for both 250mW EIRP indoors or 25mW outdoors.
> However, only the former limit is defined in this commit.
> 
> Signed-off-by: Richard Huynh <voxlympha@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

