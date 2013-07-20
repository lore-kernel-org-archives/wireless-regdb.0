Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V0SxH-0001yX-8R
 for wireless-regdb@lists.infradead.org; Sat, 20 Jul 2013 08:55:56 +0000
Received: by mail-pa0-f51.google.com with SMTP id lf11so5247574pab.38 for
 <wireless-regdb@lists.infradead.org>; Sat, 20 Jul 2013 01:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=8sAd1KW01dYXVzoM2uyVs8NYN6C3Gwv7gQh/NhHGB/k=;
 b=Yn6Kro1oE7Br2znH0iEEOM2iv/2aoxYLfOH1FdcvmD6OSFjxrCKWhxKjZQalUzgud/
 NabKKSwVSeXsQ2C8MDeP3BG6b4bJunOsPVLqA0CH3ZD/8NkBayUB0IxUwkriA6yVLCx9
 5J6fyDZTXBU4ZomqABA8BmpEBQFqPu7QX9poVwfMZwheNhtcX0nw57mZ0Gu+BbEioiwm
 XpUse5aLK7gBXZDe/pT5xNbSOx3E7QbjlNWY3RiyZgaeboXog7BzmieF1sR9G+mA90DI
 Ioqje4MFUIxTnGwwhxvh77bV3wZsA1C+8ag2mDaFFSkd5p2d+jr2n7DbWU+Bw728m9Tn dUSw==
MIME-Version: 1.0
In-Reply-To: <CAAevFRQ7dfk2UeackHR1sMJaAG1f70DWmZ4kfGW91A5opmioaA@mail.gmail.com>
References: 
	 <CAAevFRQ7dfk2UeackHR1sMJaAG1f70DWmZ4kfGW91A5opmioaA@mail.gmail.com>
From: Pui Yong Ng <desire@gmail.com>
Date: Sat, 20 Jul 2013 16:55:02 +0800
Message-ID: <CAAevFRQCEKMq4x2GOAHfxo-Zsqw1_JM9kePQeeuydfOw1QQpZQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Singapore (SG) on 2.4GHz and 5GHz
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
To: John Linville <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi.  I'd like to update that maximum EIRP for Singapore has changed.

The updated Technical Specification for Short Range Devices was
published at http://www.ida.gov.sg/~/media/Files/PCDG/Licensees/StandardsQoS/RadiocomEquipStd/TSSRD.pdf.
 In case the link changes, it can be retrieved from www.ida.gov.sg ->
Policies & Regulation -> Industry & Licensees -> Standards & Quality
of Service -> Radio-communication Equipment Standards

In the above URL, table 1 rows 25 and 27-29 are applicable (i think).

Briefly, the changes applicable to wireless LAN are:

> Technical requirements have also been revised for the wireless LAN and broadband access applications:
>
> Output power limit for 2.4000 - 2.4835 GHz band increased from 100 mW EIRP to 200 mW
> Output power limit for 5.725 - 5.850 GHz band increased from 100 mW EIRP to 1 W EIRP


Thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

