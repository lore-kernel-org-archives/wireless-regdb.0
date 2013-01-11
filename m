Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-f41.google.com ([74.125.83.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtlcZ-0004q6-AR
 for wireless-regdb@lists.infradead.org; Fri, 11 Jan 2013 20:54:36 +0000
Received: by mail-ee0-f41.google.com with SMTP id d41so1079710eek.28 for
 <wireless-regdb@lists.infradead.org>; Fri, 11 Jan 2013 12:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:message-id:date:from:user-agent:mime-version:to:subject
 :content-type:content-transfer-encoding;
 bh=PUhzERWHDC0hYhHvn+eRcLuNKHBIop07JEh+9HkMSoY=;
 b=W09ZD8dBdrtot4RqeFRJ4qSeEpvdYwFX9wtrs2zfHLS6RGY671BYbkSg40ESYVQ/ul
 kvDl2S/PzjvYvjhb3Sd9Hdp0ndkYT+A12Wiz+1uOw6+EVxA8hTCgt58hkBkFRbn56JRR
 NNN81gg6fL5R6929xywxoxzSS2oQLJ5MlSUya0E3rLiBC4buevd+IWy0/qDQwdj1uXi6
 DaA2XlHA1nX3UfuWuKvmo4OJgPnTV1xYAn9BvcCUarCXA/HIka28MW7SWhe5NO/2tfgu
 tmtfKxw888Bg16qoNdmiIdZVKNgcfVgNCTyOvXROu1Ie6PvFMvsf2mqD5unkJC5GlpvJ KRTA==
Message-ID: <50F07C03.3050204@gmail.com>
Date: Fri, 11 Jan 2013 21:54:27 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] wireless-regdb updated, please check!
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
To: "John W. Linville" <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

John W. Linville wrote:

> I've been sitting on some wireless-regdb patches for some time.
> Mostly this is because I wasn't sure what to do with some/most of them.
> I even still have a few more like that...
> 
> Anyway, I wanted to at least get the 60GHz bits out, and I pushed a
> few other changes as well.  Please take a look, and let me know if
> I merged anything wrong or if there is still something missing.
> 
> 	git://git.kernel.org/pub/scm/linux/kernel/git/linville/wireless-regdb.git


Did you forget CC:wireless-regdb@lists.infradead.org ?


How about these?

CEPT rules to ES:
http://lists.infradead.org/pipermail/wireless-regdb/2012-July/000073.html
http://lists.infradead.org/pipermail/wireless-regdb/2012-July/000074.html
http://lists.infradead.org/pipermail/wireless-regdb/2012-July/000075.html

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

