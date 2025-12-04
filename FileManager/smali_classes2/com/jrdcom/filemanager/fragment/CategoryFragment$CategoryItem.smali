.class public Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;
.super Ljava/lang/Object;
.source "CategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/CategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryItem"
.end annotation


# instance fields
.field private count:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field public isSafeBox:Z

.field private itemColorId:I

.field private mainDrawable:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/CategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const-string p1, ""

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->count:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 311
    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->name:Ljava/lang/String;

    .line 313
    iput-object p4, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->mainDrawable:Landroid/graphics/drawable/Drawable;

    .line 315
    iput p5, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->itemColorId:I

    .line 316
    iput-boolean p6, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->isSafeBox:Z

    .line 317
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMainDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->mainDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public updateCount(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->count:Ljava/lang/String;

    .line 340
    return-void
.end method
