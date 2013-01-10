Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-bk0-f44.google.com ([209.85.214.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtNc6-0000Ib-6l
 for wireless-regdb@lists.infradead.org; Thu, 10 Jan 2013 19:16:31 +0000
Received: by mail-bk0-f44.google.com with SMTP id w11so525701bku.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 10 Jan 2013 11:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:message-id:date:from:user-agent:mime-version:to:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=SQITn7Nszvk/upjdojz6eQHXOgbnHuaoPrOhFNjEWGE=;
 b=cXoH7dw9NH2XMgied77wTnhWWkSYLqJSiTZKHw0OTZ3ZlKiUoV0Wf7KJGXc6iPjaSG
 Ir4t+/Bw0MpN72G4judRQnFeMbFJ1D+G89hCWJs+sGa6izkruB/11KnECN4nq/qo4bzh
 TbwQP8+oGcyO+HHuZZ/Nd9nn69piStIBGrsC57I5pdKLqAqCaAaA5bxYScXSkiwxKpSf
 USZM+er6uGTxF++0LYSvjwRMvQ0trBuXhQSksbxnapHBh4/KCBCVLuVQ7u7rrE/d4hc2
 eSC+XUcZ9eKtDZ8agFpW0BfuwZaZ8SRLERiRYg07rs07UYdJsxS28KSlIxrORxXZjAyl hYEg==
Message-ID: <50EF1387.4080504@gmail.com>
Date: Thu, 10 Jan 2013 20:16:23 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <5452866.tG58b6Y9lW@lx-vladimir>
 <CAB=NE6WwW2jqieVi57Jecx_QHT7+h7yvQbk893CRjLC=sNED1g@mail.gmail.com>
In-Reply-To: <CAB=NE6WwW2jqieVi57Jecx_QHT7+h7yvQbk893CRjLC=sNED1g@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: fix compilation with libnl-3.0
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 12/12/2012 12:26 AM, Luis R. Rodriguez wrote:

> On Mon, Dec 10, 2012 at 7:58 AM, Vladimir Kondratiev
> <qca_vkondrat at qca.qualcomm.com> wrote:

>> From 97f1b27e02740ce6bb83c548de0c0a7fbe9b648f Mon Sep 17 00:00:00 2001
>> From: Vladimir Kondratiev <qca_vkondrat at qca.qualcomm.com>
>> Date: Mon, 10 Dec 2012 17:54:29 +0200
>> Subject: [PATCH] crda: fix compilation with libnl-3.0
>>
>> On the distributives that use libnl v.3, libnl-genl named
>> libnl-genl-3.
>>
>> Checked for both rpm based distros and Ubuntu.
>>
>> Signed-off-by: Vladimir Kondratiev <qca_vkondrat at qca.qualcomm.com>
>> ---
>>  Makefile |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 084d8e5..f5bd130 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -51,7 +51,7 @@ NL3FOUND := $(shell pkg-config --atleast-version=3 libnl-3.0 && echo Y)
>>
>>  ifeq ($(NL3FOUND),Y)
>>  CFLAGS += -DCONFIG_LIBNL30
>> -NLLIBS += -lnl-genl
>> +NLLIBS += -lnl-genl-3
>>  NLLIBNAME = libnl-3.0
>>  else

> Thanks but see upstream commit f2a073df, this added this:
> 
> +NLLIBS += $(shell pkg-config --libs libnl-genl-3.2)
> 
> But I never made a new release with that so I just tag'd v1.1.3 to
> kick out a new release. If the wireless.kernel.org tarball generation
> cronjob is still alive it will make a new tarball tomorrow sometime
> with this release.


There is *NO* 1.1.3 tarball of crda at:
http://wireless.kernel.org/download/crda/

Also, latest(2011.04.28) wireless-regdb is outdated compared to
the git tree: http://wireless.kernel.org/download/wireless-regdb/

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

