Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=rac+PW/pXMJTB1l1pJXeER4o0PPKdJWGMs5oX5BOw+Y=;
 b=lw9Dv9NBFtd2kl
 7G4jR27GQo00pZYzZ759fK1uZtaf7WXRashiIehKM0UEx/eZgPT6aU+9NAQb2WFWtO+3w3UAJzrzX
 GgSq8UqJ1eyVH+weTAZVqtWn5hyg+tjvaj9COdl2+kaCXQiDreEGUdhfyO8/8LDkZHZIlMWS95xPB
 wVyuNyXS1fqMFviXUIfvZ6gOXE1umQtYLb2i3byRjAeEWBqct7tOBXzcW4QckgxuqFEewEsH93dRv
 uvLgwUMEDHD7OulqJCdtBqAauBwM8upJ9LLxZFtqzi1KbHUXln8sJXG7ofNoaEfKuHWEz4J12L6Hd
 sBOIpd7vZHknZ7SiTAxQ==;
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqgZ-000Jgf-QR
 for wireless-regdb@lists.infradead.org; Fri, 08 Apr 2022 15:38:09 +0000
Received: by mail-yb1-xb34.google.com with SMTP id j2so15862236ybu.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 08 Apr 2022 08:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=pRZP4YuVf8nfQvAojwDODu/WwKECZnmLLgEwLOGqi9U=;
 b=hx8e1jjX3Go+EleuSDGWBFew3FnIHfJSr5p9DHtLsxj/5bblruGizTCzmbcFUGAYuE
 ys+ag9ZVjdmkLIrmQyvkuuat9zawIrzp78oyY+gjNYRMYtBdF3lqxqIUDbuVceMJiKBv
 JWa5AXvFcHQ03fwIcihojL0+1ghhvVWIKnXWZb75C3WnNH3OndBhsorzkdOk2N/ebmdS
 7AK/qiCN+vDrOFm1rsqBBFAbD1kfAc8wxNtEySG9j7DW0nvG+3J9GcaEofBuCI3TNIOD
 7Ms0ZPLDFRW7+528fr6nr9DvTs+5QxNxBDc90Ge58ZDVhOFCFqy+eiZE+Pckr+sFa0FM dhqw==
MIME-Version: 1.0
References: <YlBLWuf0eKyS1HL0@ubuntu-x1>
In-Reply-To: <YlBLWuf0eKyS1HL0@ubuntu-x1>
From: Sid Hayn <sidhayn@gmail.com>
Date: Fri, 8 Apr 2022 11:37:54 -0400
Message-ID: <CAM0KTbBCeyx8TGkGcNkjJ7TYjtr6zeFY2=1TWwbzd5d3xHdZXg@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2022-04-08
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Are "regulatory.db" and "regulatory.db.p7s" missing from this release
on accident or no longer required?

I package wireless-regdb for gentoo but I honestly haven't been
following development much more closely than just bumping for
releases.  For the recent releases I've been installing regulatory.bin
in /usr/lib/crda and regulatory.db and regulatory.db.p7s in
/lib/firmware

Thanks,
Zero_Chaos

On Fri, Apr 8, 2022 at 10:49 AM Seth Forshee <sforshee@kernel.org> wrote:
>
> A new release of wireless-regdb (master-2022-04-08) is available at:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.04.08.tar.xz
>
> The short log of changes since the master-2022-02-18 release is below.
>
> Thanks,
> Seth
>
> ---
>
> Richard Huynh (1):
>       wireless-regdb: Update regulatory rules for Australia (AU)
>
> Roman Kunzman (1):
>       wireless-regdb: Update regulatory rules for Israel (IL)
>
> Seth Forshee (2):
>       wireless-regdb: add missing spaces for US S1G rules
>       wireless-regdb: update regulatory database based on preceding changes
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

