Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpaZX-0005gh-CU
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 10:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=a;
 t=1430823544; bh=0arJLKIM2xywXvGk1udTM3u8Juk/pb70mHeAf9NrExo=;
 h=From:To:Cc:References:Date:Message-ID:From;
 b=nv8ApGiobg6gLp20oLmBjKa4V8jYHCghVazK0y3W+RdGKDYFl/Abvfak7k+9wcc7k
 pv5hugEchrmPY4jO++VQy5Ut1DW8tWpbCIDwuHpJCfocuylpmZvhvsN+/zFpSETEZm
 Ocf+sTRqz2t3G88Y/DSNIvUTdbyq60w88qd1uw51Y5TqsLqJXZ4XyzAtF6JZ+QoEa3
 SQXMQ0OmEedipMM7aLMM519fyefn/7j9cCBIdyOSa5690OJVF7jAi7JLTZkHGIxltl
 BggTRWAoAQzEChguXWBAs24SyLDpef0ON7dzCLBq7q5GJi0dxwbwZdDaAj9L/Qd/Hv
 SKJ/k9X9senTQ==
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
 <20150505084821.GA26349@jouni.qca.qualcomm.com>
Date: Tue, 05 May 2015 12:58:58 +0200
In-Reply-To: <20150505084821.GA26349@jouni.qca.qualcomm.com> (Jouni Malinen's
 message of "Tue, 5 May 2015 11:48:21 +0300")
Message-ID: <87d22f8f4d.fsf@nemi.mork.no>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] Specify Australian DFS region as
	DFS-ETSI
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Jouni Malinen <jouni@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org, Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
List-ID: <wireless-regdb@lists.infradead.org>

Jouni Malinen <jouni@qca.qualcomm.com> writes:
> On Tue, May 05, 2015 at 11:32:16AM +0300, Dmitry Ivanov wrote:
>> Currently, DFS region for Australia is not specified. This prevents starting AP with AU country code on DFS-affected channel in 5 GHz band with latest cfg80211 and hostapd because there is an explicit check for such condition.
>> 
>> This patch specifies DFS region for Australia as DFS-ETSI. Alternatively, DFS-FCC can be used.
>
> I would have used DFS-FCC here unless you have a clear indication of
> DFS-ETSI being closer to requirements. In addition, there should be a
> Signed-off-by: tag in the commit log as described in the CONTRIBUTING
> file.

From what I can gather from
http://www.comlaw.gov.au/Details/F2014L01253
the details are hidden in the standard "AS/NZS 4268:2012". The scope
here:
  http://shop.standards.co.nz/catalog/4268:2012%28AS|NZS%29/scope?
shows the existence of an appendix "B" titled

 "DYNAMIC FREQUENCY SELECTION (DFS) AND TRANSMIT POWER CONTROL (TPC)
  REQUIREMENTS FOR RADIO LOCAL AREA NETWORK (RLAN) TRANSMITTERS
  OPERATING IN 5250 TO 5350 MHz OR 5470 TO 5725 MHz"

But I'm afraid you'll have to buy the standard to get the full details...

Given hysterical raisins, and the general tendency to reference ETSI
standards and ERC decisions, I'd say that DFS-ETSI is more likely.  Why
would they use FCC rules?

But it should probably be kept aligned with the NZ entry, which
currently is DFS-FCC.  Don't know the source of that, though.  Could
very well be wrong...  Ref the "EN 301 893 V1.7.1" alternative given
here:  https://gazette.govt.nz/notice/id/2015-go694


Bjørn

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
