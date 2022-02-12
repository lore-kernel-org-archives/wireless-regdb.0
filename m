Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=qIVU58Ml2u5F4Vj1HuJcINCC0q5wNRGEIQqn+R+UHnA=;
 b=xeDdkzznQ2oTRl
 qnmX6pktg8UiH0YDFsFd/nvHrWUBAKBlPkxXWaf/71dcr2rT3zOLXP2cDedXLmpYMdlQIQ2rBtYle
 EXmRpJHWAWfYxi9Tfl4gUKCroyPW0TQEBaOXUKQaXV43Xcl3Phy0MZT+d0hNYFz1pLhqYk46OJq4W
 g1eXGjkw8rjDUZV5Eev7e+2FWCnXmIY7HFe3Lrt4PZ806QaRnfdBxEQC++R43OO+/unA4OUq1eUy2
 qp7C5P7o4rwXEj0qp85LTzvz5/j92JLwpiTLY78VIi55Q8EgARrwV4AAMIUsH+vNRhztSCzl5PzUf
 sirNonu7hQS3Oit3l6nQ==;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvCQ-00A9kc-Ox
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 16:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 cc:cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; bh=NsKDjV7yozdIGo
 WYo6g6G5GVC/MAQKOf51OAj0cQcmI=; b=Visc1SxAlBGB4f3os2QUzaCgJ70doq
 yUWw4+myr59UX1/zPAzgZmPwuM7ccBBbP6x+ZjBoFz+cC0LAb3Aw0FDQ6d2fpzhH
 DrU1/qdoDww1+1pKG2R9rjsfVSEAD4gqZNEEjr098CBASq2heU4Y8jH0PheeIFck
 xdqAO3FGkce+vb5FbSLB/wd4xZMSNMzqULtTfI5Z/IO5dnA3u/SrlNgYC7mWng3i
 gfeNbN/RZc+wwUNL9yxpVIj4rUGOD0tv8RloEMWqvLiut4Fkprly0as1vupSuz3M
 c0JvOLGvIYIdH/oWJH98ix4EmB30KmUPQ5iS+CtOWMlgqXNfPh7zP3YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=NsKDjV7yozdIGoWYo6g6G5GVC/MAQKOf51OAj0cQc
 mI=; b=gMjAflY6L/xENzj3fAxhcDweV8V8X8erLI61x62h8UkcQ1t7Meyt+80qq
 PWe+Ip/ABLJDgf5H+wXZ3MgkUvY+J2qF4agoRO4asK2do/84ao4MPJ5lOMI07d3E
 Ec5e4Y3dm/mxCVzJ5cOmu2V4IxwQ3bXQcqxk/ooRO9RjdVPIdjlZF9pjlHSUuuuL
 P/Uapo4ok1VOfwhXcyHMdqXxXxrm8CZYP5fMPGq5lGuB0MTt6ByA+g08HSJxnZZH
 lWoCwEEJN1el1BZrPuDPMiJH21GkMWGV3AM8lsock6CXdD/9w2Pr5VkV8z6vXXin
 2LLa6Ta7VyXZmAVPxytyTj7Ifrdug==
Message-ID: <52607f0a-05ad-f4d2-6fb4-117f447f06cc@flygoat.com>
Date: Sat, 12 Feb 2022 16:24:32 +0000
MIME-Version: 1.0
References: <9a460b85-4e1b-40b2-8691-3f999331c76b@www.fastmail.com>
 <YgfWuV8E+xHZGeqh@ubuntu-x1>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
In-Reply-To: <YgfWuV8E+xHZGeqh@ubuntu-x1>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for China (CN)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>



在 2022/2/12 15:48, Seth Forshee 写道:
> On Fri, Feb 04, 2022 at 03:19:29PM +0000, Jiaxun Yang wrote:
>> China had updated regulations on ISM frequencies by
>> "工信部无〔2021〕129号".
>>
>> The new regulation effectives from Jan 1 2022.
>>
>> Update regdb accroading to it's attachment "2400MHz、5100MHz
>> 和 5800MHz 频段无线电发射设备射频技术要求".
>>
>> Announcement: https://wap.miit.gov.cn/zwgk/zcwj/wjfb/tz/art/2021/art_e4ae71252eab42928daf0ea620976e4e.html
>> Attachment: https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
>>
>> Those documents are only available in Chinese.
>>
>> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Thanks for the patch. I'm looking at a machine translation of the
> document, and based on that I think one change needs to be made, see
> below. If something was mistranslated or if I misunderstood, please let
> me know.
Thanks for pointing.

I asked a RF expert and he adviced you're right :-)

v2 is on the way.

Thanks.

- Jiaxun

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
