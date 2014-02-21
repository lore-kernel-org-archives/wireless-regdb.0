Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-f54.google.com ([209.85.215.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGza4-0004Nf-Uy
 for wireless-regdb@lists.infradead.org; Fri, 21 Feb 2014 23:32:33 +0000
Received: by mail-la0-f54.google.com with SMTP id y1so2951047lam.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 21 Feb 2014 15:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=fSzj+LHFNNLyoBXSpbFcBfotx+cCoCDDCp0XfEpZhJU=;
 b=PEcx96F6jV5+QsS0Svpkdtn2oWqOzYOEyQzVfMfH1JBQB9ucWjYevLcHT1Oi5n14Fd
 H2N5FYPGqRjb+vbu38idRlGKPe7Fs7G/RbVOTinA1SBQf4e35xj/Kg+PDGKhNPTGP9rH
 P9pNyV7pe/n3dJC7n1QIee5k35AfFvVxbk9g37568seo7j7Pqx3jHo6an3t/Uw8gvfMD
 gzzmGvkd6LTCje7n1zajVQqTXNHwOIYak3ka3l0d/8NvbE0NmdBXL1rTwttoMXZhV5/V
 gh/36izPn/xpc9EWE6C1L5vSTm35B8oFzIMNhLDxaXzNgckaWURPFimF0GlF/Cijxen5 SMxw==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A033383EED@HASMSX106.ger.corp.intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
 <20140219001458.GF14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A03338353E@HASMSX106.ger.corp.intel.com>
 <20140219160301.GH14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033383EED@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 21 Feb 2014 15:31:46 -0800
Message-ID: <CAB=NE6WD93GCtsKpXUJB8pZ-+9wOcF1E4QxNX4rRyed26JCHoQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3 6/6] mac80211: Enable initiating
	radiation on indoor channels
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
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Feb 19, 2014 at 11:58 PM, Peer, Ilan <ilan.peer@intel.com> wrote:
>>
>> On Wed, Feb 19, 2014 at 03:28:29PM +0000, Peer, Ilan wrote:
>> > I'll abandon this change ...
>>
>> Wait lets talk about this.
>>
>> > > I don't see why being indoor should allow to override the NO-IR
>> > > flag. I do see however why being indoor should enable to IR if you
>> > > are IR if you have the indoor flag. Enabling to IR if you are indoor
>> > > for all NO-IR channels is... pretty permissive I do not see the correlation.
>> > >
>> >
>> > Make sense. I did not have such relaxations defined, just thought that
>> > similar relaxations could also be used in cases of scanning etc. but I
>> > guess this is not always true.
>>
>> The original beacon hint mechanism is very expansive to all beacons on non 5
>> GHz DFS channels and non 2.4 channel
>> 12 or 13. If a vendor can possibly not like that beacon hint implementation as
>> its too permissive (and I don't think it is) but they do want to trust beacon
>> hints from APs in the case you are describing then you can enable a new
>> feature flag to distinguish this. The beacon infrastructure code would then
>> ignore the regular beacon hints on devices that don't have the old flag, but
>> would trust this new form of beacon hint. If a device supported the old all
>> inclusive flag they'd trust both. You'd have to update the kdocs for the old
>> one, and likely add a new routine similar to regulatory_hint_found_beacon().
>>
>
> This make sense (also got a direct answer from our regulatory folks on this ... finally ;))

Oh wow, are they on the wireless-regdb list?

>> I'm not sure its worth it though, I'd rather push vendors to consider first using
>> the regular becaon hint mechanism and trusting it. Maybe devices that want
>> this new functionality you are trusting should implicate revising trusting
>> beacon hint mechanism ?
>>
>
> Our regulatory people said that a similar approach is WIP in the FCC where they are willing to use a similar relaxation as the beacons hints but with some limitations such as having at least a number of APs operating on the channel etc.

That seems to be biased towards populated spectrum areas. I suspect
the conflict here would be not wanting to trust GO's, but consider
this: why not? GO's won't IR unless they have some heuristics like the
one you are adding to determine its OK to IR. Furthermore our own
beacon hint infrastructure in the kernel does check to ensure we don't
trust mesh or IBSS, we ensure its from an ESS, ie WLAN_CAPABILITY_ESS:

if (res->pub.capability & WLAN_CAPABILITY_ESS)
  regulatory_hint_found_beacon(wiphy, channel, gfp);

BTW I just updated our documentation for this, here:

http://wireless.kernel.org/en/developers/Regulatory/processing_rules#Beacon_hints

Please feel free to socialize this algorithm with the FCC PHBs and
other regulatory folks to see if they can see any loopholes or would
prefer any other considerations or APIs to be extended. I think this
is pretty safe and I'd love to know of issues that people could be
concerned over this.

> If its ok with you I prefer to leave things as is for now.

You mean you'll drop this patch for sure then while we hope a
socialization of our algorithm can be proven as reasonable for Intel
to embrace :) ?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

