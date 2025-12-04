.class public final enum Lcom/mediatek/galleryframework/base/MediaData$MediaType;
.super Ljava/lang/Enum;
.source "MediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/galleryframework/base/MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/galleryframework/base/MediaData$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum CONTAINER:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum DRM:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum GIF:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum INVALID:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum LIVEPHOTO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum MAV:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum NORMAL:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum PANORAMA:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum REFOCUS:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

.field public static final enum VIDEO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 24
    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->NORMAL:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "PANORAMA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->PANORAMA:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "CONTAINER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->CONTAINER:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "MAV"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->MAV:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "LIVEPHOTO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->LIVEPHOTO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "VIDEO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->VIDEO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "GIF"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->GIF:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "DRM"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->DRM:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    const-string v1, "REFOCUS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/mediatek/galleryframework/base/MediaData$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->REFOCUS:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    .line 23
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    sget-object v12, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v12, v1, v2

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->NORMAL:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->PANORAMA:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->CONTAINER:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->MAV:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->LIVEPHOTO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->VIDEO:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->GIF:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->DRM:Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->$VALUES:[Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/galleryframework/base/MediaData$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/galleryframework/base/MediaData$MediaType;
    .locals 1

    .line 23
    sget-object v0, Lcom/mediatek/galleryframework/base/MediaData$MediaType;->$VALUES:[Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    invoke-virtual {v0}, [Lcom/mediatek/galleryframework/base/MediaData$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/galleryframework/base/MediaData$MediaType;

    return-object v0
.end method
