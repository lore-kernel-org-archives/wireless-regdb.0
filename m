Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A51C36002
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Mar 2025 14:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:Cc:To:MIME-Version:Message-ID:Date:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XQZy5fcF6RvFZ3iU3YsO2JmW4uOxF4U2Mh2QChAVSpA=; b=TgPLd0GnuJNaH8HNWS79qlkNt5
	9lEC2OvRMF233if5rRGCcCrr/ugQz6yaf5/vNk3MqHFGDr6pdXRsA+bFSI0jBwbjHrj+M6WuiwnRf
	ZSArAee8B/eoRMOmwEugSvlPdu8ZgauhgaPeOViW6CXj4sRx9kLtbptd9XsPbQaCFMEpIQyM5l6L/
	U7fbFVa4Ba3aMDJAL9g/gWfRR/1jWllzkD1ZQ8fdck+6UgqH3Np8rAi3uPMlZ/c+yWfhtg5pvj+RN
	SLz4zmF7gEkx3AkjI7awOPotMyh5MqqsMLrVKvX1I3N09jORM0UIS5VzoZlyCQ/YQ59ANVtSfn5g+
	rN6XZouQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twixH-00000003Pqk-0QkY;
	Mon, 24 Mar 2025 14:39:07 +0000
Received: from vps-c8396917.vps.ovh.net ([2001:41d0:701:1100::5b82] helo=aegrel.ee)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twW1I-00000001zhx-2Cyk
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Mar 2025 00:50:25 +0000
DKIM-Signature: v=1; a=ed25519-sha256; s=default; d=aegrel.ee; c=relaxed/relaxed; r=y;
	h=Content-Type:Subject:Content-Language:To:User-Agent:MIME-Version
	:Message-ID:Date:From:Sender:Expires:Content-Type; t=1742777420;
	x=1745369420; bh=XQZy5fcF6RvFZ3iU3YsO2JmW4uOxF4U2Mh2QChAVSpA=; b=5/TsoI1l4H
	SORDJDGkDpWm7uDj4mCjKuCZnIANAraFqZZfpxtuG6kOElHkJ+UebuFEC4GXv3xuAgbTRr0mAPA
	w==;
From: =?UTF-8?Q?Taavi_Eom=C3=A4e?= <taaviw@aegrel.ee>
Date: Mon, 24 Mar 2025 01:55:05 +0200
Message-ID: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>
Content-Language: en-US
Subject: [PATCH] wireless-regdb: Update regulatory info for Estonia (EE) for 2024
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250323_175024_735675_FE7571D3 
X-CRM114-Status: UNSURE (   0.50  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 24 Mar 2025 07:38:26 -0700
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

QWxsb3cgUzFHIG9wZXJhdGlvbiBiYXNlZCBvbiBjdXJyZW50bHkgYXBwbGljYWJsZSB1c2FnZSBydWxlcyBzcGVjaWZpZWQKaW4gYW5uZXggNiBvZiAiUmFhZGlvc2FnZWR1c3RlIGthc3V0YW1pc2UgdGluZ2ltdXNlZCBqYSB0ZWhuaWxpc2VkIG7DtXVkZWQgCnNhZ2VkdXNsb2FzdCB2YWJhc3RhdHVkIHJhYWRpb3NlYWRtZXRlbGUiIAogCkVuYWJsZSBBVVRPLUJXIGZvciBhbGwgNUdIeiBiYW5kcyBhcyBubyBiYW5kd2lkdGggbGltaXQgaXMgc3BlY2lmaWVkIGZvcgp0aGVzZSBiYW5kcy4KClNwZWNpZnkgNkdIeiBwb3dlciBsaW1pdCBpbiBtVyB0byBtYXRjaCBvdGhlcnMuCgpGaXggNjBHSHogYmFuZCB0byBtYXRjaCByZWd1bGF0aW9uIGFuZCBhbGxvdyBiYW5kd2lkdGhzIHNwZWNpZmllZCBieSA4MDIuMTFheS4KCi0tLQogZGIudHh0IHwgMTEgKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZGIudHh0IGIvZGIudHh0CmluZGV4IGUzMzFkNGYuLjgzZjc5MjQgMTAwNjQ0Ci0tLSBhL2RiLnR4dAorKysgYi9kYi50eHQKQEAgLTYxOCwxOCArNjE4LDIxIEBAIGNvdW50cnkgRUM6IERGUy1GQ0MKICMgIEVVIGRlY2lzaW9uIDIwMjEvMTA2Ny9FQzogaHR0cHM6Ly9ldXItbGV4LmV1cm9wYS5ldS9sZWdhbC1jb250ZW50L0VOL1RYVC9QREYvP3VyaT1DRUxFWDozMjAyMUQxMDY3JmZyb209RU4KICMgSGFybW9uaXplZCBDRVBUIGNvdW50cmllcyAoSnVseSAyMDE5KTogaHR0cHM6Ly93d3cuZWNvZG9jZGIuZGsvZG93bmxvYWQvMjVjNDE3NzktY2Q2ZS9SZWM3MDAzZS5wZGYKICMgRUU6IGh0dHBzOi8vd3d3LnR0amEuZWUvZXQvZXR0ZXZvdHRlbGUtb3JnYW5pc2F0c2lvb25pbGUvc2lkZXRlZW51c2VkL3JhYWRpb3NlYWRtZWQvd2lmaS1zZWFkZQorIyBFRTogaHR0cHM6Ly93d3cucmlpZ2l0ZWF0YWphLmVlL2FrdC8xMTcwNTIwMjQwMTg/bGVpYUtlaHRpdiAoTGlzYSA2KQogIyBFRTogaHR0cHM6Ly93d3cuaXR1LmludC9JVFUtRC9zdHVkeV9ncm91cHMvU0dQXzE5OTgtMjAwMi9KR1JFUzA5L3BkZi9lc3RvbmlhLnBkZgogY291bnRyeSBFRTogREZTLUVUU0kKKwkoODYzIC0gODY4IEAgMSksICgyNSBtVykKKwkoOTE1LjggLSA5MTkuNCBAIDEpLCAoMjUgbVcpCiAJKDI0MDAgLSAyNDgzLjUgQCA0MCksICgxMDAgbVcpCiAJKDUxNTAgLSA1MjUwIEAgODApLCAoMjAwIG1XKSwgTk8tT1VURE9PUiwgQVVUTy1CVywgd21tcnVsZT1FVFNJCiAJKDUyNTAgLSA1MzUwIEAgODApLCAoMTAwIG1XKSwgTk8tT1VURE9PUiwgREZTLCBBVVRPLUJXLCB3bW1ydWxlPUVUU0kKLQkoNTQ3MCAtIDU3MjUgQCAxNjApLCAoNTAwIG1XKSwgREZTLCB3bW1ydWxlPUVUU0kKKwkoNTQ3MCAtIDU3MjUgQCAxNjApLCAoNTAwIG1XKSwgREZTLCBBVVRPLUJXLCB3bW1ydWxlPUVUU0kKIAkjIHNob3J0IHJhbmdlIGRldmljZXMgKEVUU0kgRU4gMzAwIDQ0MC0xKQotCSg1NzI1IC0gNTg3NSBAIDgwKSwgKDI1IG1XKQorCSg1NzI1IC0gNTg3NSBAIDgwKSwgKDI1IG1XKSwgQVVUTy1CVwogCSMgNiBHSHogYmFuZAotCSg1OTQ1IC0gNjQyNSBAIDMyMCksICgyMyksIE5PLU9VVERPT1IsIHdtbXJ1bGU9RVRTSQorCSg1OTQ1IC0gNjQyNSBAIDMyMCksICgyMDAgbVcpLCBOTy1PVVRET09SLCB3bW1ydWxlPUVUU0kKIAkjIDYwIEdIeiBiYW5kIGNoYW5uZWxzIDEtNCAoRVRTSSBFTiAzMDIgNTY3KQotCSg1NzAwMCAtIDY2MDAwIEAgMjE2MCksICg0MCkKKwkoNTcwMDAgLSA3MTAwMCBAIDg2NDApLCAoNDApCiAKICMgaHR0cHM6Ly93d3cudHJhLmdvdi5lZy93cC1jb250ZW50L3VwbG9hZHMvMjAyMi8wMy9FR1ktTlRSQS1NYXJjaC0yMDIyLVNSRF9FbmdsaXNoX0ZpbmFsLnBkZgogY291bnRyeSBFRzogREZTLUVUU0kKLS0gCjIuNDUuMgoK

