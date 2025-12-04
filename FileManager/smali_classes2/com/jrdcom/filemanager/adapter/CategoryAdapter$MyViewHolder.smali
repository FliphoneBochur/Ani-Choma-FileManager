.class public Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field countView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field itemLayout:Landroid/widget/LinearLayout;

.field mainLayout:Landroid/widget/LinearLayout;

.field nameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/CategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->this$0:Lcom/jrdcom/filemanager/adapter/CategoryAdapter;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    nop

    .line 99
    const p1, 0x7f08002c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->iconView:Landroid/widget/ImageView;

    .line 100
    nop

    .line 101
    const p1, 0x7f08002d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->nameView:Landroid/widget/TextView;

    .line 102
    nop

    .line 103
    const p1, 0x7f08002b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    .line 104
    nop

    .line 105
    const p1, 0x7f0800d8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->mainLayout:Landroid/widget/LinearLayout;

    .line 106
    nop

    .line 107
    const p1, 0x7f0800d9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 108
    return-void
.end method
