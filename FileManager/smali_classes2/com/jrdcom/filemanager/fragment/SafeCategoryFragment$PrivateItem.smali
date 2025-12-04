.class public Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;
.super Ljava/lang/Object;
.source "SafeCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateItem"
.end annotation


# instance fields
.field private count:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->this$0:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const-string p1, ""

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->count:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 287
    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->name:Ljava/lang/String;

    .line 288
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public updateCount(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->count:Ljava/lang/String;

    .line 305
    return-void
.end method
