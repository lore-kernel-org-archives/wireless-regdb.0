Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZJRM-0001Yl-Re
 for wireless-regdb@lists.infradead.org; Tue, 08 Sep 2015 14:00:05 +0000
Received: by wicfx3 with SMTP id fx3so121419587wic.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 Sep 2015 06:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=subject:to:references:cc:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding;
 bh=8XpFDssbfrHAoSSW8biy7Q5MFnmlL2zZO7DYZcuZJvU=;
 b=F9zVsPn+/0qh55UZUmwnowEXkNtpfJ3Q6+HsSdsQ+KMZgujpiKWmBpmoSFHCeDNJsl
 E6sNtbtYBBcptALzbXCtPt2/wb82gLT2KJ3VyJHf1HcReFMcWs5CTjidnDhJp4nT1y8k
 YUOHaKPVcSB91DAVIO/oSTmcbJ3qBLiGmeb0M73jDgwOMQChWW6qrDF+QPueno5wkrpJ
 sYtFM7vU7ALwWsC1yd7WgPYM/q3iKKRMX3cdWZYyo/FiMvwnvkQTIxC3VhGVy33qjemw
 jXg+nNwxC12vPDiJni8yJiJXcbJSEOv9/L79+4BCV4+6ahwSnl67uh/ruKvCKUhdL1T3 J9qw==
References: <1439299795-17359-1-git-send-email-xose.vazquez@gmail.com>
 <20150813143154.GA121347@ubuntu-hedt>
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Message-ID: <55EEE9CA.5010309@gmail.com>
Date: Tue, 8 Sep 2015 15:59:38 +0200
MIME-Version: 1.0
In-Reply-To: <20150813143154.GA121347@ubuntu-hedt>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add 2.4GHz regulatory
	rules for Cuba (CU)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 08/13/2015 04:31 PM, Seth Forshee wrote:

> On Tue, Aug 11, 2015 at 03:29:55PM +0200, Xose Vazquez Perez wrote:
>> Resolución 127, 2011 - Reglamento Banda 2,4 GHz.:
>> http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
>>
>> Cc: Seth Forshee <seth.forshee@canonical.com>
>> Cc: linux-wireless@vger.kernel.org
>> Cc: wireless-regdb@lists.infradead.org
>> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
>> ---
>>  db.txt | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/db.txt b/db.txt
>> index 982db34..2edbf90 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -275,6 +275,13 @@ country CR: DFS-FCC
>>  	(5490 - 5730 @ 20), (24), DFS
>>  	(5735 - 5835 @ 20), (30)
>>  
>> +# http://www.mincom.gob.cu/?q=marcoregulatorio
>> +# - Redes Informáticas
>> +# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
>> +country CU: DFS-FCC
>> +	(2400 - 2456 @ 40), (200 mW)
>> +	(2456 - 2483.5 @ 40), (200 mW)
>> +
> 
> Based on the Google translation of the document you linked to, I don't
> see anything which would prevent merging these rules into one rule. Am I
> missing something?

from http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
page 7:

Artículo 4: Disposiciones de carácter técnico
[..]
4.3.- No obstante lo anterior, los equipos que operen en las frecuencias entre 2456 y
2483,5 MHz pueden emplear valores de p.i.r.e superiores, cuando ello se justifique en
beneficio de objetivos de interés nacional [...]
4.4.- Para estos casos es necesario obtener una autorización expresa de la Agencia
[...]

If you grant an authorization, for 2456-2483.5 pire can be increased.


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
