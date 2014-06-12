Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-x236.google.com ([2607:f8b0:400d:c01::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wux8n-0002aJ-24
 for wireless-regdb@lists.infradead.org; Thu, 12 Jun 2014 05:01:34 +0000
Received: by mail-qc0-f182.google.com with SMTP id m20so1175793qcx.27 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Jun 2014 22:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type:content-transfer-encoding;
 bh=TH4Sicrj+O1EDbRBcTW+ECQqM492pMwxoyI8My4y5x4=;
 b=CyZGU0BuKa4tqGgnko7fs4zJragJ4ZQm1+UPBRVgfQJa6sY5b5TWjNPELEOStdzaUk
 POXuIZW7ZWPgfdTQJxJpOS7r01Qg9OfACD1jCvIc05dlzSQC2cMCnEfyPgGFZ4btvBOK
 QMBeRQYOL0W6gj0j2w69fc/vZqxWImY6KVUmc=
MIME-Version: 1.0
In-Reply-To: <20140611204207.GD6042@wotan.suse.de>
References: <20140519185046.GH7650@tuxdriver.com>
 <CALhHN=pEo5H4AnWpOAhPs8LyK35wyhGJyvHTrh12nauQ-tOpDg@mail.gmail.com>
 <20140611204207.GD6042@wotan.suse.de>
Date: Thu, 12 Jun 2014 07:01:10 +0200
Message-ID: <CALhHN=pTG-06H80bs11NT82wc009xgZ-aghpn_BBryxj9mvXng@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2014-05-19
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
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Cc: linux-wireless@vger.kernel.org, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 11 June 2014 22:42, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> On Wed, Jun 11, 2014 at 09:15:19PM +0200, Janusz Dziedzic wrote:
>> On 19 May 2014 20:50, John W. Linville <linville@tuxdriver.com> wrote:
>> > A new release of wireless-regdb (master-2014-05-19) is available at:
>> >
>> > http://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2014.05.19.tar.gz
>> >
>> > Here is the short log of the changes included since the 2013-11-27
>> > release:
>> >
>> > Bjørn Mork (1):
>> >       wireless-regdb: update NO's regulatory rules
>> >
>> > Janusz Dziedzic (3):
>> >       wireless-regdb: allow max bandwidth to be AUTO calculated
>> >       wireless-regdb: set AUTO bandwidth for world regulatory
>> This two above should not be merged. That was first version of auto
>> bandwidth calculation, we skip :)
>
> How about on CRDA? Can you check if I merged the wrong stuff as I already
> pushed as well? This also currently breaks the parses are there is no
> support for the auto stuff yet.
>
crda: add AUTO-BW rule flag support - this is correct one.

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
