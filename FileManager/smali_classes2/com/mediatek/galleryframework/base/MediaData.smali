.class public Lcom/mediatek/galleryframework/base/MediaData;
.super Ljava/lang/Object;
.source "MediaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/galleryframework/base/MediaData$SubType;,
        Lcom/mediatek/galleryframework/base/MediaData$MediaType;
    }
.end annotation


# static fields
.field public static final BEST_SHOT_MARK_FALSE:I = 0x1

.field public static final BEST_SHOT_MARK_TRUE:I = 0x2

.field public static final BEST_SHOT_NOT_MARK:I = 0x0

.field private static final IMAGE_INDEX_BUCKET_ID:I = 0xa

.field private static final IMAGE_INDEX_CAPTION:I = 0x1

.field private static final IMAGE_INDEX_DATA:I = 0x8

.field private static final IMAGE_INDEX_DATE_ADDED:I = 0x6

.field private static final IMAGE_INDEX_DATE_MODIFIED:I = 0x7

.field private static final IMAGE_INDEX_DATE_TAKEN:I = 0x5

.field private static final IMAGE_INDEX_DRM_METHOD:I = 0xf

.field private static final IMAGE_INDEX_GROUP_COUNT:I = 0x13

.field private static final IMAGE_INDEX_GROUP_ID:I = 0x10

.field private static final IMAGE_INDEX_GROUP_INDEX:I = 0x11

.field private static final IMAGE_INDEX_HEIGHT:I = 0xd

.field private static final IMAGE_INDEX_ID:I = 0x0

.field private static final IMAGE_INDEX_IS_BEST_SHOT:I = 0x12

.field private static final IMAGE_INDEX_IS_DRM:I = 0xe

.field private static final IMAGE_INDEX_LATITUDE:I = 0x3

.field private static final IMAGE_INDEX_LONGITUDE:I = 0x4

.field private static final IMAGE_INDEX_MIME_TYPE:I = 0x2

.field private static final IMAGE_INDEX_ORIENTATION:I = 0x9

.field private static final IMAGE_INDEX_REFOCUS:I = 0x14

.field private static final IMAGE_INDEX_SIZE:I = 0xb

.field private static final IMAGE_INDEX_WIDTH:I = 0xc

.field private static IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MtkGallery2/MediaData"


# instance fields
.field public bestShotMark:I

.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateModifiedInSec:J

.field public drmMethod:I

.field public duration:I

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public groupCount:I

.field public groupID:J

.field public groupIndex:I

.field public height:I

.field public id:J

.field public isDRM:I

.field public isLivePhoto:Z

.field public isRefocus:Z

.field public isSlowMotion:Z

.field public isVideo:Z

.field public mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public mimeType:Ljava/lang/String;

.field public orientation:I

.field public relateData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/galleryframework/base/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field public subType:Lcom/mediatek/galleryframework/base/MediaData$SubType;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 54
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "mime_type"

    const-string v3, "latitude"

    const-string v4, "longitude"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    const-string v11, "_size"

    const-string v12, "width"

    const-string v13, "height"

    const-string v14, "is_drm"

    const-string v15, "drm_method"

    const-string v16, "group_id"

    const-string v17, "group_index"

    const-string v18, "is_best_shot"

    const-string v19, "group_count"

    const-string v20, "camera_refocus"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    iput-object v0, p0, Lcom/mediatek/galleryframework/base/MediaData;->mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    .line 79
    sget-object v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    iput-object v0, p0, Lcom/mediatek/galleryframework/base/MediaData;->subType:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    .line 92
    iput-object v0, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    .line 95
    iput-boolean v1, p0, Lcom/mediatek/galleryframework/base/MediaData;->isLivePhoto:Z

    .line 96
    iput-boolean v1, p0, Lcom/mediatek/galleryframework/base/MediaData;->isSlowMotion:Z

    return-void
.end method

.method public static parseImage(Landroid/database/Cursor;)Lcom/mediatek/galleryframework/base/MediaData;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 257
    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData;

    invoke-direct {v0}, Lcom/mediatek/galleryframework/base/MediaData;-><init>()V

    .line 258
    .local v0, "data":Lcom/mediatek/galleryframework/base/MediaData;
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/galleryframework/base/MediaData;->width:I

    .line 259
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/galleryframework/base/MediaData;->height:I

    .line 260
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/galleryframework/base/MediaData;->orientation:I

    .line 261
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    .line 262
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    .line 263
    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->isDRM:I

    .line 264
    const/16 v2, 0xf

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    .line 265
    const/16 v2, 0x10

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->groupID:J

    .line 266
    const/16 v2, 0x13

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->groupCount:I

    .line 267
    const/16 v2, 0x11

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->groupIndex:I

    .line 268
    const/16 v2, 0x12

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    .line 269
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    .line 270
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/galleryframework/base/MediaData;->bucketId:I

    .line 271
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/mediatek/galleryframework/base/MediaData;->id:J

    .line 272
    const/16 v3, 0xb

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/mediatek/galleryframework/base/MediaData;->fileSize:J

    .line 273
    const/16 v3, 0x14

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/mediatek/galleryframework/base/MediaData;->isRefocus:Z

    .line 274
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/galleryframework/base/MediaData;->dateModifiedInSec:J

    .line 275
    return-object v0
.end method

.method public static parseImageMediaDatas(Landroid/database/Cursor;Z)Ljava/util/ArrayList;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "closeCursor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/galleryframework/base/MediaData;",
            ">;"
        }
    .end annotation

    .line 243
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/galleryframework/base/MediaData;>;"
    :cond_1
    invoke-static {p0}, Lcom/mediatek/galleryframework/base/MediaData;->parseImage(Landroid/database/Cursor;)Lcom/mediatek/galleryframework/base/MediaData;

    move-result-object v1

    .line 248
    .local v1, "data":Lcom/mediatek/galleryframework/base/MediaData;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v1    # "data":Lcom/mediatek/galleryframework/base/MediaData;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    if-eqz p1, :cond_2

    .line 251
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_2
    return-object v0

    .line 244
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/galleryframework/base/MediaData;>;"
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryImage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereClauseArgs"    # [Ljava/lang/String;
    .param p4, "orderClause"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    return-object v0

    .line 238
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static queryImageMediaData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereClauseArgs"    # [Ljava/lang/String;
    .param p4, "orderClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/galleryframework/base/MediaData;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/galleryframework/base/MediaData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/mediatek/galleryframework/base/MediaData;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 215
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<queryImageMediaData> query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGallery2/MediaData"

    invoke-static {v3, v2}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v0

    .line 220
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {v1}, Lcom/mediatek/galleryframework/base/MediaData;->parseImage(Landroid/database/Cursor;)Lcom/mediatek/galleryframework/base/MediaData;

    move-result-object v2

    .line 222
    .local v2, "data":Lcom/mediatek/galleryframework/base/MediaData;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    nop

    .end local v2    # "data":Lcom/mediatek/galleryframework/base/MediaData;
    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    nop

    .line 227
    return-object v0

    .line 225
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public equals(Lcom/mediatek/galleryframework/base/MediaData;)Z
    .locals 6
    .param p1, "data"    # Lcom/mediatek/galleryframework/base/MediaData;

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 134
    return v0

    .line 136
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 137
    return v1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->subType:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->subType:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->width:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->width:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->height:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->height:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->orientation:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->orientation:I

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-nez v2, :cond_12

    :cond_2
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-eqz v2, :cond_12

    :cond_3
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_4
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_12

    :cond_5
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_12

    :cond_6
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_7
    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isDRM:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->isDRM:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    if-ne v2, v3, :cond_12

    iget-wide v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupID:J

    iget-wide v4, p1, Lcom/mediatek/galleryframework/base/MediaData;->groupID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupIndex:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->groupIndex:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupCount:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->groupCount:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-nez v2, :cond_12

    :cond_8
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_12

    :cond_9
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_a
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-nez v2, :cond_12

    :cond_b
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    :cond_c
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_d
    iget-boolean v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    iget-boolean v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    if-ne v2, v3, :cond_12

    iget-boolean v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isLivePhoto:Z

    iget-boolean v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->isLivePhoto:Z

    if-ne v2, v3, :cond_12

    iget-boolean v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isSlowMotion:Z

    iget-boolean v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->isSlowMotion:Z

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->bucketId:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->bucketId:I

    if-ne v2, v3, :cond_12

    iget-wide v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->id:J

    iget-wide v4, p1, Lcom/mediatek/galleryframework/base/MediaData;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iget-wide v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->fileSize:J

    iget-wide v4, p1, Lcom/mediatek/galleryframework/base/MediaData;->fileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->duration:I

    iget v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->duration:I

    if-ne v2, v3, :cond_12

    iget-boolean v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isRefocus:Z

    iget-boolean v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->isRefocus:Z

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-nez v2, :cond_12

    :cond_e
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    :cond_f
    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_12

    :cond_10
    iget-wide v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->dateModifiedInSec:J

    iget-wide v4, p1, Lcom/mediatek/galleryframework/base/MediaData;->dateModifiedInSec:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    goto :goto_0

    .line 176
    :cond_11
    return v1

    .line 175
    :cond_12
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 180
    const/16 v0, 0x11

    .line 181
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 182
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->subType:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/galleryframework/base/MediaData$SubType;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 183
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->width:I

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->height:I

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->orientation:I

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->caption:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 187
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    .line 188
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isDRM:I

    add-int/2addr v0, v2

    .line 189
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    add-int/2addr v1, v2

    .line 190
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupID:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 191
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupIndex:I

    add-int/2addr v1, v4

    .line 192
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupCount:I

    add-int/2addr v0, v4

    .line 193
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    add-int/2addr v1, v4

    .line 194
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    .line 195
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v1, v4

    .line 196
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 197
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->isLivePhoto:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    .line 198
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->isSlowMotion:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 199
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->bucketId:I

    add-int/2addr v1, v4

    .line 200
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->id:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 201
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->fileSize:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 202
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->duration:I

    add-int/2addr v0, v4

    .line 203
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->isRefocus:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    .line 204
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v4, p0, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    .line 205
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->dateModifiedInSec:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 206
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mediaType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->mediaType:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->orientation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDRM = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->isDRM:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drmMethod = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupID:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->groupCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bestShotMark = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->bestShotMark:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLivePhoto = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->isLivePhoto:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSlowMotion = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->isSlowMotion:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucketId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->bucketId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->fileSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->duration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relateData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->relateData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dateModifiedInSec = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/galleryframework/base/MediaData;->dateModifiedInSec:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRefocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/galleryframework/base/MediaData;->isRefocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
