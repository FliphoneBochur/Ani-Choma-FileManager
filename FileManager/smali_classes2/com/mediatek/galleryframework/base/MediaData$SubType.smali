.class public final enum Lcom/mediatek/galleryframework/base/MediaData$SubType;
.super Ljava/lang/Enum;
.source "MediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/galleryframework/base/MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/galleryframework/base/MediaData$SubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/galleryframework/base/MediaData$SubType;

.field public static final enum CONSHOT:Lcom/mediatek/galleryframework/base/MediaData$SubType;

.field public static final enum INVALID:Lcom/mediatek/galleryframework/base/MediaData$SubType;

.field public static final enum MOTRACK:Lcom/mediatek/galleryframework/base/MediaData$SubType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/galleryframework/base/MediaData$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;

    const-string v1, "MOTRACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/galleryframework/base/MediaData$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;->MOTRACK:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    new-instance v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;

    const-string v1, "CONSHOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/galleryframework/base/MediaData$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;->CONSHOT:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    .line 27
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mediatek/galleryframework/base/MediaData$SubType;

    sget-object v5, Lcom/mediatek/galleryframework/base/MediaData$SubType;->INVALID:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mediatek/galleryframework/base/MediaData$SubType;->MOTRACK:Lcom/mediatek/galleryframework/base/MediaData$SubType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mediatek/galleryframework/base/MediaData$SubType;->$VALUES:[Lcom/mediatek/galleryframework/base/MediaData$SubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/galleryframework/base/MediaData$SubType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/galleryframework/base/MediaData$SubType;
    .locals 1

    .line 27
    sget-object v0, Lcom/mediatek/galleryframework/base/MediaData$SubType;->$VALUES:[Lcom/mediatek/galleryframework/base/MediaData$SubType;

    invoke-virtual {v0}, [Lcom/mediatek/galleryframework/base/MediaData$SubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/galleryframework/base/MediaData$SubType;

    return-object v0
.end method
