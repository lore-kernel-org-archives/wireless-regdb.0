Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
 List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date
 :From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=V7j9g03YllOOxtmJpsbF7pQeFr4FsZeYAytUoQvmarM=;
 b=cZwTNwnGhTTkBU
 XWnFJB4J3Vf2mHUB+rp+Jnqt/iG1qL7zBpcY1QiO9dAlB3fDKzrYrVRcMhziXIAewfWbx94FqwzQr
 qK2UHQT6c5Esji61MNzlvAXtMPdjUCQmwNNDWzxFh6ZDrf8prIl/DdT+Wo6br8HUqygZq/M8A49rK
 kNgQH041dv4r+tRxvk5Mh8ERPLmw8E6KiyfcQACPLt1PFZHGpE/GJ0cyvpVCjAVsKvRDomHKRVo8F
 XuYJxErcg2EFQ+bTzVm86pteMy4YY047cS4lYv2hAjcFOHzQMeeIaofnNbi/d7AfR56FtpSFJfN1B
 gdWjf/00xzybD1xQgUDA==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvApM-008ykY-0a
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Oct 2023 06:23:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by ams.source.kernel.org (Postfix) with ESMTP id
 82951B8210E for <wireless-regdb@lists.infradead.org>; Tue, 24 Oct 2023
 06:23:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC878C433C9 for
 <wireless-regdb@lists.infradead.org>; Tue, 24 Oct 2023 06:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698128617;
	bh=lb8PcZAj9HDSGOv4bV1UcMMj2pMBE+0lqDt8MZp4ERI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=M2uax59eEm84/YsEmxWrFbHtxfC3ogO+Ahn4QtDgtFogcM+4FRamUE0tB8LKUK3Yo
	 e5kGRIBIHToFD6e4ZypvlVaFtQLG1iR4mb+B5lgGobWOG7yGInJqt54CySqyIQymEj
	 q8bs6g97oKhp5nfv3cUvMOF5kV+ulqhsm4a1J3/LycJgb4P5rH/mHG3noFXuzmkyyS
	 7Kgin15ZfALfTNDqJ1Yd5jogA9tDj5+RDws/9JUgGo/SPkk8A1iCbUNhVlpcGQtb51
	 zUXf3fvtLMynOx5d1b0jevbOEAQnBV3uo+L8KBzG2NSOHfLW79b8yUao2o55c9Qji3
	 Mg5hF+fO8hYHg==
Received: by mail-pg1-f173.google.com with SMTP id
 41be03b00d2f7-5aa7172bafdso2419725a12.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 23 Oct 2023 23:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
In-Reply-To: <ZPJF1/2YA4dP+ggY@ubuntu-x1>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 24 Oct 2023 14:23:26 +0800
Message-ID: <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth,

On Sat, Sep 2, 2023 at 4:13 AM Seth Forshee <sforshee@kernel.org> wrote:
>
> A new release of wireless-regdb (master-2023-09-01) is available at:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2023.09.01.tar.xz
>
> The short log of changes since the master-2022-05-03 release is below.
>
> As previously announced, I am stepping down as the maintainer of
> wireless-regdb effective today. This is the last release I plan to do,
> and currently there is no new maintainer for the project.

I'd like to take up maintainership.

As far as I know, I would need to:

1. Make a clone of the repository on git.kernel.org under my own namespace.
2. Generate a key pair and certificate
3. Put the certificate into the kernel tree
4. Update the docs to point to the new repository and certificate
5. Review incoming patches and apply them
6. Tag releases timely

I'm not sure if I missed anything.


Thanks
ChenYu

> Thanks,
> Seth
>
> ---
>
> Adam Nielsen (1):
>       wireless-regdb: Update regulatory rules for Australia (AU) for June 2023
>
> Seth Forshee (3):
>       wireless-regdb: Update regulatory rules for Egypt (EG) from March 2022 guidelines
>       wireless-regdb: Update regulatory info for Türkiye (TR)
>       wireless-regdb: update regulatory database based on preceding changes
>
> kleo (1):
>       wireless-regdb: Update regulatory rules for Philippines (PH)
>
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
