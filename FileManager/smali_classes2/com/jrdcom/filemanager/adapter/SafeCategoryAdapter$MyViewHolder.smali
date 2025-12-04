.class public Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;
.super Ljava/lang/Object;
.source "SafeCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field countView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->this$0:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
