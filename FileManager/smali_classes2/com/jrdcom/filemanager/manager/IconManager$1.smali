.class Lcom/jrdcom/filemanager/manager/IconManager$1;
.super Landroid/support/v4/util/LruCache;
.source "IconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/manager/IconManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/manager/IconManager;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/manager/IconManager;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/IconManager$1;->this$0:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/IconManager$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I
    .locals 0

    .line 45
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    mul-int/2addr p1, p2

    .line 46
    return p1
.end method
