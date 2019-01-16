Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=GwQi6FAZ513YWL5HaMS6fPAVbiLb96NQq/xqFGz8Isk=;
 b=pHuZQRXPBEvWGQ
 BhYKea1lw5SUzQX4+3dUkaoqwwAd4Yv26vAjw5NxzhkjvBSoSzl5GFzuMMVZxjmxZYqtfPaDKyZjJ
 4nXH36jgSa32uGqKdWWFOqZy5o/r5lm6ag0Cd7Gi93jfyLw7gEj38COeshkPl4Krqm+e9qQGZhVVT
 6q5lEiz9FsLdXB/AoWtazDdeQCgbVlva9sY8cdT5OlDOLRJHWAoV0OLQ7/lP6o9bPNNv1GJNk1E3Z
 SayH5alNOMbrl5H4m7CaYzudeaEWL2SB6ZbuzZQHh/EYsZqifB0WSe2E1+KttzUxWGQ7jWcGwJR9k
 Da68UFNKKk+US3OZykKA==;
Received: from mail-it1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjgjG-000513-5i
 for wireless-regdb@lists.infradead.org; Wed, 16 Jan 2019 08:39:22 +0000
Received: by mail-it1-x133.google.com with SMTP id c9so1657365itj.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 16 Jan 2019 00:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=ungSskqan5pxhYrZZ5DVVjj7cGzoOE7GOim/KbYktlg=;
 b=tQ5bGcGryupKL7CRTGUoAMnsD60mGbmIn2QMGG3bPQgpQV7BHH4FqA7Eg30uWLtVWA
 M9YpwzZnMwEEibzu4jvhPBBclNqeRsKXWgGf28ql1XkA6rfqnI2qRVxYHwfsochsGgCW
 WkVaRtArSxhyJFsgkROQcfALN76v9O+mDXJ+6u1X5+Za5ia14zL7hS5JZEwcjCwL2jXw
 3i6uFQu6DxMJgnXdsy6otGqqoRnRu3lWkjTmoqQTWDSBRtxxE9Qc/m3Ow1jBoFvaF4yj
 AEw3cIta6etueMO3PTjViRa38IlIXT7s6lfe8U9YHrAP1wYW8eQ7MzoS9m+IwNzoPLAU aIeg==
MIME-Version: 1.0
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
In-Reply-To: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Wed, 16 Jan 2019 14:09:05 +0530
Message-ID: <CABPxzYK+Tu678C=84i3+67gA1EBw_pG3cJ1y1ZvWZobU6iS8Dg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 18, 2018 at 1:38 PM <chaitanya.mgit@gmail.com> wrote:
>
> From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
>
> Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> 57-64GHz band till 71GHz with almost same rules.
> ---
>  db.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index fa5c0e0..ae650dd 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1280,9 +1280,9 @@ country US: DFS-FCC
>         (5490 - 5730 @ 160), (23), DFS
>         (5735 - 5835 @ 80), (30)
>         # 60g band
> -       # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
> -       # channels 1,2,3, EIRP=40dBm(43dBm peak)
> -       (57240 - 63720 @ 2160), (40)
> +       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> +       # channels 1-6 EIRP=40dBm(43dBm peak)
> +       (57240 - 71000 @ 2160), (40)
>
>  country UY: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>
Kalle/Seth,

Any update on this? Patchwork shows its delegated to you(may be by default).

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

