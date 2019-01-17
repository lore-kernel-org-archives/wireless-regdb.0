Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ha0hAngVJ6Fj2PcbPM23k2jUpmRitkbvHfh6bmetyL0=;
 b=h5N6JchsNb0iAU
 F4TrLVFWOImA7rPjB1IlujkrU21P6P824cnIrdft+GwKojnqU/dCaWlg+yXuazMjgXVHLRerZcRBL
 SL0Ch4LegAATpcga1/KU60uE99zTc8uwxd+Cu5gxtss/r32IV3qG8061gum81kjnEInH3IMST87Pk
 wSfGRN7+1wtZ2LNqHQ9LCwJiYrSmDF5bkKMH/k8pPmsx2hH4qxYeHj10XJnrqklPX3DGa6Gk5Y/KP
 t2odxz7EV2b774PKzYT81n7AyAMOdMi33Hg68oHoCqT4Ulra9DqIkXbPsEkr4eU6B5ueK1vo759An
 mW3MNwAHIceshhXvE7ZQ==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkDdh-0008Hr-B4
 for wireless-regdb@lists.infradead.org; Thu, 17 Jan 2019 19:47:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id x6so8783575ioa.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 17 Jan 2019 11:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=v7m1XN4lBSJlpn7YEisuqCjSSW8k8tOPka9yLENqQ+I=;
 b=uOLRvkrr/0Imk8Cd8Q+QMSrc02jmxyjPaO9QNmJMpQN1YknBvarvYEB6VwQGRUUwIs
 Vc8f00N1a34W1ju3Khn6DFeQOwViMN67R1YhVYR6arGEKeR3wDGcp0lo88t5KggJnAYz
 tAekliJ2P22GJ4JgslBN2mGW1c9N1sbat486DUKHKgBG4JBujxqe8MXeyjiW5mRJb5UA
 q6JBpNGQZKisPvuJ112jkwNyqrLEHyBJcWS0BUho6eld2uabjWWvxG8g5ijmIi8zhRVH
 hLn/xoibFzi7WsZY2Ndp5GiDv2NRUltVt7M6TBVtzZp31lxUVb9RKSVUIHPuV+62IEDv Oq2A==
MIME-Version: 1.0
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
 <CABPxzYK+Tu678C=84i3+67gA1EBw_pG3cJ1y1ZvWZobU6iS8Dg@mail.gmail.com>
 <87lg3j6aly.fsf@purkki.adurom.net>
In-Reply-To: <87lg3j6aly.fsf@purkki.adurom.net>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Fri, 18 Jan 2019 01:17:31 +0530
Message-ID: <CABPxzYKHMUQyM+gi5-u-PVmD-viCxAaweeGUGWQ7jkjqG==amQ@mail.gmail.com>
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
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jan 17, 2019 at 12:20 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Krishna Chaitanya <chaitanya.mgit@gmail.com> writes:
>
> > On Tue, Dec 18, 2018 at 1:38 PM <chaitanya.mgit@gmail.com> wrote:
> >>
> >> From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
> >>
> >> Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> >> 57-64GHz band till 71GHz with almost same rules.
> >> ---
> >>  db.txt | 6 +++---
> >>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/db.txt b/db.txt
> >> index fa5c0e0..ae650dd 100644
> >> --- a/db.txt
> >> +++ b/db.txt
> >> @@ -1280,9 +1280,9 @@ country US: DFS-FCC
> >>         (5490 - 5730 @ 160), (23), DFS
> >>         (5735 - 5835 @ 80), (30)
> >>         # 60g band
> >> -       # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
> >> -       # channels 1,2,3, EIRP=40dBm(43dBm peak)
> >> -       (57240 - 63720 @ 2160), (40)
> >> +       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> >> +       # channels 1-6 EIRP=40dBm(43dBm peak)
> >> +       (57240 - 71000 @ 2160), (40)
> >>
> >>  country UY: DFS-FCC
> >>         (2402 - 2482 @ 40), (20)
> >>
> > Kalle/Seth,
> >
> > Any update on this? Patchwork shows its delegated to you(may be by default).
>
> Seth doesn't use patchwork so I just delegate regdb patches to myself
> and then mark them as 'Not Applicaple'.
>
Ah okay, Thanks. Will wait for Seth to comment on this.


-- 
Thanks,
Regards,
Chaitanya T K.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

