Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5lD6-0002ga-Op
 for wireless-regdb@lists.infradead.org; Wed, 13 Feb 2013 22:53:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1360796032; x=1392332032;
 h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=8J/WcLGjijZHo+F1huxjBjSGvfLgwT4HcTBvVH17PV4=;
 b=QCWnFJRY8SIOjhChDtMfMD5PnmrN0MRIqVFxCVxWU8JKWazRUoXoRuOu
 G9IgXGxitCYcvgatpjOpUQZxbaJQ38zcRFwv6IVY7pm8dMZQG8ZDm6yQy
 jHy6frp+GSbmSrrqVDrgWxNHBvcVIw194sTXfvB7a/zPshlBtsIzIblWG 0=;
From: "Green, Michael" <green@qca.qualcomm.com>
Date: Wed, 13 Feb 2013 22:53:47 +0000
Message-ID: <237CF5B631AA3446BAC55A2F73815CEB0154C3A8@NASANEXD02D.na.qualcomm.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] Russia Update (not Serbia)
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

Sorry.  We have reached the limit of my cooperation.  I trust the community to do the right thing from this point.   


Michael Green
green@qualcomm.com

Qualcomm Atheros, Inc.
781-400-1491 (office)
508-380-4921 (cell)


-----Original Message-----
From: wireless-regdb-bounces@lists.infradead.org [mailto:wireless-regdb-bounces@lists.infradead.org] On Behalf Of Xose Vazquez Perez
Sent: Wednesday, February 13, 2013 5:44 PM
To: linux-wireless; wireless-regdb@lists.infradead.org; John W. Linville
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for Serbia (RS) on 2.4 and 5GHz

On 02/06/2013 08:25 PM, John W. Linville wrote:

> Thank you so much for this timely message!  I apologize for having 
> overlooked it so far.
> 
> I don't suppose that you could translate the information you have 
> provided into the format used within the regulatory database file?
> Also, could you provide a link to the original regulatory document 
> (even if it is in Serbian)?

Serbia is under ETSI/CEPT rules( ECC/DEC/(04)08 ), see summary[1]:

5 GHz current rules are too much liberal and incomplete:

country RS:
	(2400 - 2483.5 @ 40), (N/A, 100 mW)
	(5150 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR
	(5470 - 5725 @ 20), (3, 1000 mW), DFS
	# 60 gHz band channels 1-4, ref: Etsi En 302 567
	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

They should be changed to "standard" ETSI rules:
	(2400 - 2483.5 @ 40), (N/A, 100 mW)
	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
	# 60 gHz band channels 1-4, ref: Etsi En 302 567
	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

http://www.erodocdb.dk/doks/implement_doc_adm.aspx?docid=2033
http://www.erodocdb.dk/doks/implement_adm_doc.aspx?ITUID=48&ITUSHORT=RS&ITULONG=Serbia

Contact point for implementation status:
Ms Jelena Surculija <jelena.surculija@mtid.gov.rs> Dr Milan Jankovic <milan.jankovic@ratel.org.rs>


[1] http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

