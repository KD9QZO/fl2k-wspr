#!/usr/bin/env fish

set WSPR_USB_FREQS 136000 474200 1836600 3568600 5355700 5357000 5371500 7038600 10138700 14095600 18104600 21094600 24924600 28124600 50293000 144489000

set WSPR_BAND_NAMES '2200m' '630m' '160m' '80m' '60m (US-CA-3 low)' '60m (US-CA-3)' '60m (US-CA-4)' '40m' '30m' '20m' '17m' '15m' '12m' '10m' '6m' '2m'

set WSPR_BAND_QTY 16

set WSPR_MIN_OFFSET 1400
set WSPR_MAX_OFFSET 1600


printf 'band_name,dial_freq,lower_freq,center_freq,upper_freq\n'


for i in {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}
	printf '"%s",%d,%d,%d,%d\n' $WSPR_BAND_NAMES[$i] $WSPR_USB_FREQS[$i] (math "$WSPR_USB_FREQS[$i] + $WSPR_MIN_OFFSET") (math "$WSPR_USB_FREQS[$i] + $WSPR_MIN_OFFSET + 100") (math "$WSPR_USB_FREQS[$i] + $WSPR_MAX_OFFSET")
end


