Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ahsvM-0007jn-UW
 for wireless-regdb@lists.infradead.org; Mon, 21 Mar 2016 06:02:45 +0000
Received: by mail-lb0-x230.google.com with SMTP id bc4so120409221lbc.2 for
 <wireless-regdb@lists.infradead.org>; Sun, 20 Mar 2016 23:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:date:message-id:subject:from:to;
 bh=yAwXoXKL4Ko2rYArKTW5ZOwTebbXL8BiNyIOnfC+Aks=;
 b=BlI+GM0RBqKitUerlle6q/nxEAAXXrja61AsrjTtoqdghH/5N/JyaPbp29uFobAZtg
 +JRfW6V34l+FYSP93QZaU5DDbZlYbXB/gYlyLzMoC2onMobJcxV3lrHsNWkSY1Y3Khk+
 mLCfxha523KocgqLUnI+SOl1LhTKdVLfEAmXniOCngNPkM//a4/2oQcbODCbeoudHmD5
 IbF0WWJGO3MLnMIcouurfty7xhpNp/P2KSpD7xh6gFNnkD31cEgQV60WBCd6uBojuc2R
 rAt0knu382hihiHPnwimOz+NtfE7PKuMJb6t2JXE19kg+NGhXhIEOwxmG1tZBjLVZoWb 1pJA==
MIME-Version: 1.0
Date: Mon, 21 Mar 2016 11:32:21 +0530
Message-ID: <CAH9F5rmgEZXjDnWRUjMmMdW8obvKbkeEtciMLtiNYEGoX4AZsg@mail.gmail.com>
From: Atul Joshi <atul.suresh.joshi@gmail.com>
Subject: [wireless-regdb] US Disabling 11d?
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,
This is in response to the below mail from Guy.
I am trying to find out what does it mean to clients/stations.
1. Does it mean, AP can advertise non-US country but then STA needs to
have some way to validate that ?
2. Does it mean AP can not send country IE at all?
3. How does FCC keep tab on rogue APs which can advertise non-US
country in US? (does it mean user setting the country is disabled?)
There are many questions around this..  it will be great if we can get
clarifications on the changes needed in AP and STA mode.

thanks
atul


Hi All,

Recently I ran into this FCC new rule:

FCC will disallow 802.11d after January 01, 2015
After January 01, 2015, the FCC will not allow the use of 802.11d. The
client cannot rely on the Access Point to ensure compliance to the FCC
certified frequency bands. For example today, a non-U.S. AP can be
used in the US, which will allow transmitting on channels 12 & 13 with
unapproved power output in the 2.4 GHz band, or channels 120, 124 &
128 which are prohibited in the 5 GHz band. This will not be the case
once FCC enforces the new rule

Does anyone know if there was any work done to support this?

BR,
Guy Mishol

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

