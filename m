Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:CC
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=m1frn5RRXKc0etPXDlw3iVWjgw5UDw58kPnIBTwdmFo=;
 b=TPEy5xZ2XHo7bO
 3GBoLPiorWBIyTkkCfMPBI5advpADdg7GJP8jbnvWrCU7LS0bkzz9Iq0ZpveX5FmQo3Z+PeVSDg91
 vdA/wbWEXE2NRfBCT7Lo89JAcGtYhq/zUA4H4y5s6QKcEcKyP7hWH3TWdPAiPCJOMevNTV1R8LayM
 bNUnv+QfEVEhATOhQbbQiKOA1yvij3OOaOw2CzXuNWw+E+JKdvEE6iPT3CbQlrPlXt+TvFVO35SW5
 UUWfbxBsCfA6FNECy/x3iQQNuvWt7gXOV4OikyLty0F4RHkZVTzsyW/sqvk1PwWPwNvlP/bYq1P1/
 GwpBQJuwXjsmF6NgDRKA==;
Received: from mail-dm6nam12acsn20804.outbound.protection.outlook.com
 ([2a01:111:f400:fe59::804]
 helo=NAM12-DM6-obe.outbound.protection.outlook.com) by
 bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux)) id
 1piLO3-008m9U-26 for wireless-regdb@lists.infradead.org; Fri, 31 Mar 2023
 20:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmgbpVOYDIWq2k46S6464MM01ZMoSO9YhbHFQpP6eXc=;
 b=kMT+cKdi0iIFxZmMn0pWv1UCl6YFZTA7a21zIOXDbI8632ncas7ESnXRwr+PBBQW2HurIMJqYXCzlYwjs3qLZjuEtqJu7F0+FE92+5e/xzGs4290t2IXjMnrc6kfUZxW9YqgIFnJQORuSqfhOkGGHA+t3Ftz67zkN+gc+mN63YVIbuGdF3aFBt7xCSII3h3wVCQ7VT10ga1NUKuLcE9KW4qU7JfE3Ffn8AZxlMbyKXWit7vBTzOzP0Qd/ZTucIhiHhj0XQTtxvch6GDtgRcfFVpMlL8A+D6JEEUaQEKe7JlCia3HVEylGvszWV+R6Md5bXTKZYszjmn76QxBBm8nRA==
From: Eric Sellman <GAK_ACTION@live.com>
Date: Fri, 31 Mar 2023 20:30:09 +0000
Message-ID: <SJ0PR22MB249552E61991E3B2FAC911978F8F9@SJ0PR22MB2495.namprd22.prod.outlook.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for USA
 on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: "sforshee@kernel.org" <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

First, I would like to state that I live in the USA And that this is my fir=
st time submitting a correction to the wireless-regdb.

According to this list here >>=A0https://git.kernel.org/pub/scm/linux/kerne=
l/git/sforshee/wireless-regdb.git/tree/db.txt#n1727

I only see VHT160 allowed to be utilized for 5500mhz to 5640mhz but there i=
s no mention of VH160 being allowed for use with 5180 to 5320mhz.

And according to this presentation here > https://transition.fcc.gov/oet/ea=
/presentations/files/may17/31-Part-15-Panel-UNII-UpdatesDT.pdf

And this paragraph from this FCC document here > https://www.federalregiste=
r.gov/d/2014-09279/p-65

"Band Straddling" is allowed with U-NII-1 and U-NII-2A. 5150mhz to 5330mhz

Therefore, I would like you to add to the db that 5180 to 5320 can be used =
with vht160.
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

