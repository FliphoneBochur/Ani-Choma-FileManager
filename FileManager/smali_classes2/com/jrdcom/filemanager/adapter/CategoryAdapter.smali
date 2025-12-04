.class public Lcom/jrdcom/filemanager/adapter/CategoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;,
        Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;

.field private mmContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mmContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;)Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;I)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$1;-><init>(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;

    .line 74
    iget-object v1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->getMainDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->getCount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mmContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    .line 81
    :cond_2
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;->getCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_3
    sget-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 84
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    sget-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;
    .locals 3

    .line 52
    new-instance p2, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/adapter/CategoryAdapter$MyViewHolder;-><init>(Lcom/jrdcom/filemanager/adapter/CategoryAdapter;Landroid/view/View;)V

    .line 53
    return-object p2
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/CategoryAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;

    .line 38
    return-void
.end method
