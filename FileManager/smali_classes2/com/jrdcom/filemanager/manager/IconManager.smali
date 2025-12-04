.class public final Lcom/jrdcom/filemanager/manager/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;
    }
.end annotation


# static fields
.field public static GRID_ITEM:I = 0x0

.field public static LIST_ITEM:I = 0x0

.field public static final TAG:Ljava/lang/String; = "IconManager"

.field private static sInstance:Lcom/jrdcom/filemanager/manager/IconManager;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field protected mIconsHead:Landroid/graphics/Bitmap;

.field private mLrucache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private final maxMemory:I

.field private rightCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/IconManager;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/IconManager;->sInstance:Lcom/jrdcom/filemanager/manager/IconManager;

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/IconManager;->LIST_ITEM:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/jrdcom/filemanager/manager/IconManager;->maxMemory:I

    .line 42
    new-instance v2, Lcom/jrdcom/filemanager/manager/IconManager$1;

    div-int/2addr v1, v0

    invoke-direct {v2, p0, v1}, Lcom/jrdcom/filemanager/manager/IconManager$1;-><init>(Lcom/jrdcom/filemanager/manager/IconManager;I)V

    iput-object v2, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mLrucache:Landroid/support/v4/util/LruCache;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->rightCaches:Ljava/util/Map;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/manager/IconManager;)Landroid/support/v4/util/LruCache;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mLrucache:Landroid/support/v4/util/LruCache;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/manager/IconManager;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->rightCaches:Ljava/util/Map;

    return-object p0
.end method

.method public static getDrawableId(Ljava/lang/String;I)I
    .locals 1

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f0700c1

    if-eqz p1, :cond_0

    .line 82
    return v0

    .line 83
    :cond_0
    const-string p1, "audio/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "application/ogg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_5

    .line 85
    :cond_1
    const-string p1, "image/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    const p0, 0x7f0700c7

    return p0

    .line 87
    :cond_2
    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 88
    const-string p1, "application/sdp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    .line 90
    :cond_3
    const-string p1, "text/html"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 91
    const-string p1, "text/htm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 92
    const-string p1, "application/vnd.wap.xhtml+xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    .line 94
    :cond_4
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 95
    return v0

    .line 96
    :cond_5
    const-string p1, "application/zip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 97
    const-string p1, "application/x-rar-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 98
    const-string p1, "application/x-tar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 99
    const-string p1, "application/x-7z-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 101
    :cond_6
    const-string p1, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 102
    const-string p1, "application/mspowerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 103
    const-string p1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 104
    const-string p1, "application/vnd.ms-excel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 105
    const-string p1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 107
    :cond_7
    const-string p1, "text/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 108
    const-string p1, "application/msword"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 109
    const-string p1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 110
    const-string p1, "application/pdf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    .line 113
    :cond_8
    return v0

    .line 111
    :cond_9
    :goto_0
    const p0, 0x7f0700a9

    return p0

    .line 106
    :cond_a
    :goto_1
    return v0

    .line 100
    :cond_b
    :goto_2
    return v0

    .line 93
    :cond_c
    :goto_3
    const p0, 0x7f0700ec

    return p0

    .line 89
    :cond_d
    :goto_4
    const p0, 0x7f0700e8

    return p0

    .line 84
    :cond_e
    :goto_5
    const p0, 0x7f07008d

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;IZ)I
    .locals 2

    .line 119
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    if-ne p1, v0, :cond_0

    .line 120
    invoke-static {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/IconManager;->getElderDrawableId(Ljava/lang/String;IZ)I

    move-result p0

    return p0

    .line 123
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f0700c3

    const v1, 0x7f0700c1

    if-eqz p1, :cond_2

    .line 124
    if-eqz p2, :cond_1

    .line 125
    return v0

    .line 127
    :cond_1
    return v1

    .line 128
    :cond_2
    const-string p1, "audio/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "application/ogg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_5

    .line 133
    :cond_3
    const-string p1, "image/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    if-eqz p2, :cond_4

    .line 135
    const p0, 0x7f0700c9

    return p0

    .line 137
    :cond_4
    const p0, 0x7f0700c7

    return p0

    .line 138
    :cond_5
    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 139
    const-string p1, "application/sdp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_4

    .line 144
    :cond_6
    const-string p1, "text/html"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 145
    const-string p1, "text/htm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 146
    const-string p1, "application/vnd.wap.xhtml+xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 151
    :cond_7
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 152
    if-eqz p2, :cond_8

    .line 153
    return v0

    .line 155
    :cond_8
    return v1

    .line 156
    :cond_9
    const-string p1, "application/zip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 157
    const-string p1, "application/x-rar-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 158
    const-string p1, "application/x-tar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 159
    const-string p1, "application/x-7z-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 164
    :cond_a
    const-string p1, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 165
    const-string p1, "application/mspowerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 166
    const-string p1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 167
    const-string p1, "application/vnd.ms-excel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 168
    const-string p1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    .line 173
    :cond_b
    const-string p1, "text/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 174
    const-string p1, "application/msword"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 175
    const-string p1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 176
    const-string p1, "application/pdf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    .line 182
    :cond_c
    if-eqz p2, :cond_d

    .line 183
    return v0

    .line 185
    :cond_d
    return v1

    .line 177
    :cond_e
    :goto_0
    if-eqz p2, :cond_f

    .line 178
    const p0, 0x7f0700ab

    return p0

    .line 180
    :cond_f
    const p0, 0x7f0700a9

    return p0

    .line 169
    :cond_10
    :goto_1
    if-eqz p2, :cond_11

    .line 170
    return v0

    .line 172
    :cond_11
    return v1

    .line 160
    :cond_12
    :goto_2
    if-eqz p2, :cond_13

    .line 161
    return v0

    .line 163
    :cond_13
    return v1

    .line 147
    :cond_14
    :goto_3
    if-eqz p2, :cond_15

    .line 148
    const p0, 0x7f0700ee

    return p0

    .line 150
    :cond_15
    const p0, 0x7f0700ec

    return p0

    .line 140
    :cond_16
    :goto_4
    if-eqz p2, :cond_17

    .line 141
    const p0, 0x7f0700ea

    return p0

    .line 143
    :cond_17
    const p0, 0x7f0700e8

    return p0

    .line 129
    :cond_18
    :goto_5
    if-eqz p2, :cond_19

    .line 130
    const p0, 0x7f07008f

    return p0

    .line 132
    :cond_19
    const p0, 0x7f07008d

    return p0
.end method

.method public static getElderDrawableId(Ljava/lang/String;IZ)I
    .locals 2

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f0700c4

    const v1, 0x7f0700c2

    if-eqz p1, :cond_1

    .line 192
    if-eqz p2, :cond_0

    .line 193
    return v0

    .line 195
    :cond_0
    return v1

    .line 196
    :cond_1
    const-string p1, "audio/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "application/ogg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    .line 201
    :cond_2
    const-string p1, "image/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    if-eqz p2, :cond_3

    .line 203
    const p0, 0x7f0700ca

    return p0

    .line 205
    :cond_3
    const p0, 0x7f0700c8

    return p0

    .line 206
    :cond_4
    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 207
    const-string p1, "application/sdp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_4

    .line 212
    :cond_5
    const-string p1, "text/html"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 213
    const-string p1, "text/htm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 214
    const-string p1, "application/vnd.wap.xhtml+xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_3

    .line 219
    :cond_6
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 220
    if-eqz p2, :cond_7

    .line 221
    return v0

    .line 223
    :cond_7
    return v1

    .line 224
    :cond_8
    const-string p1, "application/zip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 225
    const-string p1, "application/x-rar-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 226
    const-string p1, "application/x-tar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 227
    const-string p1, "application/x-7z-compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 232
    :cond_9
    const-string p1, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 233
    const-string p1, "application/mspowerpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 234
    const-string p1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 235
    const-string p1, "application/vnd.ms-excel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 236
    const-string p1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    .line 241
    :cond_a
    const-string p1, "text/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 242
    const-string p1, "application/msword"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 243
    const-string p1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 244
    const-string p1, "application/pdf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_0

    .line 250
    :cond_b
    if-eqz p2, :cond_c

    .line 251
    return v0

    .line 253
    :cond_c
    return v1

    .line 245
    :cond_d
    :goto_0
    if-eqz p2, :cond_e

    .line 246
    const p0, 0x7f0700ac

    return p0

    .line 248
    :cond_e
    const p0, 0x7f0700aa

    return p0

    .line 237
    :cond_f
    :goto_1
    if-eqz p2, :cond_10

    .line 238
    return v0

    .line 240
    :cond_10
    return v1

    .line 228
    :cond_11
    :goto_2
    if-eqz p2, :cond_12

    .line 229
    return v0

    .line 231
    :cond_12
    return v1

    .line 215
    :cond_13
    :goto_3
    if-eqz p2, :cond_14

    .line 216
    const p0, 0x7f0700ef

    return p0

    .line 218
    :cond_14
    const p0, 0x7f0700ed

    return p0

    .line 208
    :cond_15
    :goto_4
    if-eqz p2, :cond_16

    .line 209
    const p0, 0x7f0700eb

    return p0

    .line 211
    :cond_16
    const p0, 0x7f0700e9

    return p0

    .line 197
    :cond_17
    :goto_5
    if-eqz p2, :cond_18

    .line 198
    const p0, 0x7f070090

    return p0

    .line 200
    :cond_18
    const p0, 0x7f07008e

    return p0
.end method

.method private getFolderIcon(Lcom/jrdcom/filemanager/utils/FileInfo;I)I
    .locals 1

    .line 291
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    if-ne p2, v0, :cond_0

    .line 292
    const p1, 0x7f0700ae

    return p1

    .line 295
    :cond_0
    const p2, 0x7f0700ad

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFolderCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 296
    return p2

    .line 299
    :cond_1
    return p2
.end method

.method private getFolderIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I
    .locals 0

    .line 303
    if-eqz p3, :cond_1

    .line 305
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    if-ne p2, p1, :cond_0

    .line 306
    const p1, 0x7f0700b0

    return p1

    .line 309
    :cond_0
    const p1, 0x7f0700af

    return p1

    .line 312
    :cond_1
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    if-ne p2, p1, :cond_2

    .line 313
    const p1, 0x7f0700ae

    return p1

    .line 316
    :cond_2
    const p1, 0x7f0700ad

    return p1
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/manager/IconManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/jrdcom/filemanager/manager/IconManager;->sInstance:Lcom/jrdcom/filemanager/manager/IconManager;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->rightCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mLrucache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 56
    return-void
.end method

.method public getDefaultIcon(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/IconManager;->readBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getExternalIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 338
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/manager/IconManager;->getDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 339
    return-object p1
.end method

.method public getIcon(Lcom/jrdcom/filemanager/utils/FileInfo;I)I
    .locals 1

    .line 268
    nop

    .line 269
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/IconManager;->getFolderIcon(Lcom/jrdcom/filemanager/utils/FileInfo;I)I

    move-result p1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/manager/IconManager;->getDrawableId(Ljava/lang/String;I)I

    move-result p1

    .line 275
    :goto_0
    return p1
.end method

.method public getIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I
    .locals 1

    .line 279
    nop

    .line 280
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/manager/IconManager;->getFolderIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I

    move-result p1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1, p2, p3}, Lcom/jrdcom/filemanager/manager/IconManager;->getDrawableId(Ljava/lang/String;IZ)I

    move-result p1

    .line 286
    :goto_0
    return p1
.end method

.method public getImageCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mLrucache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mRes:Landroid/content/res/Resources;

    .line 328
    return-void
.end method

.method public isMusicType(Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 2

    .line 415
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 416
    return v1

    .line 418
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p1

    .line 419
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    return v1

    .line 420
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public loadImage(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 366
    nop

    .line 367
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 368
    iget-object v6, p0, Lcom/jrdcom/filemanager/manager/IconManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/jrdcom/filemanager/manager/IconManager$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/manager/IconManager$2;-><init>(Lcom/jrdcom/filemanager/manager/IconManager;Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 410
    const/4 p1, 0x0

    return-object p1
.end method

.method public readBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 353
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 354
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 356
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 357
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 358
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->mLrucache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/IconManager;->rightCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
