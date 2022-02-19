Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=HNEpIXrjGASRizcfXrBJTtFP4NnyvSK1VzjqqqC9Gyw=;
 b=PqJB32VSvc2GV0
 F7NeyPZ1ZIaX6OrR+WjDwGJCJdeRLBQFvzt4oOpj+lnxT4rz3W/mFIgy2e56yYUtNswQhqAZwvFbP
 ak1yFVDsxtlul8HbkjTwVEomGnBPCQX4BA8PHVc4A09a9S8iMB6ebIiHrXInw1J5S9h4SEHYd04yY
 WO1lFIBkojsPAJLcpv9dY7/Kcun8C6L8cY2IHn4E5UkhfGg05OWhZRv8aj/1pNwq4xqs3+D9p4pIV
 oTXVRzD7TDk7S5T6XKP5nAbi6F+9XjF7nzCiZUNjf/at+A52rn/EGdpFipuYk83qAnZJ08gw1M/EQ
 IT1frqHMdpcBgZv333zg==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLDrb-00G08A-27
 for wireless-regdb@lists.infradead.org; Sat, 19 Feb 2022 00:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645231475;
 bh=Z+FyuWB/Hi8Du+Y7wwP5DHk5d+UTM5uPYehp9iCnKhM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sda4UwnFMIQ/lHc/b8S+mAJ6YEfRZxIq9bqQC2Adr9Ky4ztvU5WbYf0mnw1VduFjx
 ypQewcm5G5xHIA6YizeKEwyS3BcbBn3KqRhahzqmuWs3pTaXcSnWFj6PZs93AvTaqh
 H/LtEHNxOE0riSo9sx8B9Kq3Da5yiVvXv98vjLEzzkzsNJrE95Bgnc1g0bOUT35K3m
 ddkv6b6t4iZXKS8nv8DRHgwBQO2ixD+ulsZh3OcJEZTX+nPB/GqOr803LMLEWBs9xV
 43awbfCPtp9EmVbS+wCWUZvsPn3kp3KZvoe1zBZLvIaUGsCevrtCDS1zswfMfE0RKi
 67Ok5xQ6KoUMw==
Date: Fri, 18 Feb 2022 18:44:34 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YhA9ckY5bXUAJjc8@ubuntu-x1>
References: <f05ace72-4ac3-4035-1cff-0ae12ebbf995@baanhofman.nl>
 <YgfdaR+/fxM/+1Im@ubuntu-x1>
 <701919cc-6ea6-1778-0a48-c24f7bdcab82@baanhofman.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <701919cc-6ea6-1778-0a48-c24f7bdcab82@baanhofman.nl>
Subject: Re: [wireless-regdb] [PATCH][v2] wireless-regdb: Update for the
 Netherlands
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
To: Wilco Baan Hofman <wilco@baanhofman.nl>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Feb 14, 2022 at 10:27:35AM +0100, Wilco Baan Hofman wrote:
> 
> On 12/02/2022 17:16, Seth Forshee wrote:
> > On Thu, Feb 03, 2022 at 11:30:36AM +0100, Wilco Baan Hofman wrote:
> > > Hi all,
> > > 
> > > I noticed the regulatory DB entry for the Netherlands has not been updated
> > > to match the rest of ETSI, despite the government opening up this spectrum
> > > in december 2021.
> > > 
> > > I have attached a patch, based on the announcement and law in the
> > > Netherlands.
> > > 
> > > NL official announcement:
> > > https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
> > > NL effective law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
> > > 
> > > Unfortunately only Dutch, but it matches 2021/1067/EU. (Indoor, 23dBm, only
> > > lower part of 6GHz)
> > Thanks for the patch! The content looks good. The indentation on the
> > description is a bit weird, but I can fix that up. In the future please
> > use 'git format-patch' as this should format the patch correctly for
> > application.
> > 
> > One thing I do need from you is a Signed-off-by tag. Please have a look
> > at the CONTRIBUTING file in the wireless-regdb source, and if you are in
> > agreement respond with your Signed-off-by tag.
> 
> Sorry for the indent weirdness, apparently it's an artificact of copying a
> template from a git log (indented).

No problem.

> I did actually use git format-patch. I have amended the last commit to
> include the Signed-off-by tag.
> 
> I have now attached v2.

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

