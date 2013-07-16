Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzF54-0003sx-QX
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2013 23:54:55 +0000
Received: by mail-la0-f49.google.com with SMTP id ea20so1015320lab.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 16:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=+5/orLVattspdEZ2VrcmGbX6Cz9ayM5cjlT5QGTcJl4=;
 b=vntT0nXgOMEVlIJwT4sLTw6wfRpDjnhxiqUDOXGhsjSot3C+Kf8ML3DcdU41y0wvZ4
 Ymh4MLXdDJ5Kuc8IniUvcsV75W5W2VTlotEL/j7brYmSZpKlSWBc2a6nCOI8z7sg4qc1
 KwINtTxGw7xb0Hygp4SHiFN1UnsOa69pCSDwUQAkcjaf1WaIl4Jnz+M2t/OA0sOP1kBS
 kcbuZZ6KPJCPbfpieNEv669JCnmAzt5U9nkaAxhg3MWTbC69DLs6ELzZySr/PlyAkwdM
 xVSOGzTq3eKyXLXEdsHaXKwrUpxt4kfdIKIyoVEBGXNgoG1O+vMcOaGlLktpkZd8sf9v fK8A==
MIME-Version: 1.0
In-Reply-To: <CAB=NE6WmcGs6u8ZCrWXcKQe=MsQk_C7R7i+x1V-cDbjQ+A8d-w@mail.gmail.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
 <CAB=NE6WmcGs6u8ZCrWXcKQe=MsQk_C7R7i+x1V-cDbjQ+A8d-w@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 16:54:10 -0700
Message-ID: <CAB=NE6VQTVbVvQha3+UXoLwqkUTeYq5tEa5sWfFEMO-R-tOvMg@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 00/53] wireless-regdb: mostly VHT80
	updates
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jul 16, 2013 at 1:18 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> On Wed, Jul 3, 2013 at 6:03 PM, Luis R. Rodriguez
> <mcgrof@do-not-panic.com> wrote:
>> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>>
>> Here's a series of updates for wireless-regdb. Most of this is
>> to just enable VHT80 support to enable support for 802.11ac
>> where this has been verified to be usable. I cannot meet the
>> criteria of providing full documentation for sources for all
>> patches, only a few ones so what I recommend for the rest is
>> to let this sit on the list for a bit and I'd hope after
>> review if no one spots any issues I'd hope we can merge this.
>>
>> I reviewed the idea of vendor namespaces on wireless-regdb
>> and at least through review with pkgadd on IRC we concluded
>> its best to try to take this approach instead of encouraging
>> divergence due to any lack of full source documentation or
>> inability to provide such documentation for whatever reason.
>> This seems to be better than not getting any updates at all
>> and keeps vendors hopefully encouraged to push changes upstream.
>
> I saw one comment addressing a typo on ID, I've fixed that. If there
> are no complaints can we merge these to get VHT80?

Please hold off on these for a bit. I need to test one more thing.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

