Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wn1-mbie.dmzglobal.net ([203.144.33.76])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpixS-0003o2-70
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 19:56:48 +0000
From: Peter Gent <Peter.Gent@mbie.govt.nz>
Date: Tue, 5 May 2015 19:56:16 +0000
Message-ID: <D0D2EC853BFD0147A005CC7FAC0E4A530106C09B03@AKI2K113.wd.govt.nz>
Content-Language: en-US
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] Specify Australian DFS region
	as	DFS-ETSI [UNCLASSIFIED]
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
To: =?utf-8?B?QmrDuHJuIE1vcms=?= <bjorn@mork.no>, Jouni Malinen <jouni@qca.qualcomm.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

New Zealand does have some variations to the Australian Rules, but we do look at the FCC rules in the first instance. 
There are 2 separate general user radio licences that cover the use of Wi-FI devices at http://www.rsm.govt.nz/about-rsm/spectrum-policy/gazette/gurl/short-range-devices and http://www.rsm.govt.nz/about-rsm/spectrum-policy/gazette/gurl/fixed-radio-link-devices  

Best regards

Peter


Peter Gent
PLANNING ANALYST

Radio Spectrum Management, Infrastructure & Resource Markets Group
Ministry of Business, Innovation & Employment

peter.gent@mbie.govt.nz | DDI:  +64 4 462 4279  |  Ext 44279  
Free Phone: 0508 RSM INFO (776 463) | Website: www.rsm.govt.nz 
15 Stout Street, PO Box 2847, Wellington, New Zealand







-----Original Message-----
From: wireless-regdb [mailto:wireless-regdb-bounces@lists.infradead.org] On Behalf Of Bjørn Mork
Sent: Tuesday, 5 May 2015 10:59 p.m.
To: Jouni Malinen
Cc: wireless-regdb@lists.infradead.org; Dmitry Ivanov
Subject: Re: [wireless-regdb] [PATCH] Specify Australian DFS region as DFS-ETSI

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

Given hysterical raisins, and the general tendency to reference ETSI standards and ERC decisions, I'd say that DFS-ETSI is more likely.  Why would they use FCC rules?

But it should probably be kept aligned with the NZ entry, which currently is DFS-FCC.  Don't know the source of that, though.  Could very well be wrong...  Ref the "EN 301 893 V1.7.1" alternative given
here:  https://gazette.govt.nz/notice/id/2015-go694


Bjørn

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
www.govt.nz - your guide to finding and using New Zealand government services

Any opinions expressed in this message are not necessarily those of the Ministry of Business, Innovation and Employment. This message and any files transmitted with it are confidential and solely for the use
of the intended recipient. If you are not the intended recipient or the person responsible for delivery to the intended recipient, be advised that you have received this message in error and that any use is
strictly prohibited. Please contact the sender and delete the message and any attachment from your computer.
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
