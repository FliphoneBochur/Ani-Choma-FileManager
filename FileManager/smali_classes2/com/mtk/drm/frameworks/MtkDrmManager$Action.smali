.class public Lcom/mtk/drm/frameworks/MtkDrmManager$Action;
.super Ljava/lang/Object;
.source "MtkDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mtk/drm/frameworks/MtkDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISPLAY:I = 0x7

.field public static final EXECUTE:I = 0x6

.field public static final OUTPUT:I = 0x4

.field public static final PLAY:I = 0x1

.field public static final PREVIEW:I = 0x5

.field public static final PRINT:I = 0x8

.field public static final RINGTONE:I = 0x2

.field public static final TRANSFER:I = 0x3

.field public static final WALLPAPER:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValid(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
