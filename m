Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-f173.google.com ([209.85.217.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPpMd-0005gi-F9
 for wireless-regdb@lists.infradead.org; Wed, 10 Apr 2013 07:22:39 +0000
Received: by mail-lb0-f173.google.com with SMTP id w20so213375lbh.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 10 Apr 2013 00:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=dfYzb4geQqz/qHQODE1ZThJyQOES6f3iu+6mULgC+3c=;
 b=0Vzypfz9RDnnjF0ewU5orx7/Pq8D0DcI59G86z08NDyIFYF00Z+F1jltGoRL+izMjO
 +EWRFUaSWb4NvTLiraSbl0obo+OCvhapgIHbFgfT19JABzYil6ngyWxvXWu8YxDxIGhS
 1Z3/wtEVdUg8RCX+nj8e1iU1WXGufzjLIcb77X54g06Ym3kdJX15YWp+7KvVmTRHBxzf
 wAkZvoQcZIvu84ddg0kq6JEHbtmFR/OTTFze+euX+vwwJw7PDm4AeMu8WIcurJv1Bywo
 h7xHAY2fhotuLuJfXCRUjsQmBA6zcrnJEKKoKwQA9pFxXjlXJv8UMCoP1A6coxWLBwFy uhCQ==
MIME-Version: 1.0
In-Reply-To: <237CF5B631AA3446BAC55A2F73815CEB07DFE41B@NASANEXD02D.na.qualcomm.com>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
 <1365486778-2336-3-git-send-email-mcgrof@do-not-panic.com>
 <1365490278.8465.1.camel@jlt4.sipsolutions.net>
 <CAB=NE6XjS7647FADXs7g9P4GmZPpdZmH1A9tNyY9u1_6QHX9og@mail.gmail.com>
 <237CF5B631AA3446BAC55A2F73815CEB07DFE41B@NASANEXD02D.na.qualcomm.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 10 Apr 2013 00:22:15 -0700
Message-ID: <CAB=NE6X9RqZ8p=L3h2dYr1J4ZUw7=GXkYy6wk58nCUf1JM8CSw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 2/3] wireless-regdb: enable VHT80 when
 world roaming
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
To: "Green, Michael" <green@qca.qualcomm.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Kandala, Srinivas" <kandala@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, qca_vkondrat <qca_vkondrat@qca.qualcomm.com>, Johannes Berg <johannes@sipsolutions.net>, "Wang, Yunsen" <yunsenw@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Apr 9, 2013 at 6:54 AM, Green, Michael <green@qca.qualcomm.com> wrote:
> If this discussion is about Japan, then yes, VHT160 on the allowed channels for Japan, can be enabled now.

Oh neat, well this is good to know! I sent a patch.

> Or is the question about enabling VHT80 & VHT160 in world mode(s) using passive scanning?

The question was about that.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

