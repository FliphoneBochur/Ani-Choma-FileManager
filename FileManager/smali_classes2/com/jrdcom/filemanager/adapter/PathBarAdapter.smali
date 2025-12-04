.class public Lcom/jrdcom/filemanager/adapter/PathBarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PathBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;,
        Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;

.field private mmContext:Landroid/content/Context;

.field private paths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mmContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->paths:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;)Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->paths:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyDataSetChanged()V

    .line 81
    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    const-string v0, "PathBarAdapter"

    const-string v1, "Exception occured when scrollToPosition():"

    invoke-static {v0, v1, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$1;-><init>(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->paths:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    if-nez p2, :cond_1

    .line 64
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->path_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->paths:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    .line 68
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->path_icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->path_icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;->file_name:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;
    .locals 3

    .line 42
    new-instance p2, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter$MyViewHolder;-><init>(Lcom/jrdcom/filemanager/adapter/PathBarAdapter;Landroid/view/View;)V

    .line 43
    return-object p2
.end method

.method public setList([Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->paths:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;

    .line 27
    return-void
.end method
