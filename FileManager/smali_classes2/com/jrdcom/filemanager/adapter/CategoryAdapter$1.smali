.class Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/CategoryAdapter;

.field final synthetic val$holder:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/CategoryAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->getLayoutPosition()I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/CategoryAdapter;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;)Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;->val$holder:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 70
    return-void
.end method
