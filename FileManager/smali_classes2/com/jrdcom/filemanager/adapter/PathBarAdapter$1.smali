.class Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;
.super Ljava/lang/Object;
.source "PathBarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;->this$0:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    invoke-static {p1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;)Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;->onItemClick(I)V

    .line 58
    return-void
.end method
