Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BAECC47422
	for <wireless-regdb@archiver.kernel.org>; Fri, 26 Jan 2024 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E318jbBI3Sfmaas3eq3UTLrKlPS3jJTstVGnWt2qb/w=; b=vhW2KTW4OUralRhTFVX+kXs23y
	SfRGj11TO6Z6+mEfp5oKyK/N2c5wTT21h7B4NUmWh2nsfe12YZwfaOHVamYLj8H4TKjIsAM/lxrgp
	HtWixCbb8O+JSZV8qwwQEXpRfNJLemfDJMG60S4bvRbxE4oNe6em8ju2Ubf0y8YkV7uXbMy9pKxJr
	FZYXG3biufUSdywk5Jm9FHeVTJYgGC5yPqI+JEjACLXnfdN0dop6P25m/ufhhLSBxamtugoHuSYAo
	GO4eaZV835EAskk3pNzglDMynLxKpfW1ABngD2b9uVlks4cHiKQxMQrr0NsaqgHWIkJsBEAk/7yAy
	OQ9RetsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTM9W-00000004BoK-2Yet;
	Fri, 26 Jan 2024 13:21:50 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTM9T-00000004BmV-3tyX
	for wireless-regdb@lists.infradead.org;
	Fri, 26 Jan 2024 13:21:49 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-42a71d9832dso8583881cf.1
        for <wireless-regdb@lists.infradead.org>; Fri, 26 Jan 2024 05:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706275305; x=1706880105; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E318jbBI3Sfmaas3eq3UTLrKlPS3jJTstVGnWt2qb/w=;
        b=K96gB/JYnPveeL5ffuP2W6kbr4uf+0v07tSXFpKnATTljZq0XRR+HpW9Kcs/1IT2q9
         xousQWWetOB7o3B8I9Pn4/exsYdGzdKGtS7/vhK6V1sVrZ+8n9sCRkoEB7ZnZrdR6w9m
         oCNC3Cso5w3S/1HtgVX0d1TpApHIzcs8sVP9sBmLnmP/GmSzfHS3UH4jh6cJevJNYRLQ
         4DuOHlO6hK63/XxBHuH/cJYh7I8D0sQbxrIHX3TkNp0l3HkmNH+dKFA8T79VIRGcIeXB
         0I47VHMW8596z+JFUboO/TAuQ6QWQx2uOeZugboWWO5KK2EpfrJDUqLcJiWHIO6lyWDb
         YxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706275305; x=1706880105;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E318jbBI3Sfmaas3eq3UTLrKlPS3jJTstVGnWt2qb/w=;
        b=mMqaNF0EGsNbkKSxxDTe3EwMCMV8NGytIyVaReA8zHzQvFQfCXCSbET0lBNYPds7qX
         r9X5kjwPU3mqiy49ceChfKQdFo3Z5+cd/z7Dx7hRipXvI1KWsp4AydpnazTG41Qv5Igo
         8lHYAWQk0W5DFpLNkOuhSNr6EEMMMEdMjypD7ugR7qXKeLaCdHrKOo5Zi1qUQJeDkkdi
         jb8PlLekG6oCOXd7DOucOl5PoybQji78lLpNs4Hz7MeZodOaHll1vLVrFdvQ4+GzCZ6g
         fALNOxPZ042puKk3CYYaD6PjhNGEhgRFSMhU2gsk3rEJ11MBqj+Wt5qtumfz20G2pzDW
         4evg==
X-Gm-Message-State: AOJu0YwxIboaEnAwpmBvkmLJyA4LCdiU7fNBgYE2Iy0SKPBqO5qOn9f7
	KtPwU30d59ZLv1YCmMJN0lgfrgn9uLeBPcAm8vaGzsaPFmgb5YX0XWWNHsAP5cRO208UGgWHysy
	AT8PitdQd0s6b+QqeFhCNt5YWAsU=
X-Google-Smtp-Source: AGHT+IH77LyfjdWdccbMaJlyxoI/kras+Q5L77PhaerHh21iJq5Nc/R3Kl9i6aKWv57a2uEW6hfoNKP6DNG1TJc+yX0=
X-Received: by 2002:a05:622a:6dc5:b0:42a:7e25:d938 with SMTP id
 ir5-20020a05622a6dc500b0042a7e25d938mr743333qtb.0.1706275304961; Fri, 26 Jan
 2024 05:21:44 -0800 (PST)
MIME-Version: 1.0
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
 <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
 <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net> <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com>
In-Reply-To: <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com>
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Fri, 26 Jan 2024 15:21:33 +0200
Message-ID: <CAAgmp6t_emZ1GSnh56JuO9Cp=dJcf13rOCN=KdGMXG10nxBoEA@mail.gmail.com>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
To: b.K.il.h.u+tigbuh@gmail.com
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_052148_071520_6885C734 
X-CRM114-Status: GOOD (  10.08  )
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Thu, Jan 4, 2024 at 12:02=E2=80=AFPM <b.K.il.h.u+tigbuh@gmail.com> wrote=
:
>
> Ideally, TPC should be a fully automatic mechanism that reduces
> transmit power between the two points to as low of a level as possible
> while delivering the same quality of service. The purpose is to reduce
> the excess headroom in each link. I.e., if you could still link with
> 65Mb/s towards a given direction using 14dBmW, you should not transmit
> with 20dBmW.

Just to add to that, that for most if not all of the EU it must also
'provide on average, a mitigation factor of at least 3 dB on the
maximum permitted output power of the systems'. I read this (not a
lawyer or radio engineer, so please correct me if I'm wrong) as the
average e.i.r.p. of the entire BSS must at any point in time not
exceed the maximum allowed - 3db. This would include AP->STA, STA->AP,
and STA->STA transmissions.

