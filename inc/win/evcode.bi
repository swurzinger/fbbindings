#pragma once

#define __WINE_EVCODE_H
#define EC_SYSTEMBASE &h00
#define EC_USER &h8000
#define EC_COMPLETE &h01
#define EC_USERABORT &h02
#define EC_ERRORABORT &h03
#define EC_TIME &h04
#define EC_REPAINT &h05
#define EC_STREAM_ERROR_STOPPED &h06
#define EC_STREAM_ERROR_STILLPLAYING &h07
#define EC_ERROR_STILLPLAYING &h08
#define EC_PALETTE_CHANGED &h09
#define EC_VIDEO_SIZE_CHANGED &h0A
#define EC_QUALITY_CHANGE &h0B
#define EC_SHUTTING_DOWN &h0C
#define EC_CLOCK_CHANGED &h0D
#define EC_PAUSED &h0E
#define EC_OPENING_FILE &h10
#define EC_BUFFERING_DATA &h11
#define EC_FULLSCREEN_LOST &h12
#define EC_ACTIVATE &h13
#define EC_NEED_RESTART &h14
#define EC_WINDOW_DESTROYED &h15
#define EC_DISPLAY_CHANGED &h16
#define EC_STARVATION &h17
#define EC_OLE_EVENT &h18
#define EC_NOTIFY_WINDOW &h19
#define EC_STREAM_CONTROL_STOPPED &h1A
#define EC_STREAM_CONTROL_STARTED &h1B
#define EC_END_OF_SEGMENT &h1C
#define EC_SEGMENT_STARTED &h1D
#define EC_LENGTH_CHANGED &h1E
#define EC_DEVICE_LOST &h1F
#define EC_SAMPLE_NEEDED &h20
#define EC_PROCESSING_LATENCY &h21
#define EC_SAMPLE_LATENCY &h22
#define EC_SCRUB_TIME &h23
#define EC_STEP_COMPLETE &h24
#define EC_NEW_PIN &h20
#define EC_RENDER_FINISHED &h21
#define EC_TIMECODE_AVAILABLE &h30
#define EC_EXTDEVICE_MODE_CHANGE &h31
#define EC_STATE_CHANGE &h32
#define EC_PLEASE_REOPEN &h40
#define EC_STATUS &h41
#define EC_MARKER_HIT &h42
#define EC_LOADSTATUS &h43
#define EC_FILE_CLOSED &h44
#define EC_ERRORABORTEX &h45
#define EC_EOS_SOON &h46
#define EC_CONTENTPROPERTY_CHANGED &h47
#define EC_BANDWIDTHCHANGE &h48
#define EC_VIDEOFRAMEREADY &h49
#define EC_GRAPH_CHANGED &h50
#define EC_CLOCK_UNSET &h51
#define EC_VMR_RENDERDEVICE_SET &h53
#define EC_VMR_SURFACE_FLIPPED &h54
#define EC_VMR_RECONNECTION_FAILED &h55
#define EC_PREPROCESS_COMPLETE &h56
#define EC_CODECAPI_EVENT &h57
#define EC_BUILT &h300
#define EC_UNBUILT &h301
#define EC_WMT_EVENT_BASE &h0251
#define EC_WMT_INDEX_EVENT EC_WMT_EVENT_BASE
#define EC_WMT_EVENT (EC_WMT_EVENT_BASE + 1)