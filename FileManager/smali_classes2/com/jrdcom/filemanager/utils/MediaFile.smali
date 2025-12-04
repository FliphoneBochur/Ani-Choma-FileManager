.class public Lcom/jrdcom/filemanager/utils/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0xb

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xc

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APK:I = 0xc2

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x23

.field public static final FILE_TYPE_DAT:I = 0xc4

.field public static final FILE_TYPE_DIVX:I = 0x1f

.field public static final FILE_TYPE_DTS:I = 0x12c

.field public static final FILE_TYPE_EC3:I = 0x10

.field public static final FILE_TYPE_EML:I = 0x6c

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x21

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_ICS:I = 0xbe

.field public static final FILE_TYPE_ICZ:I = 0xbf

.field public static final FILE_TYPE_IMY:I = 0x12

.field public static final FILE_TYPE_INI:I = 0xc3

.field public static final FILE_TYPE_JAD:I = 0x70

.field public static final FILE_TYPE_JAR:I = 0x6e

.field public static final FILE_TYPE_JPEG:I = 0x20

.field public static final FILE_TYPE_LOG:I = 0xc6

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0x10

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PCM:I = 0xf

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x22

.field public static final FILE_TYPE_QCP:I = 0xd

.field public static final FILE_TYPE_RAR:I = 0x6d

.field public static final FILE_TYPE_RM:I = 0xc7

.field public static final FILE_TYPE_SDP:I = 0x6f

.field public static final FILE_TYPE_SMF:I = 0x11

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_TIF:I = 0xc8

.field public static final FILE_TYPE_VCF:I = 0xc0

.field public static final FILE_TYPE_VCS:I = 0xc1

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x24

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBMA:I = 0xe

.field public static final FILE_TYPE_WEBP:I = 0x25

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XMIND:I = 0xc5

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE2:I = 0x12c

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x20

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x10

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x10

.field private static final LAST_AUDIO_FILE_TYPE2:I = 0x12c

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0x12

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1f

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 177
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 178
    const-string v0, "MPGA"

    invoke-static {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 179
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v3, "audio/mp4"

    const/16 v4, 0x300b

    invoke-static {v0, v1, v3, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 180
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v3, "audio/x-wav"

    const/16 v5, 0x3008

    invoke-static {v0, v1, v3, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 181
    const/16 v1, 0xf

    const-string v3, "audio/wav"

    invoke-static {v0, v1, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v3, "audio/amr"

    invoke-static {v0, v1, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v3, "audio/amr-wb"

    invoke-static {v0, v1, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v0, "DIVX"

    const/16 v1, 0x1f

    const-string v3, "video/flv"

    invoke-static {v0, v1, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/jrdcom/filemanager/utils/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x6

    const v1, 0xb901

    const-string v3, "WMA"

    const-string v5, "audio/x-ms-wma"

    invoke-static {v3, v0, v5, v1}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 188
    :cond_0
    const/16 v0, 0xd

    const-string v1, "QCP"

    const-string v3, "audio/qcelp"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const v0, 0xb902

    const/4 v1, 0x7

    const-string v3, "OGG"

    const-string v5, "audio/ogg"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 190
    const-string v3, "OGG"

    const-string v5, "application/ogg"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 191
    const-string v3, "OGA"

    const-string v5, "audio/ogg"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 192
    const-string v3, "OGA"

    const-string v5, "application/ogg"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 193
    const v0, 0xb903

    const/16 v1, 0x8

    const-string v3, "AAC"

    const-string v5, "audio/aac"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 194
    const-string v3, "AAC"

    const-string v5, "audio/aac-adts"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 196
    const-string v3, "ADTS"

    const-string v5, "audio/x-hx-aac-adts"

    invoke-static {v3, v1, v5, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 197
    const/16 v0, 0x9

    const-string v1, "MKA"

    const-string v3, "audio/x-matroska"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    const/16 v0, 0x10

    const-string v1, "MID"

    const-string v3, "audio/midi"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const-string v1, "MIDI"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    const-string v1, "XMF"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    const-string v1, "RTTTL"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const/16 v0, 0x11

    const-string v1, "SMF"

    const-string v5, "audio/sp-midi"

    invoke-static {v1, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const/16 v0, 0x12

    const-string v1, "IMY"

    const-string v5, "audio/imelody"

    invoke-static {v1, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    const/16 v0, 0x10

    const-string v1, "RTX"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v1, "OTA"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v1, "MXMF"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const/16 v0, 0x15

    const-string v1, "MPEG"

    const-string v3, "video/mpeg"

    invoke-static {v1, v0, v3, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 210
    const-string v1, "MPG"

    invoke-static {v1, v0, v3, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 211
    const-string v5, "MP4"

    const-string v6, "video/mp4"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 212
    const/16 v0, 0x16

    const-string v5, "M4V"

    const-string v6, "video/x-m4v"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 213
    const/16 v0, 0x17

    const v4, 0xb984

    const-string v5, "3GP"

    const-string v6, "video/*"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 214
    const-string v5, "3GPP"

    const-string v6, "video/3gpp"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 215
    const/16 v0, 0x18

    const-string v5, "3G2"

    const-string v6, "video/3gpp2"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 216
    const-string v5, "3GPP2"

    const-string v6, "video/*"

    invoke-static {v5, v0, v6, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 217
    const/16 v0, 0x1b

    const-string v4, "MKV"

    const-string v5, "video/x-matroska"

    invoke-static {v4, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    const/16 v0, 0x1e

    const-string v4, "WEBM"

    const-string v5, "video/x-matroska"

    invoke-static {v4, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const/16 v0, 0x1c

    const-string v4, "TS"

    const-string v5, "video/mp2ts"

    invoke-static {v4, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const/16 v0, 0x1d

    const-string v3, "AVI"

    const-string v4, "video/avi"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/jrdcom/filemanager/utils/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/16 v0, 0x19

    const v3, 0xb981

    const-string v4, "WMV"

    const-string v5, "video/x-ms-wmv"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 226
    const/16 v0, 0x1a

    const-string v3, "ASF"

    const-string v4, "video/x-ms-asf"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    :cond_1
    const/16 v0, 0x20

    const/16 v3, 0x3801

    const-string v4, "JPG"

    const-string v5, "image/jpeg"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 230
    const-string v4, "JPEG"

    const-string v5, "image/jpeg"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 231
    const/16 v0, 0x21

    const/16 v3, 0x3807

    const-string v4, "GIF"

    const-string v5, "image/gif"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 232
    const/16 v0, 0x22

    const/16 v3, 0x380b

    const-string v4, "PNG"

    const-string v5, "image/png"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 233
    const/16 v0, 0x23

    const/16 v3, 0x3804

    const-string v4, "BMP"

    const-string v5, "image/x-ms-bmp"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 234
    const/16 v0, 0x24

    const-string v3, "WBMP"

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const/16 v0, 0x25

    const-string v3, "WEBP"

    const-string v4, "image/webp"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    const/16 v0, 0x29

    const v3, 0xba11

    const-string v4, "M3U"

    const-string v5, "audio/x-mpegurl"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 238
    const-string v4, "M3U"

    const-string v5, "application/x-mpegurl"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 239
    const/16 v0, 0x2a

    const v3, 0xba14

    const-string v4, "PLS"

    const-string v5, "audio/x-scpls"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 240
    const/16 v0, 0x2b

    const v3, 0xba10

    const-string v4, "WPL"

    const-string v5, "application/vnd.ms-wpl"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 242
    const/16 v0, 0x2c

    const-string v3, "M3U8"

    const-string v4, "application/vnd.apple.mpegurl"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v4, "audio/mpegurl"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const-string v4, "audio/x-mpegurl"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    const/16 v0, 0x33

    const-string v3, "FL"

    const-string v4, "application/x-android-drm-fl"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const/16 v0, 0x64

    const/16 v3, 0x3004

    const-string v4, "TXT"

    const-string v5, "text/plain"

    invoke-static {v4, v0, v5, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 249
    const/16 v0, 0x65

    const/16 v3, 0x3005

    const-string v4, "HTM"

    const-string v6, "text/html"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 250
    const-string v4, "HTML"

    const-string v6, "text/html"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 251
    const/16 v0, 0x66

    const-string v3, "PDF"

    const-string v4, "application/pdf"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const/16 v0, 0x68

    const v3, 0xba83

    const-string v4, "DOC"

    const-string v6, "application/msword"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 255
    const-string v4, "DOCX"

    const-string v6, "application/msword"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 257
    const v0, 0xba85

    const/16 v3, 0x69

    const-string v4, "XLSX"

    const-string v6, "application/vnd.ms-excel"

    invoke-static {v4, v3, v6, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 260
    const-string v4, "XLS"

    invoke-static {v4, v3, v6, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 263
    const-string v4, "XLSM"

    invoke-static {v4, v3, v6, v0}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 266
    const/16 v0, 0x6a

    const v3, 0xba86

    const-string v4, "PPT"

    const-string v6, "application/vnd.ms-powerpoint"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 268
    const-string v4, "PPTX"

    const-string v6, "application/vnd.ms-powerpoint"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 270
    const/16 v0, 0xa

    const v3, 0xb906

    const-string v4, "FLAC"

    const-string v6, "audio/flac"

    invoke-static {v4, v0, v6, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 271
    const/16 v0, 0x6b

    const-string v3, "ZIP"

    const-string v4, "application/zip"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const/16 v0, 0x6c

    const-string v3, "EML"

    const-string v4, "application/eml"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const/16 v0, 0x6d

    const-string v3, "RAR"

    const-string v4, "application/x-rar-compressed"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const/16 v0, 0x6e

    const-string v3, "JAR"

    const-string v4, "application/java-archive"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const/16 v0, 0x6f

    const-string v3, "SDP"

    const-string v4, "application/sdp"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    const/16 v0, 0x70

    const-string v3, "JAD"

    const-string v4, "application/java-archive"

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const/16 v0, 0xc8

    const-string v3, "video/mp2p"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    const-string v1, "MPEG"

    const-string v3, "video/mp2p"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    const/16 v0, 0xbe

    const-string v1, "ICS"

    const-string v3, "text/calendar"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const/16 v0, 0xbf

    const-string v1, "ICZ"

    const-string v3, "text/calendar"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    const/16 v0, 0xc0

    const-string v1, "VCF"

    const-string v3, "text/x-vcard"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    const/16 v0, 0xc1

    const-string v1, "VCS"

    const-string v3, "text/x-vcalendar"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    const/16 v0, 0xc2

    const-string v1, "APK"

    const-string v3, "application/vnd.android.package-archive"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    const/16 v0, 0xc3

    const-string v1, "INI"

    const-string v3, "application/octet-stream"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const/16 v0, 0xc4

    const-string v1, "DAT"

    invoke-static {v1, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const/16 v0, 0xc6

    const-string v1, "LOG"

    invoke-static {v1, v0, v5}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const/16 v0, 0xc5

    const-string v1, "XMIND"

    const-string v3, "application/xmind"

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string v1, "RM"

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const/16 v0, 0xc8

    const-string v1, "TIF"

    const-string v2, "image/tiff"

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 141
    sget-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 146
    invoke-static {p0, p1, p2}, Lcom/jrdcom/filemanager/utils/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    sget-object p1, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object p0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object p0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 338
    if-ltz v0, :cond_0

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 345
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 346
    if-lez v0, :cond_1

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 349
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;
    .locals 2

    .line 322
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 323
    if-gez v0, :cond_0

    .line 324
    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 353
    sget-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 354
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 363
    if-eqz p1, :cond_0

    .line 364
    sget-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 365
    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 369
    :cond_0
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 370
    if-lez p1, :cond_1

    .line 371
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 372
    sget-object p1, Lcom/jrdcom/filemanager/utils/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 373
    if-eqz p0, :cond_1

    .line 374
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 377
    :cond_1
    const/16 p0, 0x3000

    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 358
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->getFileType(Ljava/lang/String;)Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;

    move-result-object p0

    .line 359
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    .line 381
    sget-object v0, Lcom/jrdcom/filemanager/utils/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    .line 296
    const/16 v0, 0x10

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-le p0, v0, :cond_3

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x12

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    .line 318
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    .line 310
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    .line 329
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    .line 330
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/MediaFile;->isPlayListFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 330
    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    .line 314
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    .line 303
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWMAEnabled()Z
    .locals 6

    .line 153
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 155
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 156
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 157
    sget-object v5, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v4, v5, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return v2
.end method

.method private static isWMVEnabled()Z
    .locals 6

    .line 165
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 167
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 169
    sget-object v5, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v4, v5, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return v2
.end method
