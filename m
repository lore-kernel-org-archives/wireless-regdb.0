Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=rcfiC+DVXwj7deaMacXvz9hhx4hfQ66I2UY01MQXhDE=;
 b=hixN7aE6jQM+NP
 7vHipFYG8lxOYRdKRevQgNYaSGKzv0Ouf39RfmGNZRUJCrTB1CJ6B/YBpUHvfT2X5Hu7mI9gmidCA
 /B5LiYkONc384Ml5w+P5O21Hu+QDLDjAWxN0VPKhNdaQYERzRO0NxY5Jn6ojm8OqlBPFRDWxrQpga
 DrhSrmeYdFsn9QgvNorNcuZEP0HluPvoz8yK5NeGjhspYMDYriZjzjLWSo/MOt7EtbdHFrHdnHwtZ
 BS9b8Fu3u/Dbb0HrtH2SRXyEFgmZ3KxMx7C2No5XZiIJsJus+/9dJWXEFi54IHj3YAnnAZSeY2cZb
 gBYGKsTe0Vh5U9586+5g==;
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIdIc-0006Hv-Qh
 for wireless-regdb@lists.infradead.org; Mon, 22 Apr 2019 18:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SvTKgEK92BC1q1pkrS3ECBx/1pdFBy3+DQ4imjb6kpM=;
 b=bR85LHdTPCELpei24BdO1JxuboeG/eSpnes4JL6bTeEmRMa8PSHz5j2aVZ+sa9FAsQiVfHaSjxjRi4yzugyM69QmtAnasBMN9yG2jdB9T9pzHmnVTQT320+bcPp62SxXg16vqwJEfNTAibKfwVhjfO4Ps6xiR5PcPJvycNxpEIo=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Mon, 22 Apr 2019 18:04:09 +0000
Message-ID: <af4d49d9-fc9e-ebe3-20ab-edef6c12a2eb@bowerswilkins.com>
References: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190408124159.GC15126@ubuntu-xps13>
In-Reply-To: <20190408124159.GC15126@ubuntu-xps13>
Content-Language: en-US
Content-ID: <62B8A4A83EEC9847BFF09AEF38E1DBEF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for South Korea
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>



On 04/08/2019 05:41 AM, Seth Forshee wrote:
> On Wed, Mar 27, 2019 at 06:34:29PM +0000, Peter Oh wrote:
>> From: Peter Oh <peter.oh@bowerswilkins.com>
>>
>> Update power limit as documented in:
>> https://www.rra.go.kr/FileDownSvl?file_type=LAWKR&file_parentseq=54&file_seq=27
>> which revised on November 30, 2016.
>>
>> Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
> I usually try to check the changes against the documents, but in this
> case I haven't been able to get any English tranlation for the document
> (or even view the contents it in any meaningful way). I don't suppose
> you know where to find an English version of the document?
Unfortunately there is no English version of the doc. Typically I use 
Google translation to understand foreign language, but in this case I 
contacted that department personally via phone call and directed to the 
doc by the responsible person from the department.

Thanks,
Peter
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

