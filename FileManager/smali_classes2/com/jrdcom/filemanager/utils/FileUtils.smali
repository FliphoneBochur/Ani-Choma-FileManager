.class public final Lcom/jrdcom/filemanager/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final DECIMAL_NUMBER:I = 0xa

.field private static final ROUNDING_OFF:D = 0.05

.field private static final TAG:Ljava/lang/String;

.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field private static final UNIT_INTERVAL:I = 0x400

.field private static achiveMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static audioMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static docMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static drmTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static imageMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private static mimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static multiMIMETypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static multiSelectMIMETypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static videoMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 54
    const-class v0, Lcom/jrdcom/filemanager/utils/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->drmTypeMap:Ljava/util/Map;

    .line 80
    const-string v1, "dcf"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->drmTypeMap:Ljava/util/Map;

    const-string v3, "dm"

    const-string v4, "application/vnd.oma.drm.message"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    .line 83
    const-string v5, "mp3"

    const-string v6, "audio/mp3"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v5, "wav"

    const-string v6, "audio/x-wav"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v5, "ogg"

    const-string v6, "audio/ogg"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "mid"

    const-string v7, "audio/midi"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "spm"

    const-string v8, "audio/*"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "wma"

    const-string v9, "audio/x-ms-wma"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "amr"

    const-string v9, "audio/amr"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "aac"

    const-string v9, "audio/aac"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "m4a"

    const-string v9, "audio/mp4a-latm"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "midi"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "awb"

    const-string v9, "audio/amr-wb"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "mpga"

    const-string v9, "audio/mpeg"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "xmf"

    const-string v10, "audio/xmf"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "flac"

    const-string v10, "audio/flac"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "imy"

    const-string v10, "audio/melody"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "diff"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "gsm"

    const-string v8, "audio/x-gsm"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "ape"

    const-string v8, "audio/x-ape"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "rm"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "qcp"

    const-string v8, "audio/qcelp"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "mxmf"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "rtttl"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v6, "3g2"

    const-string v7, "audio/mp4"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    const-string v8, "3gp"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    sget-object v7, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    .line 113
    const-string v7, "avi"

    const-string v9, "video/avi"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v7, "wmv"

    const-string v9, "video/x-ms-wmv"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v7, "mov"

    const-string v9, "video/quicktime"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v7, "rmvb"

    const-string v9, "video/*"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v7, "mp4"

    const-string v9, "video/mp4"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v9, "mpeg"

    const-string v10, "video/mpeg"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v9, "video/3gpp"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v11, "video/3gpp2"

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v6, "flv"

    const-string v11, "video/x-flv"

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v6, "m4v"

    const-string v11, "video/x-m4v"

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v6, "mkv"

    const-string v11, "video/x-matroska"

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v6, "mpg"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v6, "3gpp"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v9, "asf"

    const-string v10, "video/x-ms-asf"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v9, "webm"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    const-string v9, "divx"

    const-string v10, "video/flv"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    sget-object v9, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    .line 133
    const-string v9, "png"

    const-string v10, "image/png"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v9, "jpg"

    const-string v10, "image/jpeg"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v9, "gif"

    const-string v11, "image/gif"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v9, "bmp"

    const-string v11, "image/x-ms-bmp"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v9, "jpeg"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v2, "wbmp"

    const-string v4, "image/vnd.wap.wbmp"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v2, "webp"

    const-string v4, "image/webp"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v2, "jpeg+"

    const-string v4, "image/jpeg+"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    const-string v2, "jpg+"

    const-string v4, "image/jpeg+"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    .line 150
    const-string v2, "sdp"

    const-string v4, "application/sdp"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "jar"

    const-string v4, "application/java-archive"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "jad"

    const-string v4, "application/java-archive"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "zip"

    const-string v4, "application/zip"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "rar"

    const-string v4, "application/x-rar-compressed"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "tar"

    const-string v4, "application/x-tar"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "7z"

    const-string v4, "application/x-7z-compressed"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    const-string v2, "gz"

    const-string v4, "application/x-gzip"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 161
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "apk"

    const-string v4, "application/vnd.android.package-archive"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    .line 165
    const-string v2, "pdf"

    const-string v4, "application/pdf"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "doc"

    const-string v4, "application/msword"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "xls"

    const-string v9, "application/vnd.ms-excel"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "ppt"

    const-string v10, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "docx"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "xlsx"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "pptx"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "xlsm"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "vcs"

    const-string v9, "text/x-vcalendar"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    const-string v2, "ics"

    const-string v9, "text/calendar"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    sget-object v2, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "htm"

    const-string v9, "text/html"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "html"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "xml"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "php"

    const-string v11, "application/vnd.wap.xhtml+xml"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "rc"

    const-string v9, "text/plain"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "sh"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "vcf"

    const-string v11, "text/x-vcard"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "ICZ"

    const-string v11, "text/calendar"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "txt"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "log"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "dat"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "ini"

    const-string v9, "application/octet-stream"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "eml"

    const-string v9, "application/eml"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "rtf"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "keynote"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "numbers"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "xmind"

    const-string v4, "application/xmind"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "tif"

    const-string v4, "image/tiff"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "p12"

    const-string v4, "application/x-pkcs12"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "pfx"

    const-string v4, "application/x-pkcs12"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "pem"

    const-string v4, "application/x-pem-file"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v2, "cer"

    const-string v4, "application/pkix-cert"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v0, "_id"

    const-string v1, "_data"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addAssetPath(Ljava/lang/String;)I
    .locals 0

    .line 1014
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->addAssetPathNative(Ljava/lang/String;)I

    move-result p1

    .line 1015
    return p1
.end method

.method private final native addAssetPathNative(Ljava/lang/String;)I
.end method

.method private static calculateScale(IIII)F
    .locals 2

    .line 1055
    nop

    .line 1056
    mul-int v0, p1, p2

    mul-int v1, p3, p0

    if-gt v0, v1, :cond_0

    .line 1057
    int-to-float p0, p1

    int-to-float p1, p3

    div-float/2addr p0, p1

    goto :goto_0

    .line 1059
    :cond_0
    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    .line 1061
    :goto_0
    return p0
.end method

.method public static canUseMediaMetadataRetriever(Ljava/lang/String;)Z
    .locals 1

    .line 1806
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1807
    if-eqz p0, :cond_0

    const-string v0, "rm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rmvb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canUseMediaMetadataRetriever(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1811
    if-eqz p1, :cond_0

    const-string p0, "rm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "rmvb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static centerSquareScaleBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .line 653
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_2

    .line 656
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 657
    nop

    .line 658
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 659
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 661
    if-le v2, p2, :cond_4

    if-le v3, p2, :cond_4

    .line 662
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v1, v4

    .line 663
    if-le v2, v3, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, p2

    .line 664
    :goto_0
    if-le v2, v3, :cond_2

    move v1, p2

    .line 667
    :cond_2
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    nop

    .line 671
    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    .line 672
    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 675
    :try_start_1
    invoke-static {v2, v4, v1, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 676
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 677
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    goto :goto_1

    .line 678
    :catch_0
    move-exception p0

    .line 679
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 680
    :cond_3
    return-object v0

    .line 668
    :catch_1
    move-exception p0

    .line 669
    return-object v0

    .line 683
    :cond_4
    :goto_1
    return-object v1

    .line 654
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static checkFileName(Ljava/lang/String;)I
    .locals 2

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const/16 v0, 0x32

    if-le p0, v0, :cond_1

    .line 256
    const/4 p0, -0x3

    return p0

    .line 258
    :cond_1
    const/16 p0, 0x64

    return p0

    .line 260
    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 262
    return v1

    .line 251
    :cond_2
    :goto_0
    return v1
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 815
    if-nez p0, :cond_0

    .line 816
    return-void

    .line 818
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    goto :goto_0

    .line 819
    :catchall_0
    move-exception p0

    .line 822
    :goto_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9

    .line 844
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 845
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    .line 847
    const/4 p0, 0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    move v5, p0

    goto :goto_0

    .line 848
    :cond_0
    mul-double v5, v0, v2

    int-to-double v7, p2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 849
    :goto_0
    if-ne p1, v4, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    .line 850
    :cond_1
    int-to-double v6, p1

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v6

    .line 851
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 850
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 853
    :goto_1
    if-ge v0, v5, :cond_2

    .line 855
    return v5

    .line 858
    :cond_2
    if-ne p2, v4, :cond_3

    if-ne p1, v4, :cond_3

    .line 860
    return p0

    .line 861
    :cond_3
    if-ne p1, v4, :cond_4

    .line 862
    return v5

    .line 864
    :cond_4
    return v0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 826
    invoke-static {p0, p1, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    .line 830
    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    .line 831
    const/4 p1, 0x1

    .line 832
    :goto_0
    if-ge p1, p0, :cond_1

    .line 833
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 836
    :cond_0
    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    .line 839
    :cond_1
    return p1
.end method

.method public static createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 3

    .line 1211
    new-instance v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 1213
    invoke-virtual {v0, p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, p6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 1215
    invoke-virtual {v0, p5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 1216
    return-object v0
.end method

.method public static createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 3

    .line 1220
    new-instance v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 1222
    invoke-virtual {v0, p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 1224
    invoke-virtual {v0, p5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 1225
    invoke-virtual {v0, p7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 1226
    return-object v0
.end method

.method private static drawLockIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 605
    nop

    .line 606
    if-nez p1, :cond_1

    .line 607
    if-eqz p2, :cond_0

    .line 608
    const p1, 0x7f0700a4

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 610
    :cond_0
    const p1, 0x7f0700a5

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 606
    :cond_1
    move-object v0, p1

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060186

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0600c9

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 615
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 616
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 617
    nop

    .line 618
    nop

    .line 625
    const/4 v7, 0x0

    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 626
    int-to-float v1, v3

    div-float v1, p1, v1

    int-to-float v2, v4

    div-float v2, p1, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 627
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 628
    if-eqz p2, :cond_2

    .line 629
    const p2, 0x7f07006d

    invoke-static {p0, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 631
    :cond_2
    const p2, 0x7f07006e

    invoke-static {p0, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 635
    :goto_1
    float-to-int p1, p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 636
    :try_start_1
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 637
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 638
    int-to-float p3, p3

    invoke-virtual {p2, p0, p3, p3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    goto :goto_3

    .line 640
    :catch_0
    move-exception p0

    move-object v7, p1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    move-object p1, v7

    .line 644
    :goto_3
    return-object p1
.end method

.method public static genrateNextNewName(Ljava/io/File;)Ljava/io/File;
    .locals 8

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    nop

    .line 326
    nop

    .line 327
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 328
    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 329
    if-eq p0, v2, :cond_0

    .line 330
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_0
    const-string v4, ""

    :goto_0
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "("

    if-eqz v5, :cond_1

    .line 336
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 337
    if-eq v5, v2, :cond_1

    .line 338
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 339
    const-string v7, "[0-9]+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    add-int/lit8 v2, v2, 0x1

    .line 343
    :try_start_1
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    goto :goto_2

    .line 344
    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    move v2, v3

    .line 345
    :goto_1
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 350
    :cond_1
    move v2, v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result v2

    .line 354
    if-gez v2, :cond_4

    .line 355
    const/4 v5, -0x3

    const/4 v6, 0x0

    if-ne v2, v5, :cond_3

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 359
    if-le v2, v5, :cond_2

    .line 360
    new-instance v6, Ljava/lang/StringBuffer;

    sub-int/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/io/File;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 363
    :cond_2
    return-object v6

    .line 365
    :cond_3
    return-object v6

    .line 367
    :cond_4
    new-instance p0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static genrateNextNewName4Image(Ljava/io/File;Z)Ljava/io/File;
    .locals 7

    .line 372
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 374
    nop

    .line 375
    nop

    .line 376
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 377
    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 378
    if-eq p0, v2, :cond_0

    .line 379
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 380
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_0
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "("

    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 386
    if-eq v4, v2, :cond_1

    .line 387
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v6, "[0-9]+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    add-int/lit8 v2, v2, 0x1

    .line 392
    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    goto :goto_1

    .line 393
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move v2, v3

    .line 394
    :goto_0
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 399
    :cond_1
    move v2, v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 401
    const-string v2, ".jpeg"

    .line 402
    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 405
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result v5

    .line 408
    if-gez v5, :cond_6

    .line 409
    const/4 v4, -0x3

    const/4 v6, 0x0

    if-ne v5, v4, :cond_5

    .line 411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 413
    if-le v4, v5, :cond_4

    .line 414
    new-instance v6, Ljava/lang/StringBuffer;

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    if-eqz p1, :cond_3

    .line 416
    new-instance p0, Ljava/io/File;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 418
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 420
    :cond_4
    return-object v6

    .line 422
    :cond_5
    return-object v6

    .line 424
    :cond_6
    new-instance p0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getAPKThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;
    .locals 13

    .line 895
    const-string v0, "parsePackage"

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    .line 897
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 898
    return-object v3

    .line 900
    :cond_0
    nop

    .line 902
    nop

    .line 903
    nop

    .line 905
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "android.content.pm.PackageParser"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 906
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 907
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 908
    nop

    .line 909
    nop

    .line 910
    new-array v7, v5, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 912
    :try_start_1
    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 913
    :try_start_2
    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 923
    goto :goto_1

    .line 914
    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v8, v3

    .line 915
    :goto_0
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 917
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 918
    aput-object v1, v7, v2

    .line 919
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 922
    goto :goto_1

    .line 920
    :catch_2
    move-exception v6

    .line 921
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, v3

    .line 924
    :goto_1
    if-eqz v8, :cond_4

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 927
    :cond_1
    nop

    .line 930
    const/4 v8, 0x3

    const/4 v9, 0x2

    :try_start_6
    new-array v10, v9, [Ljava/lang/Class;

    .line 931
    const-class v11, Ljava/io/File;

    aput-object v11, v10, v2

    .line 932
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    .line 933
    invoke-virtual {v4, v0, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 934
    :try_start_7
    new-array v7, v9, [Ljava/lang/Object;

    .line 935
    aput-object p1, v7, v2

    .line 936
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 956
    goto :goto_3

    .line 937
    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v10, v3

    .line 938
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 940
    const/4 p1, 0x4

    :try_start_9
    new-array v11, p1, [Ljava/lang/Class;

    .line 941
    const-class v12, Ljava/io/File;

    aput-object v12, v11, v2

    .line 942
    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v5

    .line 943
    const-class v12, Landroid/util/DisplayMetrics;

    aput-object v12, v11, v9

    .line 944
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v8

    .line 945
    invoke-virtual {v4, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 946
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 947
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 948
    new-array v7, p1, [Ljava/lang/Object;

    .line 949
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object p1, v7, v2

    .line 950
    aput-object v1, v7, v5

    .line 951
    aput-object v0, v7, v9

    .line 952
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 955
    goto :goto_3

    .line 953
    :catch_5
    move-exception p1

    .line 954
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 957
    :goto_3
    if-nez v10, :cond_2

    .line 958
    nop

    .line 1000
    :try_start_b
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1003
    goto :goto_4

    .line 1001
    :catch_6
    move-exception p0

    .line 1002
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 958
    :goto_4
    return-object v3

    .line 961
    :cond_2
    :try_start_c
    invoke-virtual {v10, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 962
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "applicationInfo"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 963
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 964
    const-string v0, "android.content.res.AssetManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 965
    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 966
    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 967
    :try_start_d
    new-array v6, v5, [Ljava/lang/Class;

    .line 968
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 969
    const-string v7, "addAssetPath"

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 970
    new-array v7, v5, [Ljava/lang/Object;

    .line 971
    aput-object v1, v7, v2

    .line 972
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v1, "close"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 974
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 975
    new-array v1, v8, [Ljava/lang/Class;

    .line 976
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v2

    .line 977
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v5

    .line 978
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v9

    .line 979
    const-class v6, Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 980
    new-array v6, v8, [Ljava/lang/Object;

    .line 981
    aput-object v4, v6, v2

    .line 982
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    aput-object v7, v6, v5

    .line 983
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    aput-object p0, v6, v9

    .line 984
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    .line 985
    if-eqz p1, :cond_3

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_3

    .line 987
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 988
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 990
    :try_start_f
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 994
    move-object v3, p0

    goto :goto_5

    .line 991
    :catch_7
    move-exception v5

    .line 992
    :try_start_10
    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 993
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object v3, p0

    .line 1000
    :cond_3
    :goto_5
    :try_start_11
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 1003
    :goto_6
    goto :goto_a

    .line 1001
    :catch_8
    move-exception p0

    .line 1002
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1004
    goto :goto_a

    .line 996
    :catch_9
    move-exception p0

    goto :goto_9

    .line 999
    :catchall_0
    move-exception p0

    goto :goto_b

    .line 996
    :catch_a
    move-exception p0

    move-object v0, v3

    goto :goto_9

    .line 925
    :cond_4
    :goto_7
    nop

    .line 1000
    :try_start_12
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 1003
    goto :goto_8

    .line 1001
    :catch_b
    move-exception p0

    .line 1002
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 925
    :goto_8
    return-object v3

    .line 999
    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_b

    .line 996
    :catch_c
    move-exception p0

    move-object v0, v3

    move-object v4, v0

    .line 997
    :goto_9
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1000
    :try_start_14
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_6

    .line 1005
    :goto_a
    return-object v3

    .line 999
    :catchall_2
    move-exception p0

    move-object v3, v0

    .line 1000
    :goto_b
    :try_start_15
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    .line 1003
    goto :goto_c

    .line 1001
    :catch_d
    move-exception p1

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1004
    :goto_c
    throw p0
.end method

.method public static getAudioMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1114
    const-string v0, "mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string p0, "audio/mp3"

    return-object p0

    .line 1116
    :cond_0
    const-string v0, "ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    const-string p0, "audio/ogg"

    return-object p0

    .line 1118
    :cond_1
    const-string v0, "wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1119
    const-string p0, "audio/x-ms-wma"

    return-object p0

    .line 1120
    :cond_2
    const-string v0, "awb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1121
    const-string p0, "audio/amr-wb"

    return-object p0

    .line 1122
    :cond_3
    const-string v0, "aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1125
    :cond_4
    return-object p0

    .line 1123
    :cond_5
    :goto_0
    const-string p0, "audio/*"

    return-object p0
.end method

.method private static getAudioThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1021
    nop

    .line 1022
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1024
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p1

    .line 1026
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 1027
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1028
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1029
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1030
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v5, 0x80

    invoke-static {v5, v5, v2, v4}, Lcom/jrdcom/filemanager/utils/FileUtils;->calculateScale(IIII)F

    move-result v2

    .line 1031
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1032
    int-to-float v5, v4

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    .line 1033
    add-int/lit8 v4, v4, -0x1

    .line 1035
    :cond_0
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1036
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1037
    array-length v2, p1

    invoke-static {p1, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1045
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1048
    :goto_0
    goto :goto_1

    .line 1046
    :catch_0
    move-exception p0

    .line 1047
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1049
    goto :goto_1

    .line 1044
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1041
    :catch_1
    move-exception p1

    .line 1042
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    :try_start_3
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1039
    :catch_2
    move-exception p1

    .line 1040
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1045
    :try_start_5
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1050
    :goto_1
    return-object v0

    .line 1045
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1048
    goto :goto_3

    .line 1046
    :catch_3
    move-exception p0

    .line 1047
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1049
    :goto_3
    throw p1
.end method

.method public static getCategoryMIME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    .line 1546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 1547
    if-eqz p4, :cond_0

    .line 1548
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 1550
    return-object p1

    .line 1554
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1555
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1556
    const-string p0, "mime_type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 1558
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v4, p0

    .line 1559
    const/4 p1, 0x0

    .line 1561
    :try_start_0
    const-string v3, "_data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1562
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1563
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1564
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 1565
    nop

    .line 1569
    if-eqz p1, :cond_1

    .line 1570
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1565
    :cond_1
    return-object p0

    .line 1569
    :cond_2
    if-eqz p1, :cond_3

    .line 1570
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1573
    :cond_3
    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1575
    const-string p1, "unknown_ext_mimeType"

    goto :goto_0

    .line 1569
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 1570
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_4
    throw p0

    .line 1578
    :cond_5
    :goto_0
    return-object p1
.end method

.method public static getContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 1265
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1269
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 1271
    :try_start_0
    iget-object p3, p1, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "com.jrdcom.filemanager.bb.fileProvider"

    invoke-static {p3, v1, p0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    goto :goto_0

    .line 1272
    :catch_0
    move-exception p3

    .line 1273
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1275
    :goto_0
    if-eqz v0, :cond_0

    .line 1276
    return-object v0

    .line 1280
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v1, "file"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 1281
    const-string p3, "video/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x7

    if-eqz p3, :cond_1

    .line 1282
    nop

    .line 1283
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1282
    const-string p3, "video"

    invoke-static {p2, p3, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1284
    :cond_1
    const-string p3, "audio/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1285
    nop

    .line 1286
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1285
    const-string p3, "audio"

    invoke-static {p2, p3, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1287
    :cond_2
    const-string p3, "image/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1288
    nop

    .line 1289
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1288
    const-string p3, "images"

    invoke-static {p2, p3, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1290
    :cond_3
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1291
    nop

    .line 1292
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1291
    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    .line 1296
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1297
    :cond_5
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1299
    :cond_6
    return-object v0
.end method

.method public static getFileCategory(Ljava/lang/String;)I
    .locals 2

    .line 223
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 224
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 225
    return v0

    .line 227
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->videoMimeTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    const/4 p0, 0x5

    return p0

    .line 229
    :cond_1
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->audioMimeTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const/4 p0, 0x3

    return p0

    .line 231
    :cond_2
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->imageMimeTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const/4 p0, 0x4

    return p0

    .line 233
    :cond_3
    const-string v1, "apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const/4 p0, 0x7

    return p0

    .line 235
    :cond_4
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->docMimeTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    const/4 p0, 0x6

    return p0

    .line 237
    :cond_5
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->achiveMimeTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 238
    const/16 p0, 0x8

    return p0

    .line 240
    :cond_6
    return v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 274
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    return-object v1

    .line 277
    :cond_0
    nop

    .line 278
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 279
    if-lez v0, :cond_1

    .line 280
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_1
    return-object v1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 293
    if-ltz v0, :cond_0

    .line 294
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    return-object p0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 307
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 308
    if-ltz v0, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 311
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getFilesCount(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    .line 1237
    nop

    .line 1238
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1239
    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/%\" "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "and _data not like \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%/%\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1246
    sget-object p1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL selection is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-wide/16 v7, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1250
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    int-to-long v0, p1

    .line 1251
    if-eqz p0, :cond_1

    move-wide v7, v0

    .line 1252
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1253
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 1255
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v7

    .line 1259
    :cond_1
    goto :goto_1

    .line 1257
    :catch_0
    move-exception p0

    .line 1258
    sget-object p1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilesCount Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 1260
    :goto_1
    return-wide v0
.end method

.method public static getImageThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;
    .locals 12

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 688
    nop

    .line 689
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 692
    nop

    .line 693
    nop

    .line 695
    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read exif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 700
    :goto_0
    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 701
    const-string v1, "Orientation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 702
    if-eq v0, v2, :cond_3

    .line 703
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    const/16 v0, 0x10e

    goto :goto_2

    .line 705
    :cond_1
    const/16 v0, 0x5a

    .line 706
    goto :goto_2

    .line 708
    :cond_2
    const/16 v0, 0xb4

    .line 709
    goto :goto_2

    .line 715
    :cond_3
    :goto_1
    move v0, v8

    :goto_2
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "degree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v0

    goto :goto_3

    .line 700
    :cond_4
    move v9, v8

    .line 719
    :goto_3
    const-string v0, "_data"

    const-string v10, "_id"

    const-string v11, "orientation"

    filled-new-array {v0, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 721
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 724
    nop

    .line 725
    const/high16 v1, 0x40000

    const/16 v2, 0x100

    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 726
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 727
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 728
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 730
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 731
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 732
    invoke-virtual {p1, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setOrientation(I)V

    goto :goto_4

    .line 726
    :cond_5
    move v3, v8

    .line 736
    :goto_4
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 737
    iput-boolean v8, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 738
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 739
    int-to-long v3, v3

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5, p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 741
    if-nez v7, :cond_6

    .line 742
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-static {v2, v1, p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->makeBitmapByStream(IILjava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 747
    :cond_6
    goto :goto_5

    .line 748
    :cond_7
    invoke-virtual {p1, v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->setOrientation(I)V

    .line 749
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-static {v2, v1, p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->makeBitmapByStream(IILjava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :goto_5
    if-eqz v0, :cond_8

    .line 758
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 757
    :catchall_0
    move-exception p0

    goto :goto_8

    .line 754
    :catch_1
    move-exception p0

    .line 755
    :try_start_2
    sget-object p1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "Exception occured when getImageThumbnail():"

    invoke-static {p1, v1, p0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    if-eqz v0, :cond_8

    .line 758
    goto :goto_6

    .line 761
    :cond_8
    :goto_7
    return-object v7

    .line 757
    :goto_8
    if-eqz v0, :cond_9

    .line 758
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_9
    throw p0
.end method

.method public static getMIME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    .line 1510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 1511
    if-eqz p4, :cond_0

    .line 1512
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 1514
    return-object p1

    .line 1518
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1519
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1520
    const-string p0, "mime_type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 1522
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v4, p0

    .line 1523
    const/4 p1, 0x0

    .line 1525
    :try_start_0
    const-string v3, "_data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1526
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1527
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 1529
    nop

    .line 1533
    if-eqz p1, :cond_1

    .line 1534
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1529
    :cond_1
    return-object p0

    .line 1533
    :cond_2
    if-eqz p1, :cond_3

    .line 1534
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1537
    :cond_3
    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1539
    const-string p1, "unknown_ext_mimeType"

    goto :goto_0

    .line 1533
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 1534
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1536
    :cond_4
    throw p0

    .line 1542
    :cond_5
    :goto_0
    return-object p1
.end method

.method public static getMIMEType(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1623
    nop

    .line 1624
    nop

    .line 1625
    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    .line 1626
    const-string v0, "*/*"

    if-lez p3, :cond_5

    .line 1627
    if-eqz p0, :cond_0

    .line 1628
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1630
    return-object v0

    .line 1633
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1634
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1635
    const-string p0, "mime_type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    .line 1637
    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v5, p0

    .line 1638
    const/4 p1, 0x0

    .line 1640
    :try_start_0
    const-string v4, "_data=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1641
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1642
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 1644
    nop

    .line 1648
    if-eqz p1, :cond_1

    .line 1649
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1644
    :cond_1
    return-object p0

    .line 1643
    :cond_2
    move-object v0, p0

    .line 1648
    :cond_3
    if-eqz p1, :cond_5

    .line 1649
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1648
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 1649
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1651
    :cond_4
    throw p0

    .line 1654
    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getMediaContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 1304
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.jrdcom.filemanager.bb.fileProvider"

    if-eqz v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1306
    const-string v1, "video/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    .line 1307
    nop

    .line 1308
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1307
    const-string v0, "video"

    invoke-static {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 1309
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1310
    nop

    .line 1311
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1310
    const-string v0, "audio"

    invoke-static {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1312
    :cond_1
    const-string v1, "image/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1313
    nop

    .line 1314
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1313
    const-string v0, "images"

    invoke-static {p2, v0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1317
    :cond_2
    const-string v1, "/ogg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1318
    iget-object p2, p1, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, p0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1319
    :cond_3
    const-string v1, "/x-vcard"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1320
    iget-object p2, p1, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, p0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1321
    :cond_4
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1324
    nop

    .line 1325
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1324
    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->queryFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;

    move-result-object v0

    .line 1329
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1331
    :cond_6
    :try_start_0
    iget-object p1, p1, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    goto :goto_1

    .line 1332
    :catch_0
    move-exception p1

    .line 1333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1335
    :goto_1
    if-eqz v0, :cond_7

    .line 1336
    return-object v0

    .line 1340
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1341
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1343
    :cond_9
    return-object v0
.end method

.method public static getMediaMetadataMIME(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1498
    nop

    .line 1499
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1501
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1502
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    goto :goto_0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured when getMIME():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 1506
    :goto_0
    return-object p0
.end method

.method public static getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1065
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    const-string p0, "unknown_ext_mimeType"

    return-object p0

    .line 1069
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->multiMIMETypeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->canUseMediaMetadataRetriever(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaMetadataMIME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1071
    if-eqz p0, :cond_1

    .line 1072
    return-object p0

    .line 1076
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1077
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1078
    sget-object p0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v0, "jpeg+"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1081
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1083
    sget-object p0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    const-string v0, "jpg+"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1087
    :cond_3
    sget-object p0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1110
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMimeTypeByExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1105
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1106
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMimeTypeMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1591
    :cond_0
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1592
    const-string v0, "_data"

    const-string v2, "mime_type"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1594
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    .line 1595
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1596
    nop

    .line 1598
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1599
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1600
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1601
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1602
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1603
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1604
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1605
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    :cond_1
    goto :goto_0

    .line 1614
    :cond_2
    if-eqz v1, :cond_3

    .line 1615
    goto :goto_1

    .line 1614
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1611
    :catch_0
    move-exception p0

    .line 1612
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1614
    if-eqz v1, :cond_3

    .line 1615
    goto :goto_1

    .line 1609
    :catch_1
    move-exception p0

    .line 1610
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1614
    if-eqz v1, :cond_3

    .line 1615
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1619
    :cond_3
    return-object p1

    .line 1614
    :goto_2
    if-eqz v1, :cond_4

    .line 1615
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1617
    :cond_4
    throw p0
.end method

.method public static getOriginalFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1797
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    return-object p0

    .line 1799
    :catch_0
    move-exception p0

    .line 1802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSafeMIME(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1201
    :try_start_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1202
    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1203
    :catch_0
    move-exception p0

    .line 1204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1207
    const-string p0, "unknown"

    return-object p0
.end method

.method public static getSelectMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1091
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    const-string p0, "unknown_ext_mimeType"

    return-object p0

    .line 1095
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->multiSelectMIMETypeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->canUseMediaMetadataRetriever(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaMetadataMIME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1097
    if-eqz p0, :cond_1

    .line 1098
    return-object p0

    .line 1101
    :cond_1
    sget-object p0, Lcom/jrdcom/filemanager/utils/FileUtils;->mimeTypeMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getShareMimeType(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "application/x-ogg"

    const-string v2, "audio/ogg"

    const-string v3, "application/ogg"

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    .line 1403
    if-eqz p3, :cond_0

    .line 1404
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1406
    return-object p1

    .line 1410
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1411
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1412
    const-string p0, "mime_type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    .line 1416
    const/4 p0, 0x1

    new-array v8, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p4, v8, p0

    .line 1419
    const/4 p1, 0x0

    .line 1421
    :try_start_0
    const-string v7, "_data=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1422
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1423
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 1425
    nop

    .line 1429
    if-eqz p1, :cond_1

    .line 1430
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1425
    :cond_1
    return-object p0

    .line 1429
    :cond_2
    if-eqz p1, :cond_3

    .line 1430
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1434
    :cond_3
    invoke-static {p4}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1436
    const-string p0, "unknown_ext_mimeType"

    .line 1439
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, p0

    goto :goto_1

    .line 1440
    :cond_6
    :goto_0
    move-object p1, v2

    .line 1442
    :cond_7
    :goto_1
    goto :goto_2

    .line 1429
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_8

    .line 1430
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1432
    :cond_8
    throw p0

    .line 1442
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    if-nez p2, :cond_7

    .line 1443
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1444
    :cond_a
    move-object p1, v2

    .line 1447
    :cond_b
    :goto_2
    return-object p1
.end method

.method public static getSingleFileMIME(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Ljava/lang/String;
    .locals 9

    .line 1451
    nop

    .line 1452
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 1454
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1455
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1457
    return-object p1

    .line 1454
    :cond_0
    move-object p1, v2

    .line 1460
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1461
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1462
    const-string p0, "mime_type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    .line 1464
    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v0, v7, p0

    .line 1465
    nop

    .line 1467
    :try_start_0
    const-string v6, "_data=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1468
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1469
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    .line 1471
    nop

    .line 1475
    if-eqz v2, :cond_2

    .line 1476
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1471
    :cond_2
    return-object p1

    .line 1475
    :cond_3
    if-eqz v2, :cond_4

    .line 1476
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1479
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->canUseMediaMetadataRetriever(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1480
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1482
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1483
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1486
    goto :goto_0

    .line 1484
    :catch_0
    move-exception p0

    .line 1485
    sget-object p2, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured when getMIME():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1487
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object p1

    .line 1489
    :cond_5
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getSelectMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1491
    const-string v2, "unknown_ext_mimeType"

    goto :goto_1

    .line 1475
    :catchall_0
    move-exception p0

    if-eqz v2, :cond_6

    .line 1476
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1478
    :cond_6
    throw p0

    .line 1494
    :cond_7
    :goto_1
    return-object v2
.end method

.method public static getVideoThumbnail(Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;
    .locals 4

    .line 869
    nop

    .line 870
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 872
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 873
    const-class p0, Landroid/media/MediaMetadataRetriever;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 874
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 875
    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 876
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 888
    :goto_0
    goto :goto_1

    .line 886
    :catch_0
    move-exception p0

    .line 887
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 889
    goto :goto_1

    .line 876
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 884
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 881
    :catch_1
    move-exception p0

    .line 882
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 885
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 879
    :catch_2
    move-exception p0

    .line 880
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 885
    :try_start_8
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 877
    :catch_3
    move-exception p0

    .line 878
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 885
    :try_start_a
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    .line 890
    :goto_1
    return-object v1

    .line 885
    :goto_2
    :try_start_b
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 888
    goto :goto_3

    .line 886
    :catch_4
    move-exception v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 889
    :goto_3
    throw p0
.end method

.method public static isDrmFiles(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    .line 1664
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1665
    return v0

    .line 1667
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1668
    return v0

    .line 1670
    :cond_1
    nop

    .line 1671
    new-array p2, v0, [Ljava/lang/String;

    .line 1672
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1673
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1674
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDRMColumn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1675
    invoke-static {}, Lcom/jrdcom/filemanager/utils/FileUtils;->isQcomDrm()Z

    move-result p0

    const-string v7, "is_drm"

    const-string v8, "tct_drm_right_type"

    const-string v9, "tct_drm_type"

    const-string v10, "tct_is_drm"

    if-eqz p0, :cond_2

    .line 1676
    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    .line 1677
    :cond_2
    invoke-static {}, Lcom/jrdcom/filemanager/utils/FileUtils;->isMTKDrm()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1678
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    .line 1677
    :cond_3
    move-object v3, p2

    .line 1684
    :goto_0
    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    aput-object p1, v5, v0

    .line 1685
    const/4 p1, 0x0

    .line 1687
    :try_start_0
    const-string v4, "_data=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1688
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1689
    invoke-static {}, Lcom/jrdcom/filemanager/utils/FileUtils;->isQcomDrm()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1690
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1691
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 1692
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 1693
    if-nez p2, :cond_4

    .line 1694
    goto :goto_1

    .line 1695
    :cond_4
    if-ne p2, p0, :cond_5

    .line 1696
    move v0, p0

    .line 1698
    :cond_5
    :goto_1
    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/jrdcom/filemanager/utils/FileUtils;->isMTKDrm()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1699
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    if-nez p2, :cond_7

    .line 1701
    goto :goto_2

    .line 1702
    :cond_7
    if-ne p2, p0, :cond_8

    .line 1703
    move v0, p0

    .line 1730
    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 1731
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1734
    :cond_9
    return v0

    .line 1730
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_a

    .line 1731
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1733
    :cond_a
    throw p0

    .line 1681
    :cond_b
    return v0
.end method

.method public static isExtensionChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 482
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    return v1

    .line 486
    :cond_0
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 488
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    .line 489
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 490
    :cond_2
    const/4 p0, 0x1

    return p0

    .line 492
    :cond_3
    return v1
.end method

.method private static isMTKDrm()Z
    .locals 1

    .line 1755
    :try_start_0
    const-string v0, "com.mediatek.drm.OmaDrmClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1756
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1757
    const/4 v0, 0x1

    return v0

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1761
    :catch_1
    move-exception v0

    .line 1762
    invoke-virtual {v0}, Ljava/lang/LinkageError;->printStackTrace()V

    goto :goto_0

    .line 1759
    :catch_2
    move-exception v0

    .line 1760
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1765
    :cond_0
    :goto_0
    nop

    .line 1766
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isQcomDrm()Z
    .locals 1

    .line 1739
    :try_start_0
    const-string v0, "com.tct.drm.TctDrmManagerClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1740
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1741
    const/4 v0, 0x1

    return v0

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1745
    :catch_1
    move-exception v0

    .line 1746
    invoke-virtual {v0}, Ljava/lang/LinkageError;->printStackTrace()V

    goto :goto_0

    .line 1743
    :catch_2
    move-exception v0

    .line 1744
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1749
    :cond_0
    :goto_0
    nop

    .line 1750
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isShowHideCount([Ljava/io/File;)I
    .locals 4

    .line 1775
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1777
    :cond_0
    nop

    .line 1778
    sget-object v1, Lcom/jrdcom/filemanager/utils/FileUtils;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v1, :cond_2

    .line 1779
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1780
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 1781
    add-int/lit8 v1, v1, 0x1

    .line 1779
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1785
    :cond_2
    array-length v1, p0

    .line 1787
    :cond_3
    return v1
.end method

.method public static isStartWithDot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 504
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    .line 505
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    .line 507
    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 508
    const/4 p0, 0x1

    return p0

    .line 510
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static makeBitmapByStream(IILjava/io/File;)Landroid/graphics/Bitmap;
    .locals 5

    .line 773
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 777
    :cond_0
    nop

    .line 778
    nop

    .line 780
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 781
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 782
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 783
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 784
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 785
    iget-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 789
    :cond_1
    invoke-static {v2, p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    iput p0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 791
    const/4 p0, 0x0

    iput-boolean p0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 793
    iput-boolean p0, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 794
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 795
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 796
    :try_start_2
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    nop

    .line 804
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 807
    :goto_0
    goto :goto_4

    .line 805
    :catch_0
    move-exception p0

    goto :goto_0

    .line 802
    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_5

    .line 797
    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_3

    .line 787
    :cond_2
    :goto_1
    nop

    .line 802
    nop

    .line 804
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 807
    goto :goto_2

    .line 805
    :catch_2
    move-exception p0

    .line 787
    :goto_2
    return-object v0

    .line 797
    :catch_3
    move-exception p1

    goto :goto_3

    .line 802
    :catchall_1
    move-exception p1

    goto :goto_5

    .line 797
    :catch_4
    move-exception p1

    move-object v1, v0

    .line 800
    :goto_3
    :try_start_5
    sget-object p0, Lcom/jrdcom/filemanager/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode stream: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 802
    if-eqz v1, :cond_3

    .line 804
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 810
    :cond_3
    :goto_4
    return-object v0

    .line 802
    :catchall_2
    move-exception p1

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_4

    .line 804
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 807
    goto :goto_6

    .line 805
    :catch_5
    move-exception p0

    .line 809
    :cond_4
    :goto_6
    throw p1

    .line 774
    :cond_5
    :goto_7
    return-object v0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 766
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 767
    :catch_0
    move-exception p0

    .line 768
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;
    .locals 8

    .line 1347
    const-string v0, "\'"

    .line 1348
    iget-object p1, p1, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1349
    const-string p1, "content://media/external/file"

    .line 1350
    nop

    .line 1351
    nop

    .line 1353
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\'\'"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1355
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1356
    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1359
    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1361
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    if-eqz p0, :cond_0

    .line 1365
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1361
    :cond_0
    return-object p1

    .line 1364
    :catchall_0
    move-exception p1

    move-object v7, p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 1365
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1368
    :cond_2
    return-object v7

    .line 1364
    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v7, :cond_3

    .line 1365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_3
    throw p1
.end method

.method public static queryMedia(Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/FileInfoManager;)Landroid/net/Uri;
    .locals 8

    .line 1372
    const-string v0, "\'"

    .line 1373
    iget-object p2, p2, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    .line 1375
    return-object v7

    .line 1377
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1378
    nop

    .line 1379
    nop

    .line 1381
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\'\'"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1383
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1384
    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data=\'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1387
    if-eqz p0, :cond_2

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1388
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1389
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    if-eqz p0, :cond_1

    .line 1393
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1389
    :cond_1
    return-object p1

    .line 1392
    :catchall_0
    move-exception p1

    move-object v7, p0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 1393
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1396
    :cond_3
    return-object v7

    .line 1392
    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v7, :cond_4

    .line 1393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1395
    :cond_4
    throw p1
.end method

.method public static queryThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;ZZLjava/lang/String;Lcom/jrdcom/filemanager/drm/DrmManager;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 520
    move-object v0, p2

    move-object/from16 v1, p6

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 521
    return-object v3

    .line 523
    :cond_0
    nop

    .line 524
    const-string v2, "audio/"

    const-string v4, "video/"

    const/16 v5, 0x87

    const-string v6, "image/"

    if-eqz p3, :cond_6

    .line 525
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 526
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 527
    move-object/from16 v0, p5

    .line 529
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const v8, 0x7f0600c8

    if-eqz v6, :cond_2

    .line 530
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 531
    nop

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 531
    invoke-virtual {v1, v7, v2, v3}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 533
    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getVideoThumbnail(Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 534
    invoke-virtual {v1, v2, v7, v3}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    nop

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 537
    invoke-virtual {v1, v7, v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 540
    :cond_4
    :goto_0
    sget v1, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 541
    move-object v1, p0

    move/from16 v2, p4

    invoke-static {p0, v3, v2, v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->drawLockIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 540
    :cond_5
    move-object v1, p0

    .line 543
    :goto_1
    move-object v6, v3

    goto/16 :goto_4

    .line 544
    :cond_6
    move-object v1, p0

    if-nez v0, :cond_7

    .line 545
    return-object v3

    .line 549
    :cond_7
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070079

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->centerSquareScaleBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 552
    return-object v0

    .line 557
    :cond_8
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 558
    const-string v6, "unknown_ext_mimeType"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    .line 561
    :cond_9
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 562
    const-string v4, "video/3gpp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 563
    const-string v4, "video/3gpp2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 564
    const-string v4, "unknown_3gpp_mimeType"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    .line 566
    :cond_a
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 567
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getAudioThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v6, v3

    goto :goto_4

    .line 568
    :cond_b
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 569
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getAPKThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v6, v3

    goto :goto_4

    .line 568
    :cond_c
    move-object v6, v3

    goto :goto_4

    .line 565
    :cond_d
    :goto_2
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getVideoThumbnail(Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v6, v3

    goto :goto_4

    .line 560
    :cond_e
    :goto_3
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getImageThumbnail(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v6, v3

    .line 575
    :goto_4
    if-eqz v6, :cond_13

    .line 576
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 577
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getOrientation()I

    move-result v0

    if-nez v0, :cond_f

    .line 578
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5

    .line 579
    :cond_f
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getOrientation()I

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_10

    .line 580
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5

    .line 581
    :cond_10
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getOrientation()I

    move-result v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_11

    .line 582
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5

    .line 583
    :cond_11
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getOrientation()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_12

    .line 584
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 586
    :cond_12
    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 590
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->centerSquareScaleBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 591
    return-object v0
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 596
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 597
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 599
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 601
    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static safeFileSizeToString(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10

    .line 1138
    invoke-static {p0, p3, p4}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1141
    const v1, 0x7f0c00ee

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1142
    const v2, 0x7f0c00f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1143
    const v3, 0x7f0c00f1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1144
    const v4, 0x7f0c00ef

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1145
    const v5, 0x7f0c00f2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1146
    nop

    .line 1147
    const-wide/16 v5, 0xa

    cmp-long v5, p3, v5

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    if-gez v5, :cond_0

    .line 1148
    move-object v5, v1

    goto :goto_1

    .line 1150
    :cond_0
    nop

    .line 1151
    long-to-double p3, p3

    div-double/2addr p3, v6

    .line 1152
    cmpl-double v5, p3, v6

    if-lez v5, :cond_1

    .line 1153
    div-double/2addr p3, v6

    .line 1154
    move-object v5, v3

    goto :goto_0

    .line 1152
    :cond_1
    move-object v5, v2

    .line 1156
    :goto_0
    cmpl-double v8, p3, v6

    if-lez v8, :cond_2

    .line 1157
    div-double/2addr p3, v6

    .line 1158
    move-object v5, v4

    .line 1160
    :cond_2
    cmpl-double p3, p3, v6

    if-lez p3, :cond_3

    .line 1161
    nop

    .line 1162
    move-object v5, p0

    .line 1166
    :cond_3
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, "/"

    if-eqz p3, :cond_4

    .line 1168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1171
    :cond_4
    nop

    .line 1172
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v8, 0x0

    if-eqz p3, :cond_5

    .line 1173
    nop

    .line 1174
    long-to-double p0, p1

    div-double/2addr p0, v6

    goto :goto_2

    .line 1175
    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1176
    nop

    .line 1177
    long-to-double p0, p1

    const-wide/high16 p2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, p2

    move-object v2, v3

    goto :goto_2

    .line 1178
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1179
    nop

    .line 1180
    long-to-double p0, p1

    const-wide/high16 p2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, p2

    move-object v2, v4

    goto :goto_2

    .line 1181
    :cond_7
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1182
    nop

    .line 1183
    long-to-double p1, p1

    const-wide/high16 v1, 0x4270000000000000L    # 1.099511627776E12

    div-double/2addr p1, v1

    move-object v2, p0

    move-wide p0, p1

    goto :goto_2

    .line 1181
    :cond_8
    move-object v2, v5

    move-wide p0, v8

    .line 1185
    :goto_2
    const-wide p2, 0x3fa999999999999aL    # 0.05

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, p2

    double-to-long p0, p0

    .line 1187
    long-to-double p0, p0

    div-double/2addr p0, p2

    .line 1189
    cmpl-double p2, p0, v8

    if-nez p2, :cond_9

    .line 1190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1192
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sizeToString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .line 435
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    const v1, 0x7f0c00f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    const v2, 0x7f0c00f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    const v3, 0x7f0c00ef

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    const v4, 0x7f0c00f2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 441
    nop

    .line 442
    const-wide/16 v4, 0xa

    cmp-long v4, p1, v4

    const-string v5, " "

    if-gez v4, :cond_0

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 445
    :cond_0
    nop

    .line 446
    long-to-double p1, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v6

    .line 447
    cmpl-double v0, p1, v6

    if-lez v0, :cond_1

    .line 448
    div-double/2addr p1, v6

    .line 449
    move-object v1, v2

    .line 451
    :cond_1
    cmpl-double v0, p1, v6

    if-lez v0, :cond_2

    .line 452
    div-double/2addr p1, v6

    .line 453
    goto :goto_0

    .line 451
    :cond_2
    move-object v3, v1

    .line 455
    :goto_0
    cmpl-double v0, p1, v6

    if-lez v0, :cond_3

    .line 456
    div-double/2addr p1, v6

    .line 457
    goto :goto_1

    .line 455
    :cond_3
    move-object p0, v3

    .line 461
    :goto_1
    const-wide v0, 0x3fa999999999999aL    # 0.05

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 463
    long-to-double p1, p1

    div-double/2addr p1, v0

    .line 465
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_4

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.1f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
