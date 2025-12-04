.class public Lcom/jrdcom/filemanager/utils/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/jrdcom/filemanager/utils/ViewUtil$1;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/utils/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/utils/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    .line 92
    sget-object v0, Lcom/jrdcom/filemanager/utils/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 93
    nop

    .line 94
    const v0, 0x7f0600fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 95
    return-void
.end method
