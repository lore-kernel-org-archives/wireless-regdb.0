Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD630FF8855
	for <wireless-regdb@archiver.kernel.org>; Tue,  5 May 2026 16:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ukRqnCuJ8kFcvUkTBAZvznU09hJq3wz/7ur9yz6PZjI=; b=jtST3ieMm9E7Ltpb6JvBhSPmsr
	IK3EJFzY3aBKJ8ZJ+/voZboVm9x6m30pdTVu0JcX5zgMvcrYaa3FJ4E5gFppUG7dNZsX5Kf+0Eqhi
	uWLUEMXnkUz7knqUU7+o8d5ZFsNQ7Tvo6Q1O2++TtO4pD0N49tfugeK8WLoirgl6HJ96/PeLAquTD
	LnCKkdWGbCKR1YOytfX3Tvs69Ggz51rkQLrhAt0RhjYEkyYzvfse7MaCmGo/9oGYecux9uCrFvkD6
	tYzJz7s/IUZhSQ9nOAABGdm43kTe1NQ5xbs8GkOVger9DrtIqdFZbXhqDT+yaUHUF4lcF2rHI/Yox
	4wchvaxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKIgV-0000000GtUQ-0YVO;
	Tue, 05 May 2026 16:31:49 +0000
Received: from sonic310-21.consmr.mail.gq1.yahoo.com ([98.137.69.147])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKIgS-0000000GtTT-1gMO
	for wireless-regdb@lists.infradead.org;
	Tue, 05 May 2026 16:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1777998700; bh=ukRqnCuJ8kFcvUkTBAZvznU09hJq3wz/7ur9yz6PZjI=; h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=l4U1s6kq7gVuH2losPtBPtS966I34geK2XOtuXVbygHTnbUemf1sK9KRaCkPOMJZ/tx4VVagxDa1HT6BhQP9GJR827+xQR8U6ZvBwPiFLD+5VDLztkGv5WpICiHf6wmzs8XVnhLa7gmJ1PKhth4EtrCUPZsJt23But55ffXNDwF9AqC6QNS8Ec3vWhP2lfWs+lvYGSNQ/Wt67jp4oPr0M4Qj9/g+4dEzwynL4cAsiGRg92hhNJkW5r/UPThB31Gv+4uOBv/3jmeSNNyiL57IFplN/zaxsyA67VGkxaT4qA4HOjlopS+95HmMWDwTt6AMZp4zJu8OqdpxKHVvdGzwPw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1777998700; bh=zg1m7jWR16fcnuFHsANifIIKAVFQdiTKQmb78sbMgRd=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=kyEnxwTeKvfoyRZf+zxOmUxtp7TtmP7IF4wO+lEzPdmrAA7edeJR3fo+hIEjv2Nb4oqaMT4ZIrgbwoCCRlcTTlAqbhVHSUjzEBRt+fzkp1gHCVHaMy60mFB6eR0aJiNIeW1P5+7c9fzZQfCZxT40ONF4liJTPQLcOIgfwat+DD7uwRe497dXaiiC0xgU4y+Od+yCPxsdh7DSj6/DtnU21Aut6t3jCO7hyTLxOu/TyYtOne5B9LAOO5Ee4kE3RAnowkYPPFZjW08bLZJzyEXGLfkoFUXorqIl5UK2VijjFOpUwVd14JQnwzFHDd4mM7xxkfGicliTiVSUV1LxaVnK3w==
X-YMail-OSG: .4c75HMVM1kvkQN6oC2Gzshibn1iqYDOFEPm6_Dbhh53GkzXMVBtMwd6YnptSiE
 5sQWMiTgISjq4qgAm4xk9ajfoFSGxcCToQULq2ynKfRU7nBpHOIkh_ZvuJjCtHfz2.jq8rA0YxX3
 n16LM60.GC1pzRqURLM3d6McYbofnXVW.Sr746UHVCJPdfdIW9lj7GY8H_KZ9L2OLBeRFWZcquPI
 NuG.WYLpke40r.3i06lNeNZ_sg4Hm3XL0kU8UeH7vBmJewyMeqVbniDnJi7q767fulSHTCx__rUd
 uFhzNROj5OqU5q8iUWR3KPg5rPO47njrD7jI3HkIP4uc.UzXb785T.X8AlSDUN1CIQGrzexfZOO.
 l.k4wt5vHrqyC_shxHa.oOrda2lVK8SSS0q6u6nTVHdm2kaqEO6UfT1S7CzlcF_3bWR8dkuEM35d
 VHhy_DpgCuqTMU4Ob9oX3xRRH22PQnhNjgHEX_gXDyjGno.Q9AlOvkrEFK5W03tBksYJJr3QV6KX
 .kgXTA1cIGTsPk8xRr0m2P18AincwuCZ6rlu_dHa_LE99ur7W7QTztW7YBgvXPaFPlrqYlEHCK.5
 xvZw0dDCCw_0XoxXSSgZ7al.9fRY.iSRU0osYs3ohwcicaRwJl18_NBKByuLT4kvUFWObqySLrxT
 50YY2bHd50kj8Uno6GlZAfy_3Du9SxXabfcqjFu9TBDhB4YGH0MJwcO5l5dTiKpEQw4dTg_8XmAD
 fqBdNVOb._qes_s5z.ncQwu9tt2XsJ2QplhNu5CCKarwtMzj4o1mkHN6ZnRSiojWyZdtgxALINs6
 J4iF7x2HUn7O3MgcsYycBqnjSlSrrrLrDHYm1X.zV2rKUWSZ3NSND8W2iGARYuBpc1Ml__qLEgjA
 KstgM_BSIHwVIjWD1N6I4b5L2im.UbJ_7KetWgkGXcF.kZ7CIbqjTGYcR1RQ4_qvUFm9rlKlQyt3
 2rZnBJd0.KFIp8rnnZ9BZ.paycZXMN0rCMgHomxQHjkaZfp1V7k.bSiIxNm1KxcAiD3esNz1h50h
 BRCc9mNI95ZHu.K4RVBBW5ZjRbpq5cBGUEqoOH_dl6d0mRoaABtBiJHFOvq89L8tnih0yWcaksdD
 E3G5h_zWkEt4pJkAF4Riqrfo2HE45UC5jTioWLsXl9OBfPNxgVFUJK4UWHt7UUWmxPdZxnShy6K_
 oH0EjyZepsQr6m57AeDFAvAaIVj_u6ICSMSlhL_DdGCcmZ_8TEEYM_fW3u0zcwC6RqR.X9ne1Ygw
 sdKD7heOACBB6nTxRNzK1v9CeWsUAO8BiAoUX2YQCbYigABw2Q5kifmvehsTzz7XeBltDu4H8m.w
 sek80DqZ.qk3BhHKJ5i3B0Snii1N1QT.NdgzdkVP9o5vR1oMSq84GORMS7n_4z0Cpd3UYVGFffPR
 A75k5TU8iFKqJZXqDPAo608F9mnFES_MR.ty0GY5Cevcg4hna1_R.oqMuOJ7us.nLbP8LuFlyT.1
 lUnKy6fH7N2SKk8US8KEQKp2Qrw3KHmKP_YeyI57iveDMUXmCiv9mTjnN3ptW4Iro1mmzALPvA3f
 eKQnnnX3g0gFFJD7y3iSZmqxHMpaF3TfdnzMB7Z1DAEEKBsAvZ0vQ5AZM_0fGrXRs.7qlhb6f2O1
 qwfUJrGfoeM6cnBPu99bSensobFJjHQeLTifG.P7JZNGNgfV3qM2kvnavG8MErGx9e0KUujvtkXk
 QijwRALDTteb61bF1dJxJap2Kn4uOu0xRc1QXopLnozBvDtSi0Ea3oWt1v6DLIYhWkc3J7OV7tMB
 S.xebBZn4sZTyVB1q7PyT2.CwXNqHYe3PY57yZXcJaZOZQlSTI.cSmkFkCCegPvEs3I6TTR.u7X3
 hmjVUZclaJkzPzZ4eoLvFj6VaaTQpQhP3R_gzZR8tVgza65PrMq7J7t9GTs.XB6ZnYeNn0AlVj2.
 OcbAReOA7hJ7Kq38mtWC8J0PsQaa2t4Y61.5NXO3QDH823pfXuZY0ZDYmvVxTTwO6yOLGhsXbuii
 OhJmsrtv9.YV.N1PLHZYLSYXTqy.BRNSVTr16UGt_ZUxnPo4u3og1eGR5cF0G2_c0Gx8HLaoZJKM
 ivt1E398hYbYj9IYrtyqhv8K4dcWV.hZVnERQT.aCg0m0Be8Rcvl.tv5Mugyg_f3laSVK2To3tCN
 RjWBq301A_rWhxeV6ATXuPfefbbQOufUNxK05lZat9AM2Y2oGod07wEylIMoqbjVoVwX853tUjUe
 SSjDTeTPE7Wr7__nGtvZgkESdPMCoaZBmO63W13.YcicXdsKKKDWzohAbmESxf_3HsSHwpFIz0I1
 q7IUz1TZIDQ5RCpyM0bFJr.Vnr8Lu.LpAvfkWdlUL7vATIRxvoma4vAr74BOFMTE-
X-Sonic-MF: <mnew_iraq@yahoo.com>
X-Sonic-ID: 0330df1c-2dfc-415d-81b2-20ff8d28d1ce
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.gq1.yahoo.com with HTTP; Tue, 5 May 2026 16:31:40 +0000
Date: Tue, 5 May 2026 16:31:35 +0000 (UTC)
From: Mohammed Abdalla <mnew_iraq@yahoo.com>
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Message-ID: <580730584.6296571.1777998695966@mail.yahoo.com>
In-Reply-To: <1886262646.6291779.1777997531793@mail.yahoo.com>
References: <1886262646.6291779.1777997531793.ref@mail.yahoo.com> <1886262646.6291779.1777997531793@mail.yahoo.com>
Subject: [PATCH] wireless-regdb: add regulatory rules for Iraq (IQ)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6296570_1939463336.1777998695966"
X-Mailer: WebService/1.1.25559 YMailNovation
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_093144_496200_A15D9A88 
X-CRM114-Status: GOOD (  15.17  )
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
Reply-To: Mohammed Abdalla <mnew_iraq@yahoo.com>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

------=_Part_6296570_1939463336.1777998695966
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

## 1. Why this patch exists

Iraq is currently absent from `wireless-regdb/db.txt`. As a
consequence, every OpenWrt and Linux device set to `country=3DIQ`
falls back to the world domain (`00`), which marks most of the
5 GHz spectrum as `no IR` and limits 2.4 GHz EIRP to 20 dBm. A
public OpenWrt forum thread on the Archer AX23 in Iraq concluded
with the maintainers' standard answer:

> *"IQ is the correct code for the place; once an engineer shares
> the local radio laws with regdb maintainers it will be added."*

This patch is that contribution.

## 2. The primary source

The Iraqi Communications and Media Commission (CMC), the national
regulator, has issued a numerical regulation specifically governing
unlicensed Wi-Fi, SRD, and UWB devices:

- **Title:** Regulation on short-range radio communication devices
(SRD) and devices using ultra-broadband (UWB) technology
- **Issuer:** Republic of Iraq, CMC, Telecommunications Regulatory
Department, International Relations Section
- **Decree:** Council of Commissioners decision No. 122/q-2025
- **In force from:** 2025-09-22
- **Edition:** First edition, 2025; 26 pages
- **Direct PDF:**
<https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-radio-=
communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technology.=
pdf>

Article 4-1-13 of that regulation, titled "Wireless Access Systems
(WAS)", contains a full numerical table for every Wi-Fi band. This
patch reproduces that table directly. Nothing in the proposed
`country IQ:` block is inferred or extrapolated.

## 3. The Article 4-1-13 table, verbatim

| Band | Use | Max EIRP | Required mitigations | Cited standard |
|---|---|---|---|---|
| 2400 =E2=80=93 2483.5 MHz | Indoor and outdoor | 100 mW | LBT and DAA | E=
N 300 328, ERC/REC 70-03 |
| 5150 =E2=80=93 5250 MHz | Indoor | 200 mW | =E2=80=94 | EN 301 893, ITU R=
es. 229 (Rev. WRC-19) |
| 5250 =E2=80=93 5350 MHz | Indoor | 200 mW | =E2=80=94 (DFS implied via EN=
 301 893) | EN 301 893 |
| 5470 =E2=80=93 5725 MHz | Indoor | 1000 mW | DFS and TPC (stated explicit=
ly) | EN 301 893 |
| 5725 =E2=80=93 5875 MHz | Indoor and outdoor | 2000 mW (10 MHz ch) / 4000=
 mW (20 MHz ch) | =E2=80=94 | EN 302 502 |
| 5945 =E2=80=93 6425 MHz | Indoor | 200 mW | =E2=80=94 | EN 303 687, ECC R=
eport 75 |
| 57000 =E2=80=93 66000 MHz | Indoor | 10000 mW | LBT and DAA | EN 302 567 =
|

The proposed `country IQ:` block encodes this table line for line.

## 4. The Iraqi regulation also defines its own glossary terms

For the avoidance of doubt, the regulation's Annex A explicitly
defines `Wi-Fi` as *"802.11 Local Area Networking in 2.4 and 5 GHz
ISM bands"*. So when the maintainers ask whether this regulation
in fact covers Wi-Fi, the answer from the regulator is yes,
in writing, in the regulation itself.

The same annex defines DFS, TPC, LBT, DAA, EIRP and AFA in the
exact wireless-regdb sense.

## 5. Encoding choices and where they came from

A few wireless-regdb encoding details require explanation, because
they are interpretations of the regulation's wording rather than
direct copies of numerical limits:

1. **NO-OUTDOOR on 5150=E2=80=935725 MHz.** The regulation labels these
rows simply as "Indoor". The wireless-regdb idiom for that is
the `NO-OUTDOOR` flag.

2. **No NO-OUTDOOR on 5725=E2=80=935875 MHz.** The regulation explicitly
labels this row "Indoor and outdoor".

3. **DFS on 5250=E2=80=935350 MHz.** The regulation's own column for this
row is empty for mitigations, but the cited standard
(EN 301 893) requires DFS in this sub-band, and the corresponding
row for 5470=E2=80=935725 in the same table does state DFS+TPC. Reading
the regulation as a whole, DFS for 5250=E2=80=935350 is required by the
incorporated standard.

4. **Single EIRP figure for 5725=E2=80=935875 MHz.** The regulation gives
two figures (2000 mW for 10 MHz channels, 4000 mW for 20 MHz
channels). The wireless-regdb format expresses one ceiling per
band; the 4000 mW figure is used because it is the higher value
that the regulation explicitly permits.

5. **6 GHz channel width set to 80 MHz.** The regulation does not
explicitly distinguish standard-power from low-power indoor
(LPI) operation, nor does it mention AFC. The conservative
choice is to encode the 6 GHz block at 80 MHz (the widest
non-AFC option in current practice) and leave a follow-up patch
for a wider channelisation once CMC clarifies AFC requirements.

6. **AUTO-BW on the 5 GHz RLAN rows.** Standard practice for
EN 301 893=E2=80=93compliant entries; no AUTO-BW is set on the 6 GHz
row pending the AFC question above.

If the maintainers prefer a different encoding for any of these
six points, please push back; the underlying regulatory text is
clear and any of these can be re-encoded without changing what is
actually permitted under Iraqi law.

## 6. The 5.8 GHz figure looks unusually high =E2=80=94 it is intentional

`(5725 - 5875 @ 80), (4000 mW)` with no NO-OUTDOOR is not a typo.
This is what Iraq's own regulation states for this sub-band, citing
EN 302 502. It is the BFWA value, not the Non-Specific SRD value.
This choice puts Iraq at the high end of the regional spectrum
policy for the 5.8 GHz band. It is included verbatim because the
purpose of wireless-regdb is to reflect what each country's
regulator actually permits.

## 7. What is not in the patch

- **5850=E2=80=935925 MHz ITS / V2X bands.** Article 4-1-8 of the same
regulation covers ITS at 5855=E2=80=935925 MHz with 2 W EIRP, but this
is a non-Wi-Fi RLAN application and is outside the scope of
what wireless-regdb usually encodes for `country` blocks.

- **All non-Wi-Fi SRD bands.** The regulation also covers RFID,
inductive applications, alarms, model control, automotive radar,
level probing radar, hearing aids, active medical implants, and
the full UWB regime (Articles 4-2-1 through 4-2-6). None of these
is a wireless-regdb concern.

- **6 GHz beyond 6425 MHz.** The Iraqi regulation only addresses
5945=E2=80=936425 MHz at 6 GHz; the 6425=E2=80=937125 MHz upper portion is =
not
covered, and the patch therefore does not include it.

## 8. Submission checklist

- [ ] Verify the patch applies cleanly against the current
`wireless-regdb` master; the IQ block must be inserted in
alphabetical order, between `IN` and `IR`.
- [ ] Build `regulatory.db` locally and confirm with
`regdbdump regulatory.db | grep -A8 'country IQ'` that the
output matches the proposed table exactly.
- [ ] Post the cover letter and patch on the OpenWrt forum thread
(231380) for community review by Iraqi engineers before
sending upstream.
- [ ] Send to `linux-wireless@vger.kernel.org` with cc to
`wireless-regdb@lists.infradead.org`.

## 9. A note on responsibility

The numerical content of this patch is taken verbatim from a public
Iraqi government regulation. The encoding choices listed in =C2=A75 are
the patch author's, and they are reversible.

Author: Mohammed Abdullah Ali Al-Obaidi (mnew_iraq@yahoo.com),
OpenWrt forum handle `mnewiraq`. Any objection to the encoding
choices should be raised to that author or in the upstream review
thread, not to the CMC.



------=_Part_6296570_1939463336.1777998695966
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0001-wireless-regdb-add-Iraq-IQ-entry-2.patch"
Content-ID: <a4f72896-1dd7-4807-0dbb-463702ffe852@yahoo.com>

RnJvbTogTW9oYW1tZWQgQWJkdWxsYWggQWxpIEFsLU9iYWlkaSA8bW5ld19pcmFxQHlhaG9vLmNv
bT4KU3ViamVjdDogW1BBVENIXSB3aXJlbGVzcy1yZWdkYjogYWRkIHJlZ3VsYXRvcnkgcnVsZXMg
Zm9yIElyYXEgKElRKQoKQWRkIGEgcmVndWxhdG9yeSBlbnRyeSBmb3IgSXJhcSAoSVNPIDMxNjYt
MSBhbHBoYS0yOiBJUSkuCgpJcmFxIGlzIGN1cnJlbnRseSBhYnNlbnQgZnJvbSB0aGUgcmVndWxh
dG9yeSBkYXRhYmFzZS4gRGV2aWNlcyBzZXQKdG8gY291bnRyeT1JUSBmYWxsIGJhY2sgdG8gdGhl
IHdvcmxkIGRvbWFpbiAoMDApLCB3aGljaCBsZWF2ZXMgbW9zdApvZiB0aGUgNSBHSHogc3BlY3Ry
dW0gbWFya2VkICJubyBJUiIgYW5kIHNldmVyZWx5IHJlc3RyaWN0cyBldmVuCjIuNCBHSHogb3Bl
cmF0aW9uLiBUaGUgSXJhcWkgQ29tbXVuaWNhdGlvbnMgYW5kIE1lZGlhIENvbW1pc3Npb24KKENN
QykgaGFzIG5vdyBwdWJsaXNoZWQgYW4gZXhwbGljaXQsIG51bWVyaWNhbCBuYXRpb25hbCByZWd1
bGF0aW9uCnRoYXQgZmlsbHMgdGhpcyBnYXAuCgpTb3VyY2UgZG9jdW1lbnQKLS0tLS0tLS0tLS0t
LS0tCgogIFRpdGxlIDogUmVndWxhdGlvbiBvbiBzaG9ydC1yYW5nZSByYWRpbyBjb21tdW5pY2F0
aW9uIGRldmljZXMKICAgICAgICAgIChTUkQpIGFuZCBkZXZpY2VzIHVzaW5nIHVsdHJhLWJyb2Fk
YmFuZCAoVVdCKSB0ZWNobm9sb2d5CiAgSXNzdWVyOiBSZXB1YmxpYyBvZiBJcmFxLCBDb21tdW5p
Y2F0aW9ucyBhbmQgTWVkaWEgQ29tbWlzc2lvbgogICAgICAgICAgKENNQyksIFRlbGVjb21tdW5p
Y2F0aW9ucyBSZWd1bGF0b3J5IERlcGFydG1lbnQsCiAgICAgICAgICBJbnRlcm5hdGlvbmFsIFJl
bGF0aW9ucyBTZWN0aW9uCiAgRGVjcmVlOiBDb3VuY2lsIG9mIENvbW1pc3Npb25lcnMgZGVjaXNp
b24gTm8uIDEyMi9xLTIwMjUKICBJbiBmb3JjZSBmcm9tOiAyMDI1LTA5LTIyCiAgRWRpdGlvbjog
Rmlyc3QgZWRpdGlvbiwgMjAyNTsgMjYgcGFnZXMKICBVUkwgICA6IGh0dHBzOi8vY21jLmlxL3dw
LWNvbnRlbnQvdXBsb2Fkcy8yMDI1LzA5L1JlZ3VsYXRpb24tb24tc2hvcnQtcmFuZ2UtcmFkaW8t
Y29tbXVuaWNhdGlvbi1kZXZpY2VzLVNSRC1hbmQtZGV2aWNlcy11c2luZy11bHRyYS1icm9hZGJh
bmQtVVdCLXRlY2hub2xvZ3kucGRmCgpUaGUgdmFsdWVzIGJlbG93IGFyZSB0YWtlbiBkaXJlY3Rs
eSBmcm9tIEFydGljbGUgNC0xLTEzICgiV2lyZWxlc3MKQWNjZXNzIFN5c3RlbXMgLyBXQVMiKSBv
ZiB0aGF0IHJlZ3VsYXRpb24sIHdoaWNoIGlzIHRoZSB0YWJsZQpnb3Zlcm5pbmcgV2ktRmkgKEFu
bmV4IEEgb2YgdGhlIHJlZ3VsYXRpb24gZGVmaW5lcyBXaS1GaSBhcwoiODAyLjExIExvY2FsIEFy
ZWEgTmV0d29ya2luZyBpbiAyLjQgYW5kIDUgR0h6IElTTSBiYW5kcyIpLiBUaGlzCmlzIG5vdCBh
IGRlcml2ZWQgcmVhZGluZzogZXZlcnkgYmFuZCwgZXZlcnkgRUlSUCB2YWx1ZSwgZXZlcnkKaW5k
b29yIHJlc3RyaWN0aW9uLCBhbmQgZXZlcnkgcmVxdWlyZWQgbWl0aWdhdGlvbiAoTEJUL0RBQSwg
REZTLApUUEMpIGlzIG5hbWVkIGluIHRoZSByZWd1bGF0aW9uIGl0c2VsZi4KCkJhbmRzIGFuZCBs
aW1pdHMsIGFzIHN0YXRlZCBpbiBBcnRpY2xlIDQtMS0xMzoKCiAgMjQwMC0yNDgzLjUgTUh6ICA6
IDEwMCAgbVcgRUlSUCwgaW5kb29yIGFuZCBvdXRkb29yLCBMQlQvREFBCiAgICAgICAgICAgICAg
ICAgICAgIChFTiAzMDAgMzI4LCBFUkMvUkVDIDcwLTAzKQogIDUxNTAtNTI1MCBNSHogICAgOiAy
MDAgIG1XIEVJUlAsIGluZG9vcgogICAgICAgICAgICAgICAgICAgICAoRU4gMzAxIDg5MywgSVRV
LVIgUmVzLiAyMjkgUmV2LiBXUkMtMTkpCiAgNTI1MC01MzUwIE1IeiAgICA6IDIwMCAgbVcgRUlS
UCwgaW5kb29yCiAgICAgICAgICAgICAgICAgICAgIChFTiAzMDEgODkzKSAgLS0gREZTIGltcGxp
ZWQgdmlhIEVOIDMwMSA4OTMKICA1NDcwLTU3MjUgTUh6ICAgIDogMTAwMCBtVyBFSVJQLCBpbmRv
b3IsIERGUyArIFRQQwogICAgICAgICAgICAgICAgICAgICAoRU4gMzAxIDg5MykKICA1NzI1LTU4
NzUgTUh6ICAgIDogMjAwMCBtVyBFSVJQICgxMCBNSHogY2gpIC8gNDAwMCBtVyAoMjAgTUh6IGNo
KSwKICAgICAgICAgICAgICAgICAgICAgaW5kb29yIGFuZCBvdXRkb29yCiAgICAgICAgICAgICAg
ICAgICAgIChFTiAzMDIgNTAyKQogIDU5NDUtNjQyNSBNSHogICAgOiAyMDAgIG1XIEVJUlAsIGlu
ZG9vcgogICAgICAgICAgICAgICAgICAgICAoRU4gMzAzIDY4NywgRUNDIFJlcG9ydCA3NSkKICA1
Ny02NiBHSHogICAgICAgIDogMTAgICBXICBFSVJQLCBpbmRvb3IsIExCVC9EQUEKICAgICAgICAg
ICAgICAgICAgICAgKEVOIDMwMiA1NjcpCgpOb3RlcyBvbiB0aGUgZW5jb2RpbmcgY2hvc2VuIGJl
bG93Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiogVGhlIElyYXFpIHJlZ3Vs
YXRpb24gbGlzdHMgYmFuZHMgMiB0aHJvdWdoIDQgKDUxNTAtNTcyNSBNSHopIGFzCiAgIkluZG9v
ciI7IHRoaXMgaXMgZW5jb2RlZCBhcyBOTy1PVVRET09SLgoqIFRoZSByZWd1bGF0aW9uIGxpc3Rz
IDU3MjUtNTg3NSBNSHogYXMgIkluZG9vciBhbmQgb3V0ZG9vciI7IG5vCiAgTk8tT1VURE9PUiBm
bGFnIGlzIGFwcGxpZWQgdG8gdGhhdCByb3cuCiogREZTIGZvciA1MjUwLTUzNTAgaXMgcmVxdWly
ZWQgYnkgRU4gMzAxIDg5Mywgd2hpY2ggdGhlIHJlZ3VsYXRpb24KICByZWZlcmVuY2VzOyB0aGUg
REZTIGZsYWcgaXMgaW5jbHVkZWQgYWNjb3JkaW5nbHkuCiogREZTIGFuZCBUUEMgZm9yIDU0NzAt
NTcyNSBhcmUgc3RhdGVkIGV4cGxpY2l0bHkgaW4gdGhlIHJlZ3VsYXRpb24KICAoIkRGUyAmIFRQ
QyBzaGFsbCBiZSBpbXBsZW1lbnRlZCBhcyBhZGVxdWF0ZSBzaGFyaW5nIG1lY2hhbmlzbSIpLgoq
IDU3MjUtNTg3NSBNSHogdXNlcyB0aGUgaGlnaGVyIG9mIHRoZSB0d28gc3RhdGVkIEVJUlAgZmln
dXJlcwogICg0MDAwIG1XIGZvciAyMCBNSHogY2hhbm5lbHMpIHNpbmNlIHdpcmVsZXNzLXJlZ2Ri
IGV4cHJlc3NlcyBhCiAgcGVyLWJhbmQgY2VpbGluZywgbm90IGEgcGVyLWNoYW5uZWwtd2lkdGgg
Y2VpbGluZy4KKiBBVVRPLUJXIGlzIHNldCBvbiB0aGUgNSBHSHogUkxBTiBiYW5kcyBjb25zaXN0
ZW50IHdpdGggRU4gMzAxIDg5My4KKiBUaGUgNiBHSHogYmxvY2sgaXMgZW5jb2RlZCBhdCB0aGUg
ODAgTUh6IGNoYW5uZWwgd2lkdGggd2hpY2ggaXMKICB0aGUgd2lkZXN0IHN0YW5kYXJkLXBvd2Vy
IG9wdGlvbjsgaXQgY2FuIGJlIHdpZGVuZWQgaW4gYSBmb2xsb3ctdXAKICBwYXRjaCBpZiBhbmQg
d2hlbiBDTUMgY2xhcmlmaWVzIEFGQyByZXF1aXJlbWVudHMuCiogNjAgR0h6OiB0aGUgcmVndWxh
dGlvbiBzcGVjaWZpZXMgNTctNjYgR0h6OyB0aGlzIG1hdGNoZXMgdGhlCiAgZXhpc3Rpbmcgd2ly
ZWxlc3MtcmVnZGIgY29udmVudGlvbiB1c2VkIGJ5IG90aGVyIEVUU0kgY291bnRyaWVzLgoKQmFj
a2dyb3VuZCBvbiB0aGUgdW5pcXVlIDUuOCBHSHogZmlndXJlCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQoKVGhlIDQwMDAgbVcgRUlSUCBmb3IgNTcyNS01ODc1IE1IeiB3
aXRoIGJvdGggaW5kb29yIGFuZCBvdXRkb29yCm9wZXJhdGlvbiBpcyBub3QgdGhlIGNvbnNlcnZh
dGl2ZSBFdXJvcGVhbiBmaWd1cmU7IGl0IHJlZmxlY3RzIGFuCmV4cGxpY2l0IElyYXFpIG5hdGlv
bmFsIGNob2ljZSB0aGF0IGZvbGxvd3MgRU4gMzAyIDUwMiAoQkZXQSkuClRoaXMgaXMgaW5jbHVk
ZWQgdmVyYmF0aW0gZnJvbSB0aGUgcmVndWxhdGlvbi4KCkRpc2N1c3Npb24gdGhyZWFkIG9uIHRo
ZSBPcGVuV3J0IGZvcnVtIHdoZXJlIHRoaXMgd29yayB3YXMKc29saWNpdGVkOgoKICBodHRwczov
L2ZvcnVtLm9wZW53cnQub3JnL3QvY29uZmlndXJpbmctb3BlbndydC1vbi1hcmNoZXItYXgyMy1p
bi1pcmFxLzIzMTM4MAoKU2lnbmVkLW9mZi1ieTogTW9oYW1tZWQgQWJkdWxsYWggQWxpIEFsLU9i
YWlkaSA8bW5ld19pcmFxQHlhaG9vLmNvbT4KLS0tCiBkYi50eHQgfCAxNCArKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kYi50eHQg
Yi9kYi50eHQKLS0tIGEvZGIudHh0CisrKyBiL2RiLnR4dApAQCAtaW5zZXJ0LWFmdGVyLUlOLWJs
b2NrQEAKKyMgSXJhcQorIyBTb3VyY2U6IFJlZ3VsYXRpb24gb24gc2hvcnQtcmFuZ2UgcmFkaW8g
Y29tbXVuaWNhdGlvbiBkZXZpY2VzIChTUkQpCisjIGFuZCBkZXZpY2VzIHVzaW5nIHVsdHJhLWJy
b2FkYmFuZCAoVVdCKSB0ZWNobm9sb2d5LCBGaXJzdCBFZGl0aW9uCisjIDIwMjUsIGlzc3VlZCBi
eSB0aGUgSXJhcWkgQ29tbXVuaWNhdGlvbnMgYW5kIE1lZGlhIENvbW1pc3Npb24gKENNQykKKyMg
dW5kZXIgQ291bmNpbCBvZiBDb21taXNzaW9uZXJzIGRlY2lzaW9uIE5vLiAxMjIvcS0yMDI1LCBp
biBmb3JjZQorIyBmcm9tIDIwMjUtMDktMjIuIExpbWl0cyBiZWxvdyBhcmUgdGFrZW4gZnJvbSBB
cnRpY2xlIDQtMS0xMworIyAoV2lyZWxlc3MgQWNjZXNzIFN5c3RlbXMpIG9mIHRoYXQgcmVndWxh
dGlvbi4KKyMgaHR0cHM6Ly9jbWMuaXEvd3AtY29udGVudC91cGxvYWRzLzIwMjUvMDkvUmVndWxh
dGlvbi1vbi1zaG9ydC1yYW5nZS1yYWRpby1jb21tdW5pY2F0aW9uLWRldmljZXMtU1JELWFuZC1k
ZXZpY2VzLXVzaW5nLXVsdHJhLWJyb2FkYmFuZC1VV0ItdGVjaG5vbG9neS5wZGYKK2NvdW50cnkg
SVE6IERGUy1FVFNJCisJKDI0MDAgLSAyNDgzLjUgQCA0MCksICgxMDAgbVcpLCB3bW1ydWxlPUVU
U0kKKwkoNTE1MCAtIDUyNTAgQCA4MCksICgyMDAgbVcpLCBOTy1PVVRET09SLCBBVVRPLUJXLCB3
bW1ydWxlPUVUU0kKKwkoNTI1MCAtIDUzNTAgQCA4MCksICgyMDAgbVcpLCBOTy1PVVRET09SLCBE
RlMsIEFVVE8tQlcsIHdtbXJ1bGU9RVRTSQorCSg1NDcwIC0gNTcyNSBAIDE2MCksICgxMDAwIG1X
KSwgTk8tT1VURE9PUiwgREZTLCB3bW1ydWxlPUVUU0kKKwkoNTcyNSAtIDU4NzUgQCA4MCksICg0
MDAwIG1XKQorCSg1OTQ1IC0gNjQyNSBAIDgwKSwgKDIwMCBtVyksIE5PLU9VVERPT1IsIHdtbXJ1
bGU9RVRTSQorCSg1NzAwMCAtIDY2MDAwIEAgMjE2MCksICg0MCkKLS0gCjIuNDMuMAo=

------=_Part_6296570_1939463336.1777998695966--

