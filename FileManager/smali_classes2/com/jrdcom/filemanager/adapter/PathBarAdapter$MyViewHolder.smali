.class public Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PathBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/adapter/PathBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field file_name:Landroid/widget/TextView;

.field path_icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->this$0:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    .line 94
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    const p1, 0x7f0800b5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    .line 96
    const p1, 0x7f0800b4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->path_icon:Landroid/widget/ImageView;

    .line 97
    return-void
.end method
