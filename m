Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
 Content-Type:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=YDF5m8XceAVHumUiFPDEuQsNIic3zhn3UURIVLfvY/Y=;
 b=Ai1bdLC1jZWiJxvBLIzGm9m1L
 budxtitUY47s+1QLd9Udnf+lWMqUWB2GpkgRqc2FYIcZREQFuxauqtwqYngzjV0p4lu2Vu/JT7Isk
 rzodEiqbu5pUqV1J+V2kqfNA43Cf0ABFiD2YGPDpi3rLrCCv9wZh1hdlHoD514TdRDASWjXSrbpUi
 BU9Tp9fEhK+B6aAf/5invLINLxxCGUwCXNmvn7M+CsjYE2mW7PnlXfEcm8isRonDAvoDu/dINssf2
 8jyX/u1rygDqUtzVhBCePatOOA3Fb9j+Y+lM1dxH6p7lfXfhiULeF3f3YSsjjidmNIaFNc+MW/ek8
 O8rPBY4oQ==;
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLjE-00016f-2T
 for wireless-regdb@lists.infradead.org; Sun, 17 Nov 2019 14:40:43 +0000
Received: by mail-oi1-x232.google.com with SMTP id v138so12943919oif.6 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Nov 2019 06:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=OjihKRnCOGYJ4MXsLCmSVlySGslIAUt42MwXptTLvbE=;
 b=kwI2k/kM7vONe78BUUTzYzTN+E5wGqWQypJP88fmcK5hp/gHwHhEfk04vdhwcd2Wkl
 k/twDkBkiGCubYQc0mDZb6ylqMvYnQRJ0Wxxtpi9E/H5IrDbHlIKQG/H58owCfSvA7KD
 uzdJ2Ag/fOO4qPLsA2e8wc/TrxrQG81pUU9btLm+GoX4ZTyYkCexvy76xnMKmU79zEMY
 4RiIZFQvP23DoJ4t/Z1uvT61uma9qWvMT8SoSBIy49EPQ2DS6FhmUiZsDixH7uSbC1js
 FiI6iFQnpfDCQsLsew2LuEdjwFoFCqW82KiLKjfWReTIkp+rqT6AIm1baC7mq4V0+H4/ WCgg==
MIME-Version: 1.0
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
 <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
 <76f464e9-8806-ecbf-2dc8-67bb4190ecc7@streamunlimited.com>
 <20191029130853.GN30813@ubuntu-xps13>
 <31a00c5d-bb58-d423-d625-9ba4ebd177cc@streamunlimited.com>
In-Reply-To: <31a00c5d-bb58-d423-d625-9ba4ebd177cc@streamunlimited.com>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Sun, 17 Nov 2019 15:40:25 +0100
Message-ID: <CAPuHQ=FUdeGjJFCEdL0Zxov6Hu3NH5CsHb6JbAmCY9eiVcscpQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="0000000000007e24cf05978bd05b"
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Create entry for
 united European region
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Emil Petersky <emil.petersky@streamunlimited.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

--0000000000007e24cf05978bd05b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

"EU" is neither a country, nor a valid 802.11 country code. I did a
quick look-up from the 802.11-2012 standard:

>>
dot11CountryString OBJECT-TYPE
...
This attribute identifies the country or noncountry entity in which the
station is operating. If it is a country, the first two octets of this
string is the two character country code as described in document ISO/IEC
3166-1. The third octet is one of the following:
...
4. an ASCII 'X' character, if the station is operating under a noncountry
entity. The first two octets of the noncountry entity is two ASCII 'XX'
characters.
<<

https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Exceptional_reservations

We may consider internally synthesizing an EU regulatory domain by
intersecting the constraints of all EU member countries, so at least
we have something better than "00" (I guess this is what devices fall
back to when they see an unknown country).

I have two thoughts on such automated declaration of harmonization
that you propose: in general, many years could pass between
ratification and implementation. RegDB should always consider what has
already been implemented in the current point in time - this is why we
link to a public announcement about successful implementation in
db.txt. You may think that we may safely rely on having implemented
such decades-old rules, but beware that new rules can come out any
year which can either give or take away channels or alter power
constraints.

Also, this is just from the top of my head, but I think harmonized
member states may allow for more channels than agreed upon, but not
less. I.e., after all harmonized uses have been allocated, they may
decide to open up some of their private allocations as well.

Let me share my experience in Hungary according to a recent survey
(mostly inside UPC coverage, so it is a bit biased).

I've only seen UPC's Compal devices emit EU (attached, I've resolved
RT2860 boards according to fingerprints), along with HU, NL or BE, so
I would identify this as a firmware glitch instead. Their Hitron and
Technicolor offering advertises GB and DE respectively. Most of their
devices are constructed and configured to transmit above regulated
power levels in order to extend the reach of their in-house network.
The Compal one also emits duplicate conflicting information elements
as well, so I wouldn't take them seriously (attached).

The primary real country IE I've observed other than UPC's EU glitch
is HU, then comes Telekom's Sagemcom DE glitch, followed by Digi's
"#a" glitch. People leaving their country settings at their device
default is really blending into the noise compared to these (GB/UK/FR
on D-Link, DE on Huawei and C7/C20/C1200/C5400, US on most
TP-Link/Tenda, FR on Asus).

On Tue, Oct 29, 2019 at 4:08 PM Emil Petersky
<emil.petersky@streamunlimited.com> wrote:
>
> Hi Seth,
>
> it seems, that EU domain is advertised by APs/Routers here in Europe.
> I know, that many clients use EU domain (at least internally in firmware) as well.
> I would like to add it and use it along with setting for individual EU members.
>
> I've made statistic of one WiFi scan in an apartment house in Vienna (Austria).
> Results are:
> 35 x EU (Mostly UPC/Ralink Access points)
> 30 x no region info
>  7 x AT
>  3 x DE
>  2 x NL
>
> Thanks and best regards,
>
> Emil
>
>
>
>
>
> On 29/10/2019 14:08, Seth Forshee wrote:
> > On Tue, Sep 17, 2019 at 11:55:07AM +0200, Emil Petersky wrote:
> >> Create entry for united European region, as usage of frequency bands
> >> is harmonized over EU and almost all CEPT countries as well.
> >>
> >> All EU countries and almost all CEPT countries accepted decisions
> >> 2005/513/EC (5GHz RLAN, EN 301 893)
> >> and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> >>  EU decision 2005/513/EC:
> >> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
> >>  EU decision 2006/771/EC:
> >> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> >> Harmonized CEPT countries:
> >> https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> >> Such decision make sense to create united European region (EU) in regdb
> >>
> >> United region for EU in regdb will enable much easier handling of proper
> >> wlan parameters on embedded devices sold across the Europe.
> > I'm a little curious about this one. I do agree that it would simplify
> > things, but is an EU contry code something standard that wireless APs
> > generally will advertise, or that clients will understand?
> >
> > And we do still have all the individual countries to maintain. Maybe it
> > would make sense to define an EU region as rules that countries could
> > inherit, and then have rules for any deviations from the common EU
> > rules. Thoughts?
> >
> > Thanks,
> > Seth
>
>
> --
> Emil Petersky
>
> ________________________________________________________________________
>
> StreamUnlimited Engineering GmbH
> High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
> Office: +43 1 667 2002 4679 Fax: +43 1 667 2002 4401
> Mail to: emil.petersky@streamunlimited.com
> Visit us: www.streamunlimited.com
>
> Meet us at:
> CES - Las Vegas, 7 - 10 January, Westgate Hotel
> ISE - Amsterdam, 11 - 14 February
>
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

--0000000000007e24cf05978bd05b
Content-Type: text/plain; charset="utf-8"; name="UPC_Wi-Free_ie.txt"
Content-Disposition: attachment; filename="UPC_Wi-Free_ie.txt"
Content-ID: <f_k332yf0j2>
X-Attachment-Id: f_k332yf0j2
Content-Transfer-Encoding: 8bit

802.11 radio information
    PHY type: 802.11b (4)
    Short preamble: False
    Data rate: 1.0 Mb/s
    Channel: 11
    Frequency: 2462MHz
    Signal strength (dBm): -89dBm
    [Duration: 2016µs]
        [Preamble: 192µs]
IEEE 802.11 Probe Response, Flags: ........C
    Type/Subtype: Probe Response (0x0005)
    Frame Control Field: 0x5000
        .... ..00 = Version: 0
        .... 00.. = Type: Management frame (0)
        0101 .... = Subtype: 5
        Flags: 0x00
            .... ..00 = DS status: Not leaving DS or network is operating in AD-HOC mode (To DS: 0 From DS: 0) (0x0)
            .... .0.. = More Fragments: This is the last fragment
            .... 0... = Retry: Frame is not being retransmitted
            ...0 .... = PWR MGT: STA will stay up
            ..0. .... = More Data: No data buffered
            .0.. .... = Protected flag: Data is not protected
            0... .... = Order flag: Not strictly ordered
    .000 0000 0000 0000 = Duration: 0 microseconds
    .... .... .... 0000 = Fragment number: 0
    1100 0010 0111 .... = Sequence number: 3111
    [FCS Status: Good]
IEEE 802.11 wireless LAN
    Fixed parameters (12 bytes)
        Timestamp: 0x000000045fe9c990
        Beacon Interval: 0.102400 [Seconds]
        Capabilities Information: 0x1411
            .... .... .... ...1 = ESS capabilities: Transmitter is an AP
            .... .... .... ..0. = IBSS status: Transmitter belongs to a BSS
            .... ..0. .... 00.. = CFP participation capabilities: No point coordinator at AP (0x00)
            .... .... ...1 .... = Privacy: AP/STA can support WEP
            .... .... ..0. .... = Short Preamble: Not Allowed
            .... .... .0.. .... = PBCC: Not Allowed
            .... .... 0... .... = Channel Agility: Not in use
            .... ...0 .... .... = Spectrum Management: Not Implemented
            .... .1.. .... .... = Short Slot Time: In use
            .... 0... .... .... = Automatic Power Save Delivery: Not Implemented
            ...1 .... .... .... = Radio Measurement: Implemented
            ..0. .... .... .... = DSSS-OFDM: Not Allowed
            .0.. .... .... .... = Delayed Block Ack: Not Implemented
            0... .... .... .... = Immediate Block Ack: Not Implemented
    Tagged parameters (188 bytes)
        Tag: SSID parameter set: UPC Wi-Free
            Tag Number: SSID parameter set (0)
            Tag length: 11
            SSID: UPC Wi-Free
        Tag: Supported Rates 1(B), 2(B), 5.5(B), 11(B), 9, 18, 36, 54, [Mbit/sec]
            Tag Number: Supported Rates (1)
            Tag length: 8
            Supported Rates: 1(B) (0x82)
            Supported Rates: 2(B) (0x84)
            Supported Rates: 5.5(B) (0x8b)
            Supported Rates: 11(B) (0x96)
            Supported Rates: 9 (0x12)
            Supported Rates: 18 (0x24)
            Supported Rates: 36 (0x48)
            Supported Rates: 54 (0x6c)
        Tag: DS Parameter set: Current Channel: 11
            Tag Number: DS Parameter set (3)
            Tag length: 1
            Current Channel: 11
        Tag: ERP Information
            Tag Number: ERP Information (42)
            Tag length: 1
            ERP Information: 0x04
                .... ...0 = Non ERP Present: Not set
                .... ..0. = Use Protection: Not set
                .... .1.. = Barker Preamble Mode: Set
                0000 0... = Reserved: 0x00
        Tag: Extended Supported Rates 6, 12, 24, 48, [Mbit/sec]
            Tag Number: Extended Supported Rates (50)
            Tag length: 4
            Extended Supported Rates: 6 (0x0c)
            Extended Supported Rates: 12 (0x18)
            Extended Supported Rates: 24 (0x30)
            Extended Supported Rates: 48 (0x60)
        Tag: Country Information: Country Code EU, Environment Any
            Tag Number: Country Information (7)
            Tag length: 6
            Code: EU
            Environment: Any (0x20)
            Country Info: First Channel Number: 1, Number of Channels: 13, Maximum Transmit Power Level: 20 dBm
                First Channel Number: 1
                Number of Channels: 13
                Maximum Transmit Power Level: 20dBm
        Tag: HT Capabilities (802.11n D1.10)
            Tag Number: HT Capabilities (802.11n D1.10) (45)
            Tag length: 26
            HT Capabilities Info: 0x01ac
                .... .... .... ...0 = HT LDPC coding capability: Transmitter does not support receiving LDPC coded packets
                .... .... .... ..0. = HT Support channel width: Transmitter only supports 20MHz operation
                .... .... .... 11.. = HT SM Power Save: SM Power Save disabled (0x3)
                .... .... ...0 .... = HT Green Field: Transmitter is not able to receive PPDUs with Green Field (GF) preamble
                .... .... ..1. .... = HT Short GI for 20MHz: Supported
                .... .... .0.. .... = HT Short GI for 40MHz: Not supported
                .... .... 1... .... = HT Tx STBC: Supported
                .... ..01 .... .... = HT Rx STBC: Rx support of one spatial stream (0x1)
                .... .0.. .... .... = HT Delayed Block ACK: Transmitter does not support HT-Delayed BlockAck
                .... 0... .... .... = HT Max A-MSDU length: 3839 bytes
                ...0 .... .... .... = HT DSSS/CCK mode in 40MHz: Won't/Can't use of DSSS/CCK in 40 MHz
                ..0. .... .... .... = HT PSMP Support: Won't/Can't support PSMP operation
                .0.. .... .... .... = HT Forty MHz Intolerant: Use of 40 MHz transmissions unrestricted/allowed
                0... .... .... .... = HT L-SIG TXOP Protection support: Not supported
            A-MPDU Parameters: 0x17
                .... ..11 = Maximum Rx A-MPDU Length: 0x3 (65535[Bytes])
                ...1 01.. = MPDU Density: 4 [usec] (0x5)
                000. .... = Reserved: 0x0
            Rx Supported Modulation and Coding Scheme Set: MCS Set
                Rx Modulation and Coding Scheme (One bit per modulation): 2 spatial streams
                    .... .... .... .... .... .... 1111 1111 = Rx Bitmask Bits 0-7: 0xff
                    .... .... .... .... 1111 1111 .... .... = Rx Bitmask Bits 8-15: 0xff
                    .... .... 0000 0000 .... .... .... .... = Rx Bitmask Bits 16-23: 0x00
                    0000 0000 .... .... .... .... .... .... = Rx Bitmask Bits 24-31: 0x00
                    .... .... .... .... .... .... .... ...0 = Rx Bitmask Bit 32: 0x0
                    .... .... .... .... .... .... .000 000. = Rx Bitmask Bits 33-38: 0x00
                    .... .... ...0 0000 0000 0000 0... .... = Rx Bitmask Bits 39-52: 0x0000
                    ...0 0000 0000 0000 0000 0000 000. .... = Rx Bitmask Bits 53-76: 0x000000
                .... ..00 0000 0000 = Highest Supported Data Rate: 0x000
                .... .... .... ...0 = Tx Supported MCS Set: Not defined
                .... .... .... ..0. = Tx and Rx MCS Set: Equal
                .... .... .... 00.. = Maximum Number of Tx Spatial Streams Supported: 0x0, TX MCS Set Not Defined
                .... .... ...0 .... = Unequal Modulation: Not supported
            HT Extended Capabilities: 0x0000
                .... .... .... ...0 = Transmitter supports PCO: Not supported
                .... .... .... .00. = Time needed to transition between 20MHz and 40MHz: No Transition (0x0)
                .... ..00 .... .... = MCS Feedback capability: STA does not provide MCS feedback (0x0)
                .... .0.. .... .... = High Throughput: Not supported
                .... 0... .... .... = Reverse Direction Responder: Not supported
            Transmit Beam Forming (TxBF) Capabilities: 0x00000000
                .... .... .... .... .... .... .... ...0 = Transmit Beamforming: Not supported
                .... .... .... .... .... .... .... ..0. = Receive Staggered Sounding: Not supported
                .... .... .... .... .... .... .... .0.. = Transmit Staggered Sounding: Not supported
                .... .... .... .... .... .... .... 0... = Receive Null Data packet (NDP): Not supported
                .... .... .... .... .... .... ...0 .... = Transmit Null Data packet (NDP): Not supported
                .... .... .... .... .... .... ..0. .... = Implicit TxBF capable: Not supported
                .... .... .... .... .... .... 00.. .... = Calibration: incapable (0x0)
                .... .... .... .... .... ...0 .... .... = STA can apply TxBF using CSI explicit feedback: Not supported
                .... .... .... .... .... ..0. .... .... = STA can apply TxBF using uncompressed beamforming feedback matrix: Not supported
                .... .... .... .... .... .0.. .... .... = STA can apply TxBF using compressed beamforming feedback matrix: Not supported
                .... .... .... .... ...0 0... .... .... = Receiver can return explicit CSI feedback: not supported (0x0)
                .... .... .... .... .00. .... .... .... = Receiver can return explicit uncompressed Beamforming Feedback Matrix: not supported (0x0)
                .... .... .... ...0 0... .... .... .... = STA can compress and use compressed Beamforming Feedback Matrix: not supported (0x0)
                .... .... .... .00. .... .... .... .... = Minimal grouping used for explicit feedback reports: No grouping supported (0x0)
                .... .... ...0 0... .... .... .... .... = Max antennae STA can support when CSI feedback required: 1 TX antenna sounding (0x0)
                .... .... .00. .... .... .... .... .... = Max antennae STA can support when uncompressed Beamforming feedback required: 1 TX antenna sounding (0x0)
                .... ...0 0... .... .... .... .... .... = Max antennae STA can support when compressed Beamforming feedback required: 1 TX antenna sounding (0x0)
                .... .00. .... .... .... .... .... .... = Maximum number of rows of CSI explicit feedback: 1 row of CSI (0x0)
                ...0 0... .... .... .... .... .... .... = Maximum number of space time streams for which channel dimensions can be simultaneously estimated: 1 space time stream (0x0)
                000. .... .... .... .... .... .... .... = Reserved: 0x0
            Antenna Selection (ASEL) Capabilities: 0x00
                .... ...0 = Antenna Selection Capable: Not supported
                .... ..0. = Explicit CSI Feedback Based Tx ASEL: Not supported
                .... .0.. = Antenna Indices Feedback Based Tx ASEL: Not supported
                .... 0... = Explicit CSI Feedback: Not supported
                ...0 .... = Antenna Indices Feedback: Not supported
                ..0. .... = Rx ASEL: Not supported
                .0.. .... = Tx Sounding PPDUs: Not supported
                0... .... = Reserved: 0x0
        Tag: HT Information (802.11n D1.10)
            Tag Number: HT Information (802.11n D1.10) (61)
            Tag length: 22
            Primary Channel: 11
            HT Information Subset (1 of 3): 0x00
                .... ..00 = Secondary channel offset: No secondary channel (0x0)
                .... .0.. = Supported channel width: 20 MHz channel width only
                .... 0... = Reduced Interframe Spacing (RIFS): Prohibited
                ...0 .... = Power Save Multi-Poll (PSMP) stations only: Association requests are accepted regardless of PSMP capability
                000. .... = Shortest service interval: 5 ms (0x0)
            HT Information Subset (2 of 3): 0x0004
                .... .... .... ..00 = Operating mode of BSS: All STAs are - 20/40 MHz HT or in a 20/40 MHz BSS or are 20 MHz HT in a 20 MHz BSS (0x0)
                .... .... .... .1.. = Non-greenfield STAs present: One or more associated STAs are not greenfield capable
                .... .... .... 0... = Transmit burst limit: No limit
                .... .... ...0 .... = OBSS non-HT STAs present: Use of protection for non-HT STAs by overlapping BSSs is not needed
                0000 0000 000. .... = Reserved: 0x000
            HT Information Subset (3 of 3): 0x0000
                .... .... ..00 0000 = Reserved: 0x00
                .... .... .0.. .... = Dual beacon: No second beacon is transmitted
                .... .... 0... .... = Dual Clear To Send (CTS) protection: Not required
                .... ...0 .... .... = Beacon ID: Primary beacon
                .... ..0. .... .... = L-SIG TXOP Protection Full Support: One or more HT STAs in the BSS do not support L-SIG TXOP protection
                .... .0.. .... .... = Phased Coexistence Operation (PCO): Inactive
                .... 0... .... .... = Phased Coexistence Operation (PCO) Phase: Switch to or continue 20 MHz phase
                0000 .... .... .... = Reserved: 0x0
            Rx Supported Modulation and Coding Scheme Set: Basic MCS Set
                Rx Modulation and Coding Scheme (One bit per modulation): Reserved:8
                    .... .... .... .... .... .... 0000 0000 = Rx Bitmask Bits 0-7: 0x00
                    .... .... .... .... 0000 0000 .... .... = Rx Bitmask Bits 8-15: 0x00
                    .... .... 0000 0000 .... .... .... .... = Rx Bitmask Bits 16-23: 0x00
                    0000 0000 .... .... .... .... .... .... = Rx Bitmask Bits 24-31: 0x00
                    .... .... .... .... .... .... .... ...0 = Rx Bitmask Bit 32: 0x0
                    .... .... .... .... .... .... .000 000. = Rx Bitmask Bits 33-38: 0x00
                    .... .... ...0 0000 0000 0000 0... .... = Rx Bitmask Bits 39-52: 0x0000
                    ...0 0000 0000 0000 0000 0000 000. .... = Rx Bitmask Bits 53-76: 0x000000
                .... ..00 0000 0000 = Highest Supported Data Rate: 0x000
                .... .... .... ...0 = Tx Supported MCS Set: Not defined
                .... .... .... ..0. = Tx and Rx MCS Set: Equal
                .... .... .... 00.. = Maximum Number of Tx Spatial Streams Supported: 0x0, TX MCS Set Not Defined
                .... .... ...0 .... = Unequal Modulation: Not supported
        Tag: RSN Information
            Tag Number: RSN Information (48)
            Tag length: 24
            RSN Version: 1
            Group Cipher Suite: 00:0f:ac (Ieee 802.11) TKIP
                Group Cipher Suite OUI: 00:0f:ac (Ieee 802.11)
                Group Cipher Suite type: TKIP (2)
            Pairwise Cipher Suite Count: 2
            Pairwise Cipher Suite List 00:0f:ac (Ieee 802.11) TKIP 00:0f:ac (Ieee 802.11) AES (CCM)
                Pairwise Cipher Suite: 00:0f:ac (Ieee 802.11) TKIP
                    Pairwise Cipher Suite OUI: 00:0f:ac (Ieee 802.11)
                    Pairwise Cipher Suite type: TKIP (2)
                Pairwise Cipher Suite: 00:0f:ac (Ieee 802.11) AES (CCM)
                    Pairwise Cipher Suite OUI: 00:0f:ac (Ieee 802.11)
                    Pairwise Cipher Suite type: AES (CCM) (4)
            Auth Key Management (AKM) Suite Count: 1
            Auth Key Management (AKM) List 00:0f:ac (Ieee 802.11) WPA
                Auth Key Management (AKM) Suite: 00:0f:ac (Ieee 802.11) WPA
                    Auth Key Management (AKM) OUI: 00:0f:ac (Ieee 802.11)
                    Auth Key Management (AKM) type: WPA (1)
            RSN Capabilities: 0x0000
                .... .... .... ...0 = RSN Pre-Auth capabilities: Transmitter does not support pre-authentication
                .... .... .... ..0. = RSN No Pairwise capabilities: Transmitter can support WEP default key 0 simultaneously with Pairwise key
                .... .... .... 00.. = RSN PTKSA Replay Counter capabilities: 1 replay counter per PTKSA/GTKSA/STAKeySA (0x0)
                .... .... ..00 .... = RSN GTKSA Replay Counter capabilities: 1 replay counter per PTKSA/GTKSA/STAKeySA (0x0)
                .... .... .0.. .... = Management Frame Protection Required: False
                .... .... 0... .... = Management Frame Protection Capable: False
                .... ...0 .... .... = Joint Multi-band RSNA: False
                .... ..0. .... .... = PeerKey Enabled: False
        Tag: Extended Capabilities (8 octets)
            Tag Number: Extended Capabilities (127)
            Tag length: 8
            Extended Capabilities: 0x01 (octet 1)
                .... ...1 = 20/40 BSS Coexistence Management Support: Supported
                .... ..0. = Reserved (was On-demand beacon): 0x0
                .... .0.. = Extended Channel Switching: Not supported
                .... 0... = Reserved (was WAVE indication): 0x0
                ...0 .... = PSMP Capability: Not supported
                ..0. .... = Reserved: 0x0
                .0.. .... = S-PSMP Support: Not supported
                0... .... = Event: Not supported
            Extended Capabilities: 0x00 (octet 2)
                .... ...0 = Diagnostics: Not supported
                .... ..0. = Multicast Diagnostics: Not supported
                .... .0.. = Location Tracking: Not supported
                .... 0... = FMS: Not supported
                ...0 .... = Proxy ARP Service: Not supported
                ..0. .... = Collocated Interference Reporting: Not supported
                .0.. .... = Civic Location: Not supported
                0... .... = Geospatial Location: Not supported
            Extended Capabilities: 0x08 (octet 3)
                .... ...0 = TFS: Not supported
                .... ..0. = WNM Sleep Mode: Not supported
                .... .0.. = TIM Broadcast: Not supported
                .... 1... = BSS Transition: Supported
                ...0 .... = QoS Traffic Capability: Not supported
                ..0. .... = AC Station Count: Not supported
                .0.. .... = Multiple BSSID: Not supported
                0... .... = Timing Measurement: Not supported
            Extended Capabilities: 0x00 (octet 4)
                .... ...0 = Channel Usage: Not supported
                .... ..0. = SSID List: Not supported
                .... .0.. = DMS: Not supported
                .... 0... = UTC TSF Offset: Not supported
                ...0 .... = TPU Buffer STA Support: Not supported
                ..0. .... = TDLS Peer PSM Support: Not supported
                .0.. .... = TDLS channel switching: Not supported
                0... .... = Interworking: Not supported
            Extended Capabilities: 0x00 (octet 5)
                .... ...0 = QoS Map: Not supported
                .... ..0. = EBR: Not supported
                .... .0.. = SSPN Interface: Not supported
                .... 0... = Reserved: 0x0
                ...0 .... = MSGCF Capability: Not supported
                ..0. .... = TDLS Support: Not supported
                .0.. .... = TDLS Prohibited: Not supported
                0... .... = TDLS Channel Switching Prohibited: Not supported
            Extended Capabilities: 0x00 (octet 6)
                .... ...0 = Reject Unadmitted Frame: Not supported
                .... 000. = Service Interval Granularity: 5 ms (0)
                ...0 .... = Identifier Location: Not supported
                ..0. .... = U-APSD Coexistence: Not supported
                .0.. .... = WNM Notification: Not supported
                0... .... = QAB Capability: 0x0
            Extended Capabilities: 0x00 (octet 7)
                .... ...0 = UTF-8 SSID: Not supported
                .... ..0. = QMFActivated: False
                .... .0.. = QMFReconfigurationActivated: False
                .... 0... = Robust AV Streaming: False
                ...0 .... = Advanced GCR: False
                ..0. .... = Mesh GCR: False
                .0.. .... = SCS: False
                0... .... = QLoad Report: False
            Extended Capabilities: 0x00 (octet 8)
                .... ...0 = Alternate EDCA: False
                .... ..0. = Unprotected TXOP Negotiation: False
                .... .0.. = Protected TXOP Negotiation: False
                .... 0... = Reserved: 0x0
                ...0 .... = Protected QLoad Report: False
                ..0. .... = TDLS Wider Bandwidth: Not supported
                .0.. .... = Operating Mode Notification: Not supported
                0... .... = Max Number Of MSDUs In A-MSDU: 0
        Tag: QBSS Load Element 802.11e CCA Version
            Tag Number: QBSS Load Element (11)
            Tag length: 5
            QBSS Version: 2
            Station Count: 1
            Channel Utilization: 55 (21%)
            Available Admission Capacity: 31250 (1000000 us/s)
        Tag: Vendor Specific: Microsoft Corp.: WMM/WME: Parameter Element
            Tag Number: Vendor Specific (221)
            Tag length: 24
            OUI: 00:50:f2 (Microsoft Corp.)
            Vendor Specific OUI Type: 2
            Type: WMM/WME (0x02)
            WME Subtype: Parameter Element (1)
            WME Version: 1
            WME QoS Info: 0x00
                0... .... = U-APSD: Disabled
                .... 0000 = Parameter Set Count: 0x0
                .000 .... = Reserved: 0x0
            Reserved: 00
            Ac Parameters ACI 0 (Best Effort), ACM no, AIFSN 3, ECWmin/max 4/10 (CWmin/max 15/1023), TXOP 0
                ACI / AIFSN Field: 0x03
                    .00. .... = ACI: Best Effort (0)
                    ...0 .... = Admission Control Mandatory: No
                    .... 0011 = AIFSN: 3
                    0... .... = Reserved: 0
                ECW: 0xa4
                    1010 .... = ECW Max: 10
                    .... 0100 = ECW Min: 4
                    CW Max: 1023
                    CW Min: 15
                TXOP Limit: 0
            Ac Parameters ACI 1 (Background), ACM no, AIFSN 7, ECWmin/max 4/10 (CWmin/max 15/1023), TXOP 0
                ACI / AIFSN Field: 0x27
                    .01. .... = ACI: Background (1)
                    ...0 .... = Admission Control Mandatory: No
                    .... 0111 = AIFSN: 7
                    0... .... = Reserved: 0
                ECW: 0xa4
                    1010 .... = ECW Max: 10
                    .... 0100 = ECW Min: 4
                    CW Max: 1023
                    CW Min: 15
                TXOP Limit: 0
            Ac Parameters ACI 2 (Video), ACM no, AIFSN 2, ECWmin/max 3/4 (CWmin/max 7/15), TXOP 94
                ACI / AIFSN Field: 0x42
                    .10. .... = ACI: Video (2)
                    ...0 .... = Admission Control Mandatory: No
                    .... 0010 = AIFSN: 2
                    0... .... = Reserved: 0
                ECW: 0x43
                    0100 .... = ECW Max: 4
                    .... 0011 = ECW Min: 3
                    CW Max: 15
                    CW Min: 7
                TXOP Limit: 94
            Ac Parameters ACI 3 (Voice), ACM no, AIFSN 2, ECWmin/max 2/3 (CWmin/max 3/7), TXOP 47
                ACI / AIFSN Field: 0x62
                    .11. .... = ACI: Voice (3)
                    ...0 .... = Admission Control Mandatory: No
                    .... 0010 = AIFSN: 2
                    0... .... = Reserved: 0
                ECW: 0x32
                    0011 .... = ECW Max: 3
                    .... 0010 = ECW Min: 2
                    CW Max: 7
                    CW Min: 3
                TXOP Limit: 47
        Tag: Country Information: Country Code EU, Environment Any
            Tag Number: Country Information (7)
            Tag length: 6
            Code: EU
            Environment: Any (0x20)
            Country Info: First Channel Number: 1, Number of Channels: 13, Maximum Transmit Power Level: 16 dBm
                First Channel Number: 1
                Number of Channels: 13
                Maximum Transmit Power Level: 16dBm
        Tag: RM Enabled Capabilities (5 octets)
            Tag Number: RM Enabled Capabilities (70)
            Tag length: 5
            RM Capabilities: 0x22 (octet 1)
                .... ...0 = Link Measurement: Disabled
                .... ..1. = Neighbor Report: Enabled
                .... .0.. = Parallel Measurements: Disabled
                .... 0... = Repeated Measurements: Disabled
                ...0 .... = Beacon Passive Measurement: Disabled
                ..1. .... = Beacon Active Measurement: Enabled
                .0.. .... = Beacon Table Measurement: Not supported
                0... .... = Beacon Measurement Reporting Conditions: Disabled
            RM Capabilities: 0x00 (octet 2)
                .... ...0 = Frame Measurement: Disabled
                .... ..0. = Channel Load Measurement: Disabled
                .... .0.. = Noise Histogram Measurement: Disabled
                .... 0... = Statistics Measurement: Disabled
                ...0 .... = LCI Measurement: Disabled
                ..0. .... = LCI Azimuth capability: Disabled
                .0.. .... = Transmit Stream/Category Measurement: Not supported
                0... .... = Triggered Transmit Stream/Category Measurement: Disabled
            RM Capabilities: 0x00 (octet 3)
                .... ...0 = AP Channel Report capability: Disabled
                .... ..0. = RM MIB capability: Disabled
                ...0 00.. = Operating Channel Max Measurement Duration: 0
                000. .... = Nonoperating Channel Max Measurement Duration: 0
            RM Capabilities: 0x00 (octet 4)
                .... .000 = Measurement Pilotcapability: 0
                .... 0... = Measurement Pilot Transmission Information: Disabled
                ...0 .... = Neighbor Report TSF Offset: Disabled
                ..0. .... = RCPI Measurement capability: Disabled
                .0.. .... = RSNI Measurement capability: Not supported
                0... .... = BSS Average Access Delay capability: Disabled
            RM Capabilities: 0x00 (octet 5)
                .... ...0 = BSS Available Admission Capacity capability: Disabled
                .... ..0. = Antenna capability: Disabled
                0000 00.. = Reserved: 0x00
        Tag: Vendor Specific: Ralink Technology, Corp.
            Tag Number: Vendor Specific (221)
            Tag length: 7
            OUI: 00:0c:43 (Ralink Technology, Co
            Vendor Specific OUI Type: 0
            Vendor Specific Data: 00000000

--0000000000007e24cf05978bd05b
Content-Type: text/csv; charset="US-ASCII"; name="all_3166_HU_2019-11.csv"
Content-Disposition: attachment; filename="all_3166_HU_2019-11.csv"
Content-ID: <f_k333ps5t1>
X-Attachment-Id: f_k333ps5t1
Content-Transfer-Encoding: 8bit

count,wlan.country_info.code
7916,"EU,EU"
2177,"HU"
1076,"DE"
574,"#a"
323,"GB"
294,"FR"
145,"US"
62,"CH"
53,"CN"
43,"EU"
26,"IN"
15,"NO"
12,"BE"
5,"XU"
5,"E"
5,""
4,"UK"
4,"IE"
3,"RO"
1,"XT"
1,"RU"
1,"NL"
1,"E0"
1,"AT"
1,"AL"

--0000000000007e24cf05978bd05b
Content-Type: text/csv; charset="US-ASCII"; name="top_models_3166_HU_2019-11.csv"
Content-Disposition: attachment; filename="top_models_3166_HU_2019-11.csv"
Content-ID: <f_k333pxej2>
X-Attachment-Id: f_k333pxej2
Content-Transfer-Encoding: 8bit

"count","wps.manufacturer","wps.model_name","wps.model_number","wps.device_name","magic","wlan.country_info.code","wlan.country_info.fnm.fcn","wlan.country_info.fnm.nc","wlan.country_info.fnm.mtpl"
7916,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,"Compal CH7465LG UPC Connect Box white;","EU,EU","1,1","13,13","20,16"
1299,"Speedport Entry 2i","Speedport Entry 2i","123456","Speedport Entry 2i","Telekom ADSL;","HU","1","13","20"
574,"ZTE","ZTE","123456","ZTE F660","Digi FTTH;","#a","1","14","30"
571,"Sagemcom","Sagemcom","123456","SagemcomAP","Telekom Sagem F@st 3686AC DOCSIS;","DE","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
499,"SERCOMM","VD168","VD168","VD168","Telekom ADSL Speedport W 724V RFT620;","HU","1","13","20"
98,"ZTE","H201L","12345678","H201L","Telekom ZXV10 ADSL;","HU","1","13","20"
94,"Sagemcom","SagemcomFast5655_V2","S.1.0-1.0","SagemcomFast5655_V2-Nxxx","Telekom DOCSIS;","DE","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20"
92,"D-Link","DIR-600","DIR-600","DIR-600",,"GB","1","13","16"
89,"ASUSTeK Computer Inc.","WPS Router","RT-N12+","ASUS WPS Router",,"FR","1","13","16"
85,"Sagemcom","SagemcomFast5655_V2","S.1.0-1.0","SagemcomFast5655_V2-Nxxx","Telekom DOCSIS;","DE","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
71,"TP-LINK","Archer C1200","123456","Archer C1200",,"DE","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
69,"Huawei","Huawei","123456","HuaweiAP","E5186/B315/B593/B525;","DE","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
68,"D-Link","D-Link Router","DIR-842","DIR-842",,"FR","1","13","40"
54,"TP-LINK","TL-WR740N","4.0","Wireless Router TL-WR740N",,"HU","1","13","20"
49,"D-Link","DIR-842","DIR-842","DIR-842",,"GB","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","30,30,30,30,30,30,30,30,20,20,20,20,20,20,20,20"
46,"TP-LINK","TL-WR740N","4.0","Wireless Router TL-WR740N",,"US","1","11","27"
46,"ASUSTeK Computer Inc.","WPS Router","RT-AC51U","ASUS WPS Router",,"FR","1","13","16"
38,"ASUSTeK Computer Inc.","WPS Router","RT-AC53","ASUS WPS Router",,"FR","1","13","16"
26,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,"ZyXEL/DrayTek Vigor 2x2/ZTE H108;","IN","1","13","16"
25,"Sercomm Corp.","Speedport Plus","SpeedportPlus","Speedport Plus","Telekom VDSL2;Cosmote;","HU","1","13","30"
23,"D-Link","D-Link Router","DIR-842","DIR-842",,"FR","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
21,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,"WiFi-Repeater STRONG/Tenda;","US","1","13","16"
20,"TP-LINK","TL-WR741ND","4.0","Wireless Router TL-WR741ND",,"HU","1","13","20"

--0000000000007e24cf05978bd05b
Content-Type: text/csv; charset="US-ASCII"; name="EU_models_3166_HU_2019-11.csv"
Content-Disposition: attachment; filename="EU_models_3166_HU_2019-11.csv"
Content-ID: <f_k333q2373>
X-Attachment-Id: f_k333q2373
Content-Transfer-Encoding: 8bit

count,wps.manufacturer,wps.model_name,wps.model_number,wps.device_name,magic,wlan.country_info.code,wlan.country_info.fnm.fcn,wlan.country_info.fnm.nc,wlan.country_info.fnm.mtpl
7916,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,Compal CH7465LG UPC Connect Box white;,"EU,EU","1,1","13,13","20,16"
13,"xiaomi","R3","0002",,,"EU","1","13","16"
7,"Ralink Technology, Corp.","R02","RT2860",,,"EU","1","13","20"
4,"xiaomi","R3","0002",,,"EU","36","13","16"
4,"ASUSTeK Computer Inc.","Wi-Fi Protected Setup Router","RT-N66U","RT-N66U",,"EU","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
2,"Netgear","NETGEAR Wireless Access Point","NETGEAR","WNR614 (Wireless AP)",,"EU","1","13","16"
2,"Linksys, LLC","WRT3200ACM","WRT3200ACM",,,"EU","36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","17,17,17,17,24,24,24,24,30,30,30,30,30,30,30,30,30,30,30"
2,"ASUSTeK Computer Inc.","Wi-Fi Protected Setup Router","RT-AC66U","RT-AC66U",,"EU","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"
1,"xiaomi","R3G","0002",,,"EU","1","13","16"
1,"xiaomi","R1CM","0002",,,"EU","36","4","16"
1,"xiaomi","R1CM","0002",,,"EU","1","13","16"
1,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,WiFi-Repeater STRONG/Tenda;,"EU","1","13","16"
1,"Ralink Technology, Corp.","Ralink Wireless Access Point","RT2860",,,"EU","1","13","30"
1,"Linksys, LLC","WRT1900ACS","WRT1900ACS",,,"EU","36,40,44,48","1,1,1,1","17,17,17,17"
1,"DrayTek Technology, Corp.","DrayTek Wireless Access Point","Vigor2912 Series","DrayTekAPs",,"EU","1","13","16"
1,"D-Link","D-Link Router","DIR-860L","DIR-860L",,"EU","36,40,44,48","1,1,1,1","17,17,17,17"
1,"ASUSTeK Computer Inc.","Wi-Fi Protected Setup Router","RT-N66W","RT-N66W",,"EU","36,40,44,48,52,56,60,64,100,104,108,112,116,132,136,140","1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1","23,23,23,23,23,23,23,23,30,30,30,30,30,30,30,30"

--0000000000007e24cf05978bd05b
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--0000000000007e24cf05978bd05b--


